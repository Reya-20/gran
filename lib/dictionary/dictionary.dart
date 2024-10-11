import 'package:flutter/material.dart';
import '../include/sidebar.dart'; // Import the sidebar

void main() {
  runApp(DictionaryApp());
}

class DictionaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A1128),
        hintColor: Colors.orange,
        scaffoldBackgroundColor: Colors.orange.shade100,
      ),
      home: DictionaryHomePage(),
    );
  }
}

class DictionaryHomePage extends StatefulWidget {
  @override
  _DictionaryHomePageState createState() => _DictionaryHomePageState();
}

class _DictionaryHomePageState extends State<DictionaryHomePage> {
  final List<Word> words = [
    Word(
        english: "文学",
        tagalog: "Noun 名詞",
        ilocano : "1. Literature",
        pangasinese : "1. Literature"
    ),

  ];

  bool isSidebarVisible = false; // Sidebar visibility flag
  String searchQuery = ''; // Search query for filtering words

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A1128), // Dark background
      appBar: AppBar(
        backgroundColor: Color(0xFF0A1128), // Dark background for the AppBar
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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Search Bar below the AppBar
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    margin: EdgeInsets.only(bottom: 16.0), // Space between search bar and list
                    decoration: BoxDecoration(
                      color: Colors.white, // White background for search bar
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 12),
                              hintText: 'Search...',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(color: Colors.black), // Black text color
                            onChanged: (value) {
                              setState(() {
                                searchQuery = value; // Update search query
                              });
                            },
                          ),
                        ),
                        Icon(Icons.search, color: Colors.grey), // Search icon on the right
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: words.length,
                      itemBuilder: (context, index) {
                        final word = words[index];
                        // Filter by search query
                        if (searchQuery.isNotEmpty &&
                            !word.english.contains(searchQuery)) {
                          return SizedBox.shrink(); // Hide items that don't match search
                        }
                        return Card(
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListTile(
                            title: Text(
                              word.english,
                              style: TextStyle(
                                color: Color(0xFF0A1128),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  word.tagalog,
                                  style: TextStyle(color: Colors.orange.shade400),
                                ),
                                SizedBox(height: 4),
                                Text(word.pangasinese),
                                SizedBox(height: 4),
                                Text(word.ilocano),
                              ],
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                word.isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.orange,
                              ),
                              onPressed: () {
                                setState(() {
                                  word.isFavorite = !word.isFavorite;
                                });
                              },
                            ),
                          ),
                        );
                      },
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

class Word {
  final String english;
  final String ilocano;
  final String pangasinese;
  final String tagalog;
  bool isFavorite;

  Word({
    required this.english,
    required this.ilocano,
    required this.pangasinese,
    required this.tagalog,
    this.isFavorite = false,
  });
}
