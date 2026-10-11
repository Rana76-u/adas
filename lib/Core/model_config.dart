import 'yolo_model.dart';

/// Configuration for a TFLite model with its associated label set and delegate.
class ModelConfig {
  final String name;
  final String modelPath;
  final List<String> labels;
  final String delegate;

  const ModelConfig({
    required this.name,
    required this.modelPath,
    required this.labels,
    this.delegate = 'gpu',
  });
}

/// List of available models for selection.
/// Add new models here as they become available in assets/models/.
final List<ModelConfig> availableModels = [
    ModelConfig(
      name: 'YOLOv5n',
      modelPath: 'assets/models/best_5n.tflite',
      labels: customLabels,
      delegate: 'gpu',
    ),
    ModelConfig(
      name: 'YOLOv8n',
      modelPath: 'assets/models/best_8n.tflite',
      labels: customLabels,
      delegate: 'gpu',
    ),
    ModelConfig(
      name: 'YOLOv9t',
      modelPath: 'assets/models/best_9t.tflite',
      labels: customLabels,
      delegate: 'gpu',
    ),
    ModelConfig(
      name: 'YOLOv10n',
      modelPath: 'assets/models/best_10n.tflite',
      labels: customLabels,
      delegate: 'gpu',
    ),
    ModelConfig(
      name: 'YOLOv11n',
      modelPath: 'assets/models/best_11n.tflite',
      labels: customLabels,
      delegate: 'gpu',
    ),
    ModelConfig(
      name: 'YOLOv12n',
      modelPath: 'assets/models/best_12n.tflite',
      labels: customLabels,
      delegate: 'gpu',
    ),
    ModelConfig(
      name: 'YOLOv26n',
      modelPath: 'assets/models/best_26n.tflite',
      labels: customLabels,
      delegate: 'gpu',
    ),

    
  // Additional models can be added here when available:
  // ModelConfig(
  //   name: 'YOLO11n INT8',
  //   modelPath: 'assets/models/yolo11n_int8.tflite',
  //   labels: customLabels,
  //   delegate: 'nnapi',
  // ),
  // ModelConfig(
  //   name: 'COCO YOLO',
  //   modelPath: 'assets/models/coco_model.tflite',
  //   labels: cocoLabels,
  //   delegate: 'gpu',
  // ),
];
