import 'package:bhumisana/core/error/failure_response.dart';
import 'package:equatable/equatable.dart';

enum ViewState { initial, loading, error, hasData, noData }

extension ViewStateExtension on ViewState {
  bool get isLoading => this == ViewState.loading;

  bool get isInitial => this == ViewState.initial;

  bool get isError => this == ViewState.error;

  bool get isHasData => this == ViewState.hasData;

  bool get isNoData => this == ViewState.noData;
}

class ViewData<T> extends Equatable {
  final ViewState status;
  final T? data;
  final String message;
  final FailureResponse? failure;

  const ViewData._({
    required this.status,
    this.data,
    this.message = '',
    this.failure,
  });

  factory ViewData.loaded({T? data}) {
    return ViewData._(status: ViewState.hasData, data: data);
  }

  factory ViewData.loading({String? message}) {
    return ViewData._(status: ViewState.loading, message: message ?? '');
  }

  factory ViewData.lazyLoading({T? data}) {
    return ViewData._(status: ViewState.loading, data: data);
  }

  factory ViewData.error({
    required String message,
    required FailureResponse? failure,
    T? currentData,
  }) {
    return ViewData._(
      status: ViewState.error,
      message: message,
      failure: failure,
      data: currentData,
    );
  }

  factory ViewData.initial() => const ViewData._(status: ViewState.initial);

  factory ViewData.noData({required String message}) {
    return ViewData._(status: ViewState.noData, message: message);
  }

  @override
  List<Object?> get props => [
        status,
        data,
        message,
        failure,
      ];
}
