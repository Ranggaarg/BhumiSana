import 'dart:io';
import 'dart:math';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class WasteClassificationService {
  late Interpreter _interpreter;
  String _result = "";
  String _wasteType = "";

  Future<void> loadModel() async {
    try {
      _interpreter = await Interpreter.fromAsset('final_model.tflite');
    } catch (e) {
      _result = "Gagal memuat model: $e";
    }
  }

  Future<File?> pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    return pickedFile != null ? File(pickedFile.path) : null;
  }

  Future<void> classifyImage(File image) async {
    if (_interpreter == null) {
      _result = "Model belum dimuat.";
      return;
    }

    var input = List.generate(1, (index) => List.filled(224 * 224 * 3, 0.0)); 
    var output = List.filled(1, 0.0);

    _interpreter.run(input, output);

    _result = "Klasifikasi: $output";
    _wasteType = getRandomWasteType();
  }

  String getRandomWasteType() {
    List<String> wasteTypes = ['Kertas', 'Aluminium', 'Plastik', 'Daun', 'Kayu', 'Logam', 'Kain'];
    Random random = Random();
    int index = random.nextInt(wasteTypes.length);  
    return wasteTypes[index];
  }

  String get result => _result;
  String get wasteType => _wasteType;

  void dispose() {
    _interpreter.close();
  }
}