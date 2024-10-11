import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ImageToTextApp());
}

class ImageToTextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image to Text Translator',
      home: ImageToTextScreen(),
    );
  }
}

class ImageToTextScreen extends StatefulWidget {
  @override
  _ImageToTextScreenState createState() => _ImageToTextScreenState();
}

class _ImageToTextScreenState extends State<ImageToTextScreen> {
  String _extractedText = '';
  String _translatedText = '';
  final TextRecognizer _textRecognizer = GoogleMlKit.vision.textRecognizer();
  final TextEditingController _extractedController = TextEditingController();
  final TextEditingController _translatedController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _requestPermissions(); // Request camera permissions immediately
  }

  Future<void> _requestPermissions() async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      print("Camera permission already granted");
    } else if (status.isDenied) {
      var result = await Permission.camera.request();
      if (result.isGranted) {
        print("Camera permission granted");
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Camera permission is required to use this feature.')),
        );
      }
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    }
  }

  void _captureImage() async {
    final cameras = await availableCameras();
    final camera = cameras.first;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CameraPreviewScreen(camera: camera, onImageCaptured: _extractText),
      ),
    );
  }

  Future<void> _extractText(String imagePath) async {
    final inputImage = InputImage.fromFilePath(imagePath);

    try {
      final RecognizedText recognizedText = await _textRecognizer.processImage(inputImage);
      setState(() {
        _extractedText = recognizedText.text;
        _extractedController.text = _extractedText; // Update the controller
      });
    } catch (e) {
      print("Error recognizing text: $e");
    }
  }

  void _translateText() {
    setState(() {
      _translatedText = 'Translated: $_extractedText'; // Placeholder for actual translation logic
      _translatedController.text = _translatedText; // Update the controller
    });
  }

  @override
  void dispose() {
    _textRecognizer.close();
    _extractedController.dispose();
    _translatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image to Text Translator'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Column(
          children: [
            // Button to capture image
            Center(
              child: ElevatedButton(
                onPressed: _captureImage,
                child: Text('Capture Image'),
              ),
            ),
            SizedBox(height: 20), // Add spacing between button and text fields
            // Extracted Text Section
            Padding(
              padding: const EdgeInsets.all(16.0), // Add padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Extracted Text:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _extractedController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Extracted text will appear here...',
                    ),
                    readOnly: true,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _translateText,
                    child: Text('Translate Text'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Translated Text:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _translatedController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Translated text will appear here...',
                    ),
                    readOnly: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CameraPreviewScreen extends StatefulWidget {
  final CameraDescription camera;
  final Function(String) onImageCaptured;

  CameraPreviewScreen({required this.camera, required this.onImageCaptured});

  @override
  _CameraPreviewScreenState createState() => _CameraPreviewScreenState();
}

class _CameraPreviewScreenState extends State<CameraPreviewScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.high,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _takePicture() async {
    try {
      await _initializeControllerFuture;
      final image = await _controller.takePicture();
      widget.onImageCaptured(image.path);
      Navigator.pop(context); // Go back to the previous screen
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Preview'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: CameraPreview(_controller),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          ElevatedButton(
            onPressed: _takePicture,
            child: Text('Take Picture'),
          ),
        ],
      ),
    );
  }
}
