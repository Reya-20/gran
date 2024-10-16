import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Word {
  final String english;
  final String tagalog;
  final String pangasinense;
  final String ilocano;

  Word({
    required this.english,
    required this.tagalog,
    required this.pangasinense,
    required this.ilocano,
  });
}

class ImageToTextScreen extends StatefulWidget {
  @override
  _ImageToTextScreenState createState() => _ImageToTextScreenState();
}

class _ImageToTextScreenState extends State<ImageToTextScreen> {
  String _extractedText = '';
  String _translatedText = '';
  String _sourceLanguage = 'English'; // Default source language
  String _targetLanguage = 'Tagalog'; // Default target language
  final TextRecognizer _textRecognizer = TextRecognizer(); // Updated to new package
  final TextEditingController _extractedController = TextEditingController();
  final TextEditingController _translatedController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  File? _imageFile;

  // Language options
  final List<String> _languages = ['Tagalog', 'English', 'Pangasinan', 'Ilocano'];

  // Word dataset
  final List<Word> words = [
    Word(english: "you", tagalog: "ka", pangasinense: "taka", ilocano: "kana"),
    Word(english: "eat", tagalog: "kain", pangasinense: "kaon", ilocano: "mangan"),
    Word(english: "hello", tagalog: "kamusta", pangasinense: "kamusta", ilocano: "kamusta"),
    Word(english: "goodbye", tagalog: "paalam", pangasinense: "paalam", ilocano: "paalam"),
    // Add more translations as needed
  ];

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
    // Use the image picker to capture an image from the camera
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _imageFile = File(image.path);
      });
      await _extractText(image.path); // Extract text from the captured image
    }
  }

  Future<void> _extractText(String imagePath) async {
    final inputImage = InputImage.fromFilePath(imagePath);
    final recognizedText = await _textRecognizer.processImage(inputImage);
    setState(() {
      _extractedText = recognizedText.text; // Get the recognized text
      _extractedController.text = _extractedText; // Update the controller
    });
  }

  void _translateText() {
    setState(() {
      _translatedText = _getTranslation(_extractedText, _sourceLanguage, _targetLanguage);
      _translatedController.text = _translatedText; // Update the controller
    });
  }

  String _getTranslation(String text, String source, String target) {
    for (var word in words) {
      if (source == 'English' && word.english.toLowerCase() == text.toLowerCase()) {
        return _getTargetTranslation(word, target);
      }
      if (source == 'Tagalog' && word.tagalog.toLowerCase() == text.toLowerCase()) {
        return _getTargetTranslation(word, target);
      }
      if (source == 'Pangasinan' && word.pangasinense.toLowerCase() == text.toLowerCase()) {
        return _getTargetTranslation(word, target);
      }
      if (source == 'Ilocano' && word.ilocano.toLowerCase() == text.toLowerCase()) {
        return _getTargetTranslation(word, target);
      }
    }
    return text; // Default to input text if no translation is found
  }

  String _getTargetTranslation(Word word, String target) {
    switch (target) {
      case 'Tagalog':
        return word.tagalog;
      case 'Pangasinan':
        return word.pangasinense;
      case 'Ilocano':
        return word.ilocano;
      default: // English or any other
        return word.english;
    }
  }

  @override
  void dispose() {
    _textRecognizer.close(); // Close the text recognizer
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row for source and target language selection
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Source language dropdown
                  DropdownButton<String>(
                    value: _sourceLanguage,
                    onChanged: (String? newValue) {
                      setState(() {
                        _sourceLanguage = newValue!;
                      });
                    },
                    items: _languages.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  // Target language dropdown
                  DropdownButton<String>(
                    value: _targetLanguage,
                    onChanged: (String? newValue) {
                      setState(() {
                        _targetLanguage = newValue!;
                      });
                    },
                    items: _languages.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add spacing
              Center(
                child: ElevatedButton(
                  onPressed: _captureImage,
                  child: Text('Capture Image'),
                ),
              ),
              SizedBox(height: 20), // Add spacing between button and text fields
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
      ),
    );
  }
}
