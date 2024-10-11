import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:permission_handler/permission_handler.dart';
import '../include/sidebar.dart'; // Import the sidebar

void main() {
  runApp(TranslateApp());
}

class TranslateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TranslateScreen(),
    );
  }
}

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

class TranslateScreen extends StatefulWidget {
  @override
  _TranslateScreenState createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {
  String selectedInputLang = 'Tagalog';
  String selectedOutputLang = 'Pangasinan';
  String inputText = '';
  String translatedText = '';
  String errorMessage = '';
  bool isLoading = false;
  bool isSidebarVisible = false; // Sidebar visibility flag

  final FlutterTts flutterTts = FlutterTts();

  final List<Word> words = [
    Word(english: "How are you", tagalog: "Kamusta ka", pangasinense: "Komusta ka", ilocano: "Kumusta ka"),
    Word(english: "Good morning", tagalog: "Magandang umaga", pangasinense: "Naimbag a bigat", ilocano: "Naimbag a bigat"),
    Word(english: "Thank you", tagalog: "Salamat", pangasinense: "Salamat", ilocano: "Agyamanak"),
    // Add more words as needed
  ];

  @override
  void initState() {
    super.initState();
    _requestPermissions();
    _initTTS();
  }

  Future<void> _requestPermissions() async {
    await Permission.microphone.request();
  }

  Future<void> _initTTS() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
  }

  void translateText() {
    setState(() {
      isLoading = true;
      errorMessage = ''; // Clear previous error message
    });

    final matchingWord = words.firstWhere(
          (word) => _matchesInput(word),
      orElse: () => Word(english: "", tagalog: "", pangasinense: "", ilocano: ""),
    );

    if (matchingWord.english.isNotEmpty) {
      setState(() {
        translatedText = _getTranslatedText(matchingWord);
      });
    } else {
      setState(() {
        errorMessage = 'Search not found';
        translatedText = '';
      });
    }

    setState(() {
      isLoading = false;
    });
  }

  bool _matchesInput(Word word) {
    switch (selectedInputLang) {
      case 'Tagalog':
        return inputText.trim().toLowerCase() == word.tagalog.trim().toLowerCase();
      case 'English':
        return inputText.trim().toLowerCase() == word.english.trim().toLowerCase();
      case 'Pangasinan':
        return inputText.trim().toLowerCase() == word.pangasinense.trim().toLowerCase();
      default:
        return false;
    }
  }

  String _getTranslatedText(Word word) {
    switch (selectedOutputLang) {
      case 'Pangasinan':
        return word.pangasinense;
      case 'English':
        return word.english;
      case 'Tagalog':
        return word.tagalog;
      default:
        return '';
    }
  }

  void copyTranslatedTextToClipboard() {
    Clipboard.setData(ClipboardData(text: translatedText));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Copied to clipboard!')),
    );
  }

  Future<void> _speak() async {
    if (translatedText.isNotEmpty) {
      await flutterTts.setLanguage(
        selectedOutputLang == 'Tagalog' ? "tl-PH" : selectedOutputLang == 'Pangasinan' ? "pam-PH" : "en-US",
      );

      await flutterTts.speak(translatedText);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1F2A44), // Updated AppBar color
        leading: IconButton(
          icon: Icon(
            isSidebarVisible ? Icons.arrow_back : Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              isSidebarVisible = !isSidebarVisible; // Toggle sidebar visibility
            });
          },
        ),
      ),
      body: Row(
        children: [
          Sidebar(
            isVisible: isSidebarVisible,
            toggleSidebar: () {
              setState(() {
                isSidebarVisible = !isSidebarVisible; // Toggle sidebar visibility
              });
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownButton<String>(
                            value: selectedInputLang,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedInputLang = newValue!;
                              });
                            },
                            items: <String>['Tagalog', 'English', 'Pangasinan']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(value: value, child: Text(value));
                            }).toList(),
                          ),
                          DropdownButton<String>(
                            value: selectedOutputLang,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedOutputLang = newValue!;
                              });
                            },
                            items: <String>['Pangasinan', 'English', 'Tagalog']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(value: value, child: Text(value));
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            inputText = value;
                          });
                        },
                        maxLines: 10,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Enter text in $selectedInputLang',
                          hintText: 'Type here...',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (translatedText.isNotEmpty || errorMessage.isNotEmpty)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.copy),
                                  onPressed: copyTranslatedTextToClipboard,
                                  tooltip: 'Copy translated text to Clipboard',
                                ),
                                IconButton(
                                  icon: Icon(Icons.volume_up),
                                  onPressed: _speak,
                                  tooltip: 'Read translated text aloud',
                                ),
                              ],
                            ),
                          if (errorMessage.isNotEmpty)
                            Text(
                              errorMessage,
                              style: TextStyle(color: Colors.red, fontSize: 16),
                            )
                          else
                            Text(
                              translatedText.isEmpty
                                  ? 'Translated text will appear here'
                                  : translatedText,
                              style: TextStyle(fontSize: 16),
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: translateText,
                      child: Text(
                        'TRANSLATE',
                        style: TextStyle(color: Colors.white), // Set text color to white
                      ),

                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        backgroundColor: Color(0xFF1F2A44), // Updated AppBar color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
