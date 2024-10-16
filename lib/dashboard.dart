import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'include/sidebar.dart'; // Import the sidebar
import 'questionnaire/multiple_choice.dart'; // Import the MultipleChoiceScreen widget
import 'word_search/word_translate.dart';
import 'dictionary/dictionary.dart';
import 'image/image_process.dart';

void main() => runApp(SmartHomeApp());

class SmartHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SmartHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Word {
  final String word;
  final String definition;
  final String sentence;
  final String translation;

  Word({
    required this.word,
    required this.definition,
    required this.sentence,
    required this.translation,
  });
}

class SmartHomeScreen extends StatefulWidget {
  @override
  _SmartHomeScreenState createState() => _SmartHomeScreenState();
}

class _SmartHomeScreenState extends State<SmartHomeScreen> {
  bool isSidebarVisible = false; // Initialize to false to hide the sidebar on startup

  final List<Word> words = [
    Word(
      word: "Aksaya",
      definition: "Waste",
      sentence: "Ang oras na aksaya ay hindi na maibabalik.",
      translation: "Wasted time cannot be recovered.",
    ),
    Word(
      word: "Alimaya",
      definition: "Stubbornness",
      sentence: "Ang kanyang alimaya ay nagdulot ng hidwaan sa kanilang pamilya.",
      translation: "His stubbornness caused conflicts in their family.",
    ),
    Word(
      word: "Angin",
      definition: "Breeze",
      sentence: "Ang malamig na angin mula sa dagat ay nakakarelaks.",
      translation: "The cool breeze from the sea is relaxing.",
    ),
    Word(
      word: "Arangka",
      definition: "Perplexity",
      sentence: "Ang arangka sa kanyang mukha ay lumitaw nang makita ang problema.",
      translation: "The perplexity on his face appeared when he saw the problem.",
    ),
    Word(
      word: "Balagat",
      definition: "Clever",
      sentence: "Ang kanyang balagat na solusyon ay nakatulong sa pagresolba ng isyu.",
      translation: "His clever solution helped resolve the issue.",
    ),
    Word(
      word: "Banwa",
      definition: "Era",
      sentence: "Ang banwa ng sinaunang kultura ay puno ng kasaysayan.",
      translation: "The era of ancient culture is full of history.",
    ),
    Word(
      word: "Biktima",
      definition: "Victim",
      sentence: "Ang biktima ng aksidente ay agad dinala sa ospital.",
      translation: "The victim of the accident was immediately taken to the hospital.",
    ),
    Word(
      word: "Bungol",
      definition: "Deaf",
      sentence: "Ang bungol na batang iyon ay nag-aaral ng sign language.",
      translation: "That deaf child is learning sign language.",
    ),
    Word(
      word: "Daloy",
      definition: "Flow",
      sentence: "Ang daloy ng ilog ay malakas matapos ang ulan.",
      translation: "The flow of the river is strong after the rain.",
    ),
    Word(
      word: "Dilim",
      definition: "Darkness",
      sentence: "Ang dilim ng kagubatan ay nagpaparamdam ng takot.",
      translation: "The darkness of the forest evokes fear.",
    ),
    Word(
      word: "Gagal",
      definition: "Fault",
      sentence: "Ang gagal sa iyong trabaho ay maaaring magdulot ng problema.",
      translation: "A fault in your work could cause problems.",
    ),
    Word(
      word: "Gambal",
      definition: "Obstacle",
      sentence: "Ang gambal sa kanyang daan ay nagpapahirap sa kanyang paglalakbay.",
      translation: "The obstacle in his path makes his journey difficult.",
    ),
    Word(
      word: "Hapil",
      definition: "Burden",
      sentence: "Ang hapil ng kanyang responsibilidad ay mabigat.",
      translation: "The burden of his responsibilities is heavy.",
    ),
    Word(
      word: "Ilam",
      definition: "Decline",
      sentence: "Ang ilam ng presyo ng mga bilihin ay nagdudulot ng pangamba.",
      translation: "The decline in commodity prices causes concern.",
    ),
    Word(
      word: "Ingal",
      definition: "Roar",
      sentence: "Ang ingal ng leon ay maririnig sa malayo.",
      translation: "The roar of the lion can be heard from afar.",
    ),
    Word(
      word: "Kabat",
      definition: "Embarrassment",
      sentence: "Ang kabat na nararamdaman niya ay nagpatigil sa kanya.",
      translation: "The embarrassment he feels made him stop.",
    ),
    Word(
      word: "Kagubatan",
      definition: "Forest",
      sentence: "Ang kagubatan ay tahanan ng maraming uri ng hayop.",
      translation: "The forest is home to many kinds of animals.",
    ),
    Word(
      word: "Katarungan",
      definition: "Justice",
      sentence: "Ang katarungan para sa mga biktima ay mahalaga sa lipunan.",
      translation: "Justice for the victims is important in society.",
    ),
    Word(
      word: "Kibot",
      definition: "Shiver",
      sentence: "Ang kibot sa kanyang katawan ay sanhi ng lamig.",
      translation: "The shiver in his body is due to the cold.",
    ),
    Word(
      word: "Kukus",
      definition: "Interruption",
      sentence: "Ang kukus ng mga tao sa paligid ay nagpapahirap sa kanyang pag-aaral.",
      translation: "The interruption from the people around makes it difficult for him to study.",
    ),
    Word(
      word: "Lantay",
      definition: "Pure",
      sentence: "Ang lantay na ginto ay may mataas na halaga.",
      translation: "Pure gold has high value.",
    ),
    Word(
      word: "Likhain",
      definition: "Create",
      sentence: "Ang artist ay naglalayong likhain ang pinakamagandang obra.",
      translation: "The artist aims to create the most beautiful masterpiece.",
    ),
    Word(
      word: "Mahalaga",
      definition: "Important",
      sentence: "Ang edukasyon ay mahalaga sa pag-unlad ng isang tao.",
      translation: "Education is important for personal development.",
    ),
    Word(
      word: "Mabigat",
      definition: "Heavy",
      sentence: "Ang mabigat na bag ay mahirap dalhin.",
      translation: "The heavy bag is hard to carry.",
    ),
    Word(
      word: "Mangalakal",
      definition: "Merchant",
      sentence: "Ang mangalakal ay nagdadala ng iba't ibang produkto mula sa ibang lugar.",
      translation: "The merchant brings various products from different places.",
    ),
    Word(
      word: "Matiyaga",
      definition: "Diligent",
      sentence: "Ang matiyaga na estudyante ay palaging nakapagtatapos ng kanyang aralin.",
      translation: "The diligent student always completes his assignments.",
    ),
    Word(
      word: "Minsan",
      definition: "Occasionally",
      sentence: "Minsan lang kami nagkikita sa labas ng paaralan.",
      translation: "We meet outside of school only occasionally.",
    ),
    Word(
      word: "Pagkaawa",
      definition: "Compassion",
      sentence: "Ang pagkaawa sa kapwa ay nagpapalakas ng pagkakaisa.",
      translation: "Compassion towards others strengthens unity.",
    ),
    Word(
      word: "Paksang",
      definition: "Subject",
      sentence: "Ang paksang ito ay mahirap ngunit kapaki-pakinabang.",
      translation: "This subject is difficult but useful.",
    ),
    Word(
      word: "Pasensya",
      definition: "Patience",
      sentence: "Ang pasensya ay susi sa matagumpay na relasyon.",
      translation: "Patience is key to a successful relationship.",
    ),
    Word(
      word: "Sagana",
      definition: "Abundant",
      sentence: "Ang lugar na ito ay sagana sa likas na yaman.",
      translation: "This place is abundant in natural resources.",
    ),
    Word(
      word: "Salamin",
      definition: "Mirror",
      sentence: "Ang salamin sa banyo ay malaki at malinaw.",
      translation: "The mirror in the bathroom is large and clear.",
    ),
    Word(
      word: "Sampal",
      definition: "Slap",
      sentence: "Ang sampal ay magdudulot ng sakit at pagkahiya.",
      translation: "A slap will cause pain and embarrassment.",
    ),
    Word(
      word: "Sukob",
      definition: "Constraint",
      sentence: "Ang sukob sa batas ay naglilimita sa mga karapatan.",
      translation: "The constraints of the law limit certain rights.",
    ),
    Word(
      word: "Talento",
      definition: "Talent",
      sentence: "Ang kanyang talento sa musika ay kahanga-hanga.",
      translation: "His talent in music is impressive.",
    ),
    Word(
      word: "Tapat",
      definition: "Honest",
      sentence: "Ang pagiging tapat ay mahalaga sa anumang relasyon.",
      translation: "Being honest is important in any relationship.",
    ),
    Word(
      word: "Tulay",
      definition: "Bridge",
      sentence: "Ang tulay na ito ay nagdurugtong sa dalawang bayan.",
      translation: "This bridge connects two towns.",
    ),
    Word(
      word: "Tumbaga",
      definition: "Copper",
      sentence: "Ang tumbaga ay isang uri ng metal na ginagamit sa paggawa ng alahas.",
      translation: "Copper is a type of metal used in making jewelry.",
    ),
    Word(
      word: "Unawa",
      definition: "Understanding",
      sentence: "Ang unawa sa bawat isa ay susi sa maayos na komunikasyon.",
      translation: "Understanding each other is key to good communication.",
    ),
    Word(
      word: "Yakap",
      definition: "Embrace",
      sentence: "Ang yakap ng magulang ay nagbibigay ng kaligayahan sa mga anak.",
      translation: "Understanding each other is key to good communication.",
    ),
    Word(
      word: "Agos",
      definition: "Current",
      sentence: "Ang agos ng tubig ay mabilis sa panahon ng tag-ulan.",
      translation: "The current of the water is fast during the rainy season.",
    ),
    Word(
      word: "Aklim",
      definition: "Rhythm",
      sentence: "Ang *aklim* ng musika ay nagtatakda ng mood sa sayawan.",
      translation: "The rhythm of the music sets the mood for dancing.",
    ),
    Word(
      word: "Alimpungat",
      definition: "Delirium",
      sentence: "Ang *alimpungat* dulot ng lagnat ay nagdulot ng kalituhan.",
      translation: "The delirium caused by the fever led to confusion.",
    ),
    Word(
      word: "Aruk",
      definition: "Lull",
      sentence: "Ang *aruk* ng hangin sa dagat ay nagbibigay ng kapayapaan.",
      translation: "The lull of the sea breeze brings tranquility.",
    ),
    Word(
      word: "Asembliya",
      definition: "Assembly",
      sentence: "Ang *asembliya* ay nagtipon ng mga delegado mula sa iba't ibang lugar.",
      translation: "The assembly gathered delegates from various places.",
    ),
    Word(
      word: "Banggit",
      definition: "Mention",
      sentence: "Ang *banggit* sa kanyang pangalan ay nagdulot ng interes.",
      translation: "The mention of his name sparked interest.",
    ),
    Word(
      word: "Bukaneg",
      definition: "Accomplished",
      sentence: "Ang *bukaneg* na mag-aaral ay tumanggap ng parangal sa pagtatapos.",
      translation: "The accomplished student received an award at graduation.",
    ),
    Word(
      word: "Gimbal",
      definition: "Jolt",
      sentence: "Ang *gimbal* ng sasakyan ay nagdulot ng pagkabigla sa mga pasahero.",
      translation: "The jolt of the vehicle startled the passengers.",
    ),
    Word(
      word: "Hapit",
      definition: "Tight",
      sentence: "Ang *hapit* na sapatos ay hindi komportable sa paa.",
      translation: "The tight shoes are uncomfortable on the feet.",
    ),
    Word(
      word: "Inits",
      definition: "Heat",
      sentence: "Ang *inits* ng araw ay nagdudulot ng pagkatuyot ng lupa.",
      translation: "The heat of the sun causes the soil to dry out.",
    ),
    Word(
      word: "Kahulugan",
      definition: "Meaning",
      sentence: "Ang *kahulugan* ng kanyang salita ay nagbigay liwanag sa isyu.",
      translation: "The meaning of his words clarified the issue.",
    ),
    Word(
      word: "Kalagayan",
      definition: "Condition",
      sentence: "Ang *kalagayan* ng kalsada ay nangangailangan ng pag-aayos.",
      translation: "The condition of the road needs repair.",
    ),
    Word(
      word: "Katin",
      definition: "Bond",
      sentence: "Ang *katin* ng pagkakaibigan ay nagpapatibay ng relasyon.",
      translation: "The bond of friendship strengthens relationships.",
    ),
    Word(
      word: "Kumisyon",
      definition: "Commission",
      sentence: "Ang *kumisyon* ng mga ahente ay nakabatay sa kanilang benta.",
      translation: "The commission of agents is based on their sales.",
    ),
    Word(
      word: "Lantad",
      definition: "Exposed",
      sentence: "Ang *lantad* na mga dokumento ay naglalaman ng sensitibong impormasyon.",
      translation: "The exposed documents contain sensitive information.",
    ),
    Word(
      word: "Lugod",
      definition: "Joy",
      sentence: "Ang *lugod* ng pagkikita ng pamilya ay hindi mapapantayan.",
      translation: "The joy of family reunions is unmatched.",
    ),
    Word(
      word: "Makasaysayan",
      definition: "Historic",
      sentence: "Ang *makasaysayan* na lugar na ito ay puno ng mga kwento.",
      translation: "This historic place is full of stories.",
    ),
    Word(
      word: "Malamig",
      definition: "Cool",
      sentence: "Ang *malamig* na simoy ng hangin sa umaga ay nakakapagpawala ng pagod.",
      translation: "The cool morning breeze relieves fatigue.",
    ),
    Word(
      word: "Matapos",
      definition: "Finish",
      sentence: "Ang proyekto ay *matapos* sa tamang oras.",
      translation: "The project was finished on time.",
    ),
    Word(
      word: "Pagkakaiba",
      definition: "Difference",
      sentence: "Ang *pagkakaiba* ng kultura ay nagdadala ng kulay sa lipunan.",
      translation: "Cultural differences add vibrancy to society.",
    ),
    Word(
      word: "Pansamantala",
      definition: "Temporary",
      sentence: "Ang *pansamantala* na solusyon ay hindi sapat para sa pangmatagalang problema.",
      translation: "The temporary solution is not enough for long-term problems.",
    ),
    Word(
      word: "Papalit",
      definition: "Substitute",
      sentence: "Ang *papalit* sa guro ay magbibigay ng mga aralin sa araw na iyon.",
      translation: "The substitute teacher will give the lessons that day.",
    ),
    Word(
      word: "Pasalubong",
      definition: "Souvenir",
      sentence: "Ang *pasalubong* mula sa biyahe ay puno ng makulay na alaala.",
      translation: "The souvenir from the trip is filled with colorful memories.",
    ),
    Word(
      word: "Perahe",
      definition: "Ancestral",
      sentence: "Ang *perahe* na bahay ay puno ng kasaysayan ng pamilya.",
      translation: "The ancestral house is full of family history.",
    ),
    Word(
      word: "Pighati",
      definition: "Sorrow",
      sentence: "Ang *pighati* na dinaranas niya ay dulot ng pagkawala ng mahal sa buhay.",
      translation: "The sorrow he is experiencing is due to the loss of a loved one.",
    ),
    Word(
      word: "Rikna",
      definition: "Wealth",
      sentence: "Ang *rikna* ng kanyang pamilya ay nagmula sa matagal na pagsusumikap.",
      translation: "The wealth of his family comes from years of hard work.",
    ),
    Word(
      word: "Sagwan",
      definition: "Paddle",
      sentence: "Ang *sagwan* ay ginagamit upang magmaneho ng bangka.",
      translation: "The paddle is used to steer the boat.",
    ),
    Word(
      word: "Sabi",
      definition: "Statement",
      sentence: "Ang *sabi* ng eksperto ay nagbibigay ng gabay sa tamang desisyon.",
      translation: "The expert's statement provides guidance for the right decision.",
    ),
    Word(
      word: "Saliw",
      definition: "Accompaniment",
      sentence: "Ang *saliw* ng gitara sa awit ay nagbibigay ng magandang tunog.",
      translation: "The guitar accompaniment to the song produces a pleasant sound.",
    ),
    Word(
      word: "Sariwa",
      definition: "Fresh",
      sentence: "Ang *sariwa* na gulay ay mas masarap at mas malusog.",
      translation: "Fresh vegetables are tastier and healthier.",
    ),
    Word(
      word: "Sikreto",
      definition: "Secret",
      sentence: "Ang *sikreto* ng tagumpay ay nasa pagsusumikap at dedikasyon.",
      translation: "The secret to success lies in hard work and dedication.",
    ),
    Word(
      word: "Suliranin",
      definition: "Problem",
      sentence: "Ang *suliranin* sa kalsada ay nangangailangan ng agarang solusyon.",
      translation: "The problem on the road requires immediate resolution.",
    ),
    Word(
      word: "Tangkay",
      definition: "Stem",
      sentence: "Ang *tangkay* ng halaman ay mahalaga para sa pagdadala ng nutrients.",
      translation: "The stem of the plant is crucial for transporting nutrients.",
    ),
    Word(
      word: "Tingkad",
      definition: "Brilliance",
      sentence: "Ang *tingkad* ng kanyang talento ay lumalabas sa bawat pagganap.",
      translation: "The brilliance of his talent shines through in every performance.",
    ),
    Word(
      word: "Ulan",
      definition: "Rain",
      sentence: "Ang *ulan* ay tumulong sa pagtanggal ng init mula sa lupa.",
      translation: "The rain helped remove the heat from the ground.",
    ),




    // Add more words here...
  ];


  Word getWordOfTheDay() {
    final DateTime now = DateTime.now();
    final int dayOfYear = int.parse(DateFormat("D").format(now));
    return words[dayOfYear % words.length];
  }

  @override
  Widget build(BuildContext context) {
    final Word wordOfTheDay = getWordOfTheDay();

    return Scaffold(
      backgroundColor: Color(0xFF0A1128), // Dark background
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
              child: SingleChildScrollView( // Enable scrolling for the main content
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Row with Menu/Back Icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
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
                      ],
                    ),
                    SizedBox(height: 10),
                    // Title: Word of the Day
                    Text(
                      'Word of the Day',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    // Current Date
                    Text(
                      DateFormat.yMMMMd().format(DateTime.now()),
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 20),
                    // Word of the Day Card
                    _buildWordCard(wordOfTheDay),
                    SizedBox(height: 30),
                    // Categories Grid
                    GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      shrinkWrap: true, // Important to make GridView work inside SingleChildScrollView
                      physics: NeverScrollableScrollPhysics(), // Prevent GridView from scrolling separately
                      children: [
                        _buildCategoryButton(
                          Icons.camera,
                          'Image Translator',
                          Colors.lightBlue,
                          ImageToTextScreen(),
                        ),
                        _buildCategoryButton(
                          Icons.edit,
                          'Text Translator',
                          Colors.yellow,
                          TranslateApp(),
                        ),
                        _buildCategoryButton(
                          Icons.book,
                          'Dictionary',
                          Colors.green,
                          DictionaryApp(),
                        ),
                        _buildCategoryButton(
                          Icons.quiz,
                          'Quiz',
                          Colors.purple,
                          HomeScreen(),
                        ),
                        // Add more category buttons as needed
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWordCard(Word word) {
    return Card(
      elevation: 8,
      color: Color(0xFF1F2A44), // Darker card color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              word.word,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Change to white for better visibility
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Definition: ${word.definition}",
              style: TextStyle(fontSize: 16, color: Colors.white70), // Adjusted text color
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Example: ${word.sentence}",
              style: TextStyle(fontSize: 16, color: Colors.white70), // Adjusted text color
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Translation: ${word.translation}",
              style: TextStyle(fontSize: 16, color: Colors.white70), // Adjusted text color
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(IconData icon, String label, Color iconColor, Widget nextScreen) {
    return Card(
      elevation: 5,
      color: Color(0xFF1F2A44), // Darker category button color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextScreen), // Navigate to the next screen
          );
        },
        borderRadius: BorderRadius.circular(12), // Add border radius for the button
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: iconColor), // Use specified icon color
              SizedBox(height: 10),
              Text(
                label,
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
