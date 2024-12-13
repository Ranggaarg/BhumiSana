import 'package:bhumisana/core/error/failure_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sentry/sentry.dart';

extension FutureExtensions<T> on Future<T> {
  Future<Either<FailureResponse, T>> handleRequest({
    Future<Either<FailureResponse, T>> Function(T result)? customTry,
  }) async {
    try {
      final result = await this;
      if (customTry != null) {
        return await customTry(result);
      } else {
        return Right(result);
      }
    } on DioException catch (error) {
      Sentry.captureException(error);
      String errorMessage = '';

      try {
        errorMessage = error.response?.data != null
            ? getErrorMesage(error)
            : handleErrorDio(error);
      } catch (_) {
        errorMessage = handleErrorDio(error);
      }

      return Left(FailureResponse(
        errorMessage: errorMessage,
        statusCode: error.response?.statusCode,
      ));
    } catch (error) {
      Sentry.captureException(error);
      return Left(FailureResponse(errorMessage: error.toString()));
    }
  }

  String getErrorMesage(DioException error) {
    // try {
    if (error.response?.statusCode == 422) {
      // ignore: avoid_dynamic_calls
      final errors = error.response?.data['errors'] as List<dynamic>?;
      if (errors != null && errors.isNotEmpty) {
        // ignore: avoid_dynamic_calls
        return errors.first['msg'] as String? ?? 'Unknown error';
      }
    }
    Map<String, dynamic> errorPayload =
        error.response?.data as Map<String, dynamic>;
    final errorMessage = errorPayload['message'] ??
        errorPayload['Message'] ??
        'Something went wrong';
    return errorMessage;
    // } catch (e) {
    //   rethrow;
    // }
  }

  String handleErrorDio(DioException error) {
    String errorDescription = '';
    switch (error.type) {
      case DioExceptionType.sendTimeout:
        errorDescription =
            'Oops, pengiriman data terlalu lama. Coba lagi, yuk!';
        break;
      case DioExceptionType.cancel:
        errorDescription = 'Permintaan dibatalkan. Coba lagi nanti, ya!';
        break;
      case DioExceptionType.connectionTimeout:
        errorDescription =
            'Kayaknya jaringannya lagi bermasalah nih. Coba lagi sebentar!';
        break;
      case DioExceptionType.unknown:
        errorDescription = 'Ada masalah jaringan. Yuk, coba lagi sebentar!';
        break;
      case DioExceptionType.receiveTimeout:
        errorDescription = 'Hmm, nunggu responnya kelamaan nih. Coba lagi aja.';
        break;
      case DioExceptionType.badCertificate:
        errorDescription =
            'Ada yang salah dengan sertifikat server. Cek koneksimu, ya!';
        break;
      case DioExceptionType.connectionError:
        errorDescription =
            'Kayaknya ada masalah koneksi nih. Coba periksa internet kamu.';
        break;
      case DioExceptionType.badResponse:
        errorDescription = 'Wah, server lagi bermasalah nih. Coba lagi yuk!';
        break;
    }
    return errorDescription;
  }
}  