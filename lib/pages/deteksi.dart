import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final frontCamera = cameras.firstWhere(
    (camera) => camera.lensDirection == CameraLensDirection.front,
  );

  runApp(MyApp(camera: frontCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({super.key, required this.camera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deteksi Emosi',
      home: DetectionScreen(camera: camera),
    );
  }
}

class DetectionScreen extends StatefulWidget {
  final CameraDescription camera;

  const DetectionScreen({super.key, required this.camera});

  @override
  _DetectionScreenState createState() => _DetectionScreenState();
}

class _DetectionScreenState extends State<DetectionScreen> {
  CameraController? _cameraController;
  bool isDetecting = false;
  List<dynamic>? recognitions;
  final labelsDict = {0: 'Marah', 1: 'Jijik', 2: 'Takut', 3: 'Bahagia', 4: 'Netral', 5: 'Sedih', 6: 'Terkejut'};

  @override
  void initState() {
    super.initState();
    _initializeCamera();
    _loadModel();
  }

  Future<void> _initializeCamera() async {
    _cameraController = CameraController(widget.camera, ResolutionPreset.medium);
    await _cameraController?.initialize();
    if (!mounted) return;
    setState(() {});

    _cameraController?.startImageStream((CameraImage image) {
      if (!isDetecting) {
        isDetecting = true;
        _runModelOnFrame(image);
      }
    });
  }

  Future<void> _loadModel() async {
    var res = await Tflite.loadModel(
      model: "assets/model_file.tflite",
      labels: "assets/labels.txt", 
    );
    print('Model loaded: $res');
  }

  Future<void> _runModelOnFrame(CameraImage image) async {
    try {
      final bytesList = image.planes.map((plane) => plane.bytes).toList();
      final imageHeight = image.height;
      final imageWidth = image.width;

      recognitions = await Tflite.runModelOnFrame(
        bytesList: bytesList,
        imageHeight: imageHeight,
        imageWidth: imageWidth,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 1,
        threshold: 0.1,
        asynch: true,
      );

      print('Recognitions: $recognitions');
    } catch (e) {
      print('Error running model on frame: $e');
    }

    setState(() {
      isDetecting = false;
    });
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    Tflite.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      return Container();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Deteksi Emosi',
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: Color(0xFF0D0140),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.switch_camera),
            onPressed: _switchCamera,
          ),
        ],
      ),
      body: Stack(
        children: [
          CameraPreview(_cameraController!),
          if (recognitions != null && recognitions!.isNotEmpty)
            ...recognitions!.map((re) {
              return BoundingBox(
                x: re['rect']['x'],
                y: re['rect']['y'],
                w: re['rect']['w'],
                h: re['rect']['h'],
                label: labelsDict[re['index']],
                confidence: re['confidence'],
              );
            }).toList(),
          Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: Text(
                recognitions != null && recognitions!.isNotEmpty
                    ? "${labelsDict[recognitions!.first['index']]} ${(recognitions!.first['confidence'] * 100).toStringAsFixed(0)}%"
                    : "Tidak ada deteksi",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xFF0D0140),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _switchCamera() async {
    final cameras = await availableCameras();
    final newIndex = (cameras.indexOf(widget.camera) + 1) % cameras.length;
    final newCamera = cameras[newIndex];

    setState(() {
      _cameraController = CameraController(newCamera, ResolutionPreset.medium);
      _initializeCamera();
    });
  }
}

class BoundingBox extends StatelessWidget {
  final double x;
  final double y;
  final double w;
  final double h;
  final String? label;
  final double? confidence;

  const BoundingBox({
    required this.x,
    required this.y,
    required this.w,
    required this.h,
    this.label,
    this.confidence,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: x,
      top: y,
      width: w,
      height: h,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 2,
          ),
        ),
        child: Text(
          '$label ${confidence != null ? (confidence! * 100).toStringAsFixed(0) : ''}%',
          style: TextStyle(
            backgroundColor: Colors.red,
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
