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
        english: "abandon",
        tagalog: "iwan",
        ilocano: "abuloyan",
        pangasinense: "baybay-an"
    ),
    Word(
        english: "abandoned",
        tagalog: "iniwan",
        ilocano: "tinaynan",
        pangasinense: "nabaybay-an"
    ),
    Word(
        english: "abbreviate",
        tagalog: "pinaikli",
        ilocano: "pinatikey",
        pangasinense: "napaababa"
    ),
    Word(
        english: "abdomen",
        tagalog: "tiyan",
        ilocano: "eges",
        pangasinense: "ti tian"
    ),
    Word(
        english: "abhor",
        tagalog: "suklam",
        ilocano: "suklam",
        pangasinense: "suklam"
    ),
    Word(
        english: "abide",
        tagalog: "sumunod",
        ilocano: "ontumbok",
        pangasinense: "sumurot"
    ),
    Word(
        english: "ability",
        tagalog: "kakayahan",
        ilocano: "abilidad",
        pangasinense: "abilidad"
    ),
    Word(
        english: "able",
        tagalog: "maari",
        ilocano: "nay nay",
        pangasinense: "mabalin"
    ),
    Word(
        english: "abnormal",
        tagalog: "hindi normal",
        ilocano: "aliwan normal",
        pangasinense: "saan a normal"
    ),
    Word(
        english: "abode",
        tagalog: "tahanan",
        ilocano: "abung",
        pangasinense: "pagtaengan"
    ),
    Word(
        english: "abolish",
        tagalog: "wakasan",
        ilocano: "sampot",
        pangasinense: "maudi"
    ),
    Word(
        english: "abolition",
        tagalog: "pagwawakas",
        ilocano: "panampot",
        pangasinense: "panagpatingga"
    ),
    Word(
        english: "aborigene",
        tagalog: "katutubo",
        ilocano: "dayo",
        pangasinense: "katutubo"
    ),
    Word(
        english: "abort",
        tagalog: "palaglag",
        ilocano: "pan-abort",
        pangasinense: "abdomen"
    ),
    Word(
        english: "abortion",
        tagalog: "pagpapalaglag",
        ilocano: "panagpaekal",
        pangasinense: "aborsion"
    ),
    Word(
        english: "abound",
        tagalog: "masagana",
        ilocano: "mabunlok",
        pangasinense: "nawadwad"
    ),
    Word(
        english: "about",
        tagalog: "tungkol",
        ilocano: "nipaakar ed",
        pangasinense: "maipapan iti"
    ),
    Word(
        english: "above",
        tagalog: "higit",
        ilocano: "mas dakel",
        pangasinense: "ad-adu pay"
    ),
    Word(
        english: "abreast",
        tagalog: "katabi",
        ilocano: "kaabay",
        pangasinense: "iti abay"
    ),
    Word(
        english: "abrupt",
        tagalog: "biglaan",
        ilocano: "bigla",
        pangasinense: "biglaan"
    ),
    Word(
        english: "absence",
        tagalog: "pagkawala",
        ilocano: "pannakatay",
        pangasinense: "naandi"
    ),
    Word(
        english: "absent",
        tagalog: "wala",
        ilocano: "awan",
        pangasinense: "anggapo"
    ),
    Word(
        english: "absent-minded",
        tagalog: "wala sa sarili",
        ilocano: "saan nga agmaymaysa",
        pangasinense: "agmanlalapud inkasikato"
    ),
    Word(
        english: "absorb",
        tagalog: "sumipsip",
        ilocano: "sumisipsip",
        pangasinense: "mansusupot"
    ),
    Word(
        english: "abstain",
        tagalog: "umiwas",
        ilocano: "liklikan",
        pangasinense: "paliisan"
    ),
    Word(
        english: "abstinence",
        tagalog: "pag-iwas",
        ilocano: "panangliklik",
        pangasinense: "paliisan"
    ),
    Word(
        english: "abundance",
        tagalog: "kasaganaan",
        ilocano: "kinabaknang",
        pangasinense: "inkadaakan"
    ),
    Word(
        english: "abundant",
        tagalog: "masagana",
        ilocano: "nawadwad",
        pangasinense: "mabunlok"
    ),
    Word(
        english: "abuse",
        tagalog: "pang-aabuso",
        ilocano: "panangabuso",
        pangasinense: "panag-abuso"
    ),
    Word(
        english: "accede",
        tagalog: "pumayag",
        ilocano: "umanamong",
        pangasinense: "onabobon"
    ),
    Word(
        english: "accelerate",
        tagalog: "pabilisin",
        ilocano: "mangpadaras",
        pangasinense: "paeleten"
    ),
    Word(
        english: "accent",
        tagalog: "tuldik",
        ilocano: "bulong",
        pangasinense: "tan"
    ),
    Word(
        english: "accept",
        tagalog: "tanggapin",
        ilocano: "awaten",
        pangasinense: "awaten"
    ),
    Word(
        english: "acceptable",
        tagalog: "katanggap-tanggap",
        ilocano: "maawat",
        pangasinense: "Awaten"
    ),
    Word(
        english: "accessible",
        tagalog: "madaling puntahan",
        ilocano: "nalaka a madanon",
        pangasinense: "mainomay ya asinggeran"
    ),
    Word(
        english: "accident",
        tagalog: "aksidente",
        ilocano: "aksidente",
        pangasinense: "aksidente"
    ),
    Word(
        english: "accommodate",
        tagalog: "tumanggap",
        ilocano: "mangawat",
        pangasinense: "mangawat"
    ),
    Word(
        english: "accommodating",
        tagalog: "magiliw",
        ilocano: "nadungngo",
        pangasinense: "maaro"
    ),
    Word(
        english: "accompany",
        tagalog: "samahan",
        ilocano: "sangsangkamaysa",
        pangasinense: "kaibay arum"
    ),
    Word(
        english: "accomplish",
        tagalog: "tapusin",
        ilocano: "agpatingga",
        pangasinense: "manampot"
    ),
    Word(
        english: "according",
        tagalog: "ayon",
        ilocano: "sigun iti",
        pangasinense: "onong ed"
    ),
    Word(
        english: "accordingly",
        tagalog: "alinsunod",
        ilocano: "iti sumaganad",
        pangasinense: "onong ed"
    ),
    Word(
        english: "account",
        tagalog: "ulat",
        ilocano: "report",
        pangasinense: "Report"
    ),
    Word(
        english: "accumulate",
        tagalog: "mag-ipon",
        ilocano: "agurnong",
        pangasinense: "mantitipon"
    ),
    Word(
        english: "accurate",
        tagalog: "tama",
        ilocano: "umno",
        pangasinense: "dugan"
    ),
    Word(
        english: "accusation",
        tagalog: "paratang",
        ilocano: "pammabasol",
        pangasinense: "kasalanan"
    ),
    Word(
        english: "accuse",
        tagalog: "akusahan",
        ilocano: "akusasion",
        pangasinense: "akusasyon"
    ),
    Word(
        english: "accustomed",
        tagalog: "nakasanayan",
        ilocano: "nakairuaman",
        pangasinense: "niyugali"
    ),
    Word(
        english: "ache",
        tagalog: "kirot",
        ilocano: "ut-ot",
        pangasinense: "sakit"
    ),
    Word(
        english: "achieve",
        tagalog: "makamit",
        ilocano: "magun-odan",
        pangasinense: "nagawaan"
    ),
    Word(
        english: "acid",
        tagalog: "asido",
        ilocano: "asido",
        pangasinense: "asido"
    ),
    Word(
        english: "acidity",
        tagalog: "asim",
        ilocano: "nasam-it",
        pangasinense: "asido"
    ),
    Word(
        english: "acknowledge",
        tagalog: "kilalanin",
        ilocano: "ipakaammom",
        pangasinense: "ipakabat"
    ),
    Word(
        english: "acquaint",
        tagalog: "ipakilala",
        ilocano: "ipakaammo",
        pangasinense: "ipakabat"
    ),
    Word(
        english: "acquire",
        tagalog: "makuha",
        ilocano: "magun-odan",
        pangasinense: "naala"
    ),
    Word(
        english: "across",
        tagalog: "sa kabila",
        ilocano: "iti bangir",
        pangasinense: "diad biek a dapag"
    ),
    Word(
        english: "act",
        tagalog: "kumilos",
        ilocano: "agtignay",
        pangasinense: "onkiwas"
    ),
    Word(
        english: "action",
        tagalog: "aksyon",
        ilocano: "tignay",
        pangasinense: "kagagawa"
    ),
    Word(
        english: "actual",
        tagalog: "aktwal",
        ilocano: "aktual",
        pangasinense: "aktual"
    ),
    Word(
        english: "acute",
        tagalog: "matindi",
        ilocano: "nakaro",
        pangasinense: "grabe so sakit"
    ),
    Word(
        english: "adapt",
        tagalog: "umangkop",
        ilocano: "maitutop",
        pangasinense: "matukoy"
    ),
    Word(
        english: "add",
        tagalog: "idagdag",
        ilocano: "manginayon",
        pangasinense: "idaragdag"
    ),
    Word(
        english: "addiction",
        tagalog: "pagkagumon",
        ilocano: "pannakaadikto",
        pangasinense: "inkaadik"
    ),
    Word(
        english: "address",
        tagalog: "tirahan",
        ilocano: "pagnaedan",
        pangasinense: "ayaman"
    ),
    Word(
        english: "adjacent",
        tagalog: "katabi",
        ilocano: "iti abay",
        pangasinense: "kaabay"
    ),
    Word(
        english: "adjourn",
        tagalog: "ipagpaliban",
        ilocano: "panangitantan",
        pangasinense: "ag-abayag"
    ),
    Word(
        english: "adjure",
        tagalog: "magpanata",
        ilocano: "agkarkari",
        pangasinense: "mansamba"
    ),
    Word(
        english: "adjust",
        tagalog: "isaayos",
        ilocano: "maurnos",
        pangasinense: "naayos"
    ),
    Word(
        english: "administration",
        tagalog: "pamahalaan",
        ilocano: "gobierno",
        pangasinense: "gobierno"
    ),
    Word(
        english: "admire",
        tagalog: "humanga",
        ilocano: "agsiddaaw",
        pangasinense: "pankelawan"
    ),
    Word(
        english: "admit",
        tagalog: "umamin",
        ilocano: "umamin",
        pangasinense: "mankonsiensia"
    ),
    Word(
        english: "admonish",
        tagalog: "pagalitan",
        ilocano: "a paglintegan",
        pangasinense: "napaliisan"
    ),
    Word(
        english: "adopt",
        tagalog: "ampunin",
        ilocano: "pammakawan",
        pangasinense: "ipanengneng so panangasi"
    ),
    Word(
        english: "adopted child",
        tagalog: "ampon",
        ilocano: "panangampon",
        pangasinense: "mangaawat"
    ),
    Word(
        english: "adorn",
        tagalog: "palamutihan",
        ilocano: "dekorasion",
        pangasinense: "dekorasyon"
    ),
    Word(
        english: "adult",
        tagalog: "matanda",
        ilocano: "nataengan",
        pangasinense: "matatken la"
    ),
    Word(
        english: "adultery",
        tagalog: "pangangalunya",
        ilocano: "pannakikamalala",
        pangasinense: "pikakalugoran"
    ),
    Word(
        english: "advance",
        tagalog: "umusad",
        ilocano: "naggapu iti",
        pangasinense: "inmalagey"
    ),
    Word(
        english: "advantage",
        tagalog: "bentahe",
        ilocano: "pagimbagan",
        pangasinense: "pankaabigan"
    ),
    Word(
        english: "adventure",
        tagalog: "pakikipagsapalaran",
        ilocano: "panagpakada",
        pangasinense: "pan-adventure"
    ),
    Word(
        english: "advertisement",
        tagalog: "patalastas",
        ilocano: "pannakaiwaragawag",
        pangasinense: "paliwawa"
    ),
    Word(
        english: "advice",
        tagalog: "payo",
        ilocano: "balakad",
        pangasinense: "simbawa"
    ),
    Word(
        english: "adze",
        tagalog: "daras",
        ilocano: "daras",
        pangasinense: "tampol"
    ),
    Word(
        english: "afar",
        tagalog: "malayo",
        ilocano: "adayo",
        pangasinense: "arawi"
    ),
    Word(
        english: "affair",
        tagalog: "relasyon",
        ilocano: "relasion",
        pangasinense: "relasyon"
    ),
    Word(
        english: "affection",
        tagalog: "pagmamahal",
        ilocano: "ayat",
        pangasinense: "panangaro"
    ),
    Word(
        english: "affirm",
        tagalog: "pagtibayin",
        ilocano: "pammaregta",
        pangasinense: "pamaseseg"
    ),
    Word(
        english: "afflict",
        tagalog: "pahirapan",
        ilocano: "panagsagaba",
        pangasinense: "irap"
    ),
    Word(
        english: "afloat",
        tagalog: "lumulutang",
        ilocano: "agtaytayab",
        pangasinense: "onlilibog"
    ),
    Word(
        english: "afraid",
        tagalog: "takot",
        ilocano: "buteng",
        pangasinense: "natatakot"
    ),
    Word(
        english: "after",
        tagalog: "pagkatapos",
        ilocano: "kalpasanna",
        pangasinense: "Insan"
    ),
    Word(
        english: "afternoon",
        tagalog: "hapon",
        ilocano: "agmatuon",
        pangasinense: "hapon"
    ),
    Word(
        english: "again",
        tagalog: "muli",
        ilocano: "manen",
        pangasinense: "lamet"
    ),
    Word(
        english: "against",
        tagalog: "laban",
        ilocano: "laban",
        pangasinense: "labanan"
    ),
    Word(
        english: "agency",
        tagalog: "ahensya",
        ilocano: "ahensia",
        pangasinense: "ahensya"
    ),
    Word(
        english: "agent",
        tagalog: "ahente",
        ilocano: "ahente",
        pangasinense: "say agent"
    ),
    Word(
        english: "aggravate",
        tagalog: "palalain",
        ilocano: "agpapada",
        pangasinense: "iliktar"
    ),
    Word(
        english: "agile",
        tagalog: "maliksi",
        ilocano: "kinamaag",
        pangasinense: "aliwliwa"
    ),
    Word(
        english: "agitation",
        tagalog: "pagkabalisa",
        ilocano: "pannakaseknan",
        pangasinense: "pampapagaan"
    ),
    Word(
        english: "ago",
        tagalog: "noong",
        ilocano: "idi",
        pangasinense: "nen"
    ),
    Word(
        english: "agony",
        tagalog: "dalamhati",
        ilocano: "iti puso",
        pangasinense: "ed puso"
    ),
    Word(
        english: "agree",
        tagalog: "sumang-ayon",
        ilocano: "umanamong",
        pangasinense: "onabobon"
    ),
    Word(
        english: "agreement",
        tagalog: "kasunduan",
        ilocano: "katulagan",
        pangasinense: "paknaan"
    ),
    Word(
        english: "agriculture",
        tagalog: "agrikultura",
        ilocano: "agrikultura",
        pangasinense: "agrikultura"
    ),
    Word(
        english: "ahead",
        tagalog: "nauuna",
        ilocano: "umuna",
        pangasinense: "unaan"
    ),
    Word(
        english: "aid",
        tagalog: "tulong",
        ilocano: "tulong",
        pangasinense: "tulong"
    ),
    Word(
        english: "aim",
        tagalog: "layunin",
        ilocano: "panggep",
        pangasinense: "gagala"
    ),
    Word(
        english: "air",
        tagalog: "hangin",
        ilocano: "angin",
        pangasinense: "dagem"
    ),
    Word(
        english: "ajar",
        tagalog: "bahagyang bukas",
        ilocano: "bassit a nasapa",
        pangasinense: "daiset ya ugaw"
    ),
    Word(
        english: "alarm",
        tagalog: "alarma",
        ilocano: "alarma",
        pangasinense: "alarma"
    ),
    Word(
        english: "albumen",
        tagalog: "puti ng itlog",
        ilocano: "puraw ti itlog",
        pangasinense: "amputi na itlog"
    ),
    Word(
        english: "alcohol",
        tagalog: "alak",
        ilocano: "arak",
        pangasinense: "alak"
    ),
    Word(
        english: "alert",
        tagalog: "alerto",
        ilocano: "alerto",
        pangasinense: "alerto"
    ),
    Word(
        english: "alien",
        tagalog: "dayuhan",
        ilocano: "ganggannaet",
        pangasinense: "dayo"
    ),
    Word(
        english: "alight",
        tagalog: "bumaba",
        ilocano: "bumaba",
        pangasinense: "onlelereg"
    ),
    Word(
        english: "alike",
        tagalog: "magkatulad",
        ilocano: "agpapada",
        pangasinense: "Parepareho"
    ),
    Word(
        english: "alive",
        tagalog: "buhay",
        ilocano: "biag",
        pangasinense: "bilay"
    ),
    Word(
        english: "all",
        tagalog: "lahat",
        ilocano: "amin",
        pangasinense: "amin"
    ),
    Word(
        english: "alley",
        tagalog: "eskinita",
        ilocano: "agkinkinnita",
        pangasinense: "eskinita"
    ),
    Word(
        english: "alligator",
        tagalog: "buwaya",
        ilocano: "buaya",
        pangasinense: "buaya"
    ),
    Word(
        english: "allow",
        tagalog: "pahintulutan",
        ilocano: "ipalubos",
        pangasinense: "abuloyan"
    ),
    Word(
        english: "almanac",
        tagalog: "almanake",
        ilocano: "almanac",
        pangasinense: "almanac"
    ),
    Word(
        english: "almighty",
        tagalog: "makapangyarihan",
        ilocano: "nabileg",
        pangasinense: "makapanyari"
    ),
    Word(
        english: "almost",
        tagalog: "halos",
        ilocano: "dandani",
        pangasinense: "ngalngali"
    ),
    Word(
        english: "alms",
        tagalog: "limos",
        ilocano: "limos",
        pangasinense: "limos"
    ),
    Word(
        english: "alone",
        tagalog: "mag-isa",
        ilocano: "agmaymaysa",
        pangasinense: "bukor"
    ),
    Word(
        english: "along",
        tagalog: "kasama",
        ilocano: "kaduana",
        pangasinense: "kaiba"
    ),
    Word(
        english: "along-side",
        tagalog: "tabi",
        ilocano: "iti bangir",
        pangasinense: "ed gilig"
    ),
    Word(
        english: "alphabet",
        tagalog: "alpabeto",
        ilocano: "alpabeto",
        pangasinense: "alpabeto"
    ),
    Word(
        english: "already",
        tagalog: "na",
        ilocano: "ti",
        pangasinense: "say"
    ),
    Word(
        english: "also",
        tagalog: "rin",
        ilocano: "met",
        pangasinense: "met"
    ),
    Word(
        english: "alternate",
        tagalog: "salit-salit",
        ilocano: "iti adu a sasao",
        pangasinense: "salita-salita"
    ),
    Word(
        english: "although",
        tagalog: "bagaman",
        ilocano: "nupay",
        pangasinense: "anggaman"
    ),
    Word(
        english: "altitude",
        tagalog: "taas",
        ilocano: "nangato",
        pangasinense: "atagey"
    ),
    Word(
        english: "altogether",
        tagalog: "lubos",
        ilocano: "naan-anay",
        pangasinense: "sigpot"
    ),
    Word(
        english: "always",
        tagalog: "palagi",
        ilocano: "kankanayon",
        pangasinense: "lawas"
    ),
    Word(
        english: "am",
        tagalog: "ako",
        ilocano: "siak",
        pangasinense: "ak"
    ),
    Word(
        english: "amaze",
        tagalog: "humanga",
        ilocano: "agsiddaaw",
        pangasinense: "pankelawan"
    ),
    Word(
        english: "ambition",
        tagalog: "ambisyon",
        ilocano: "ambision",
        pangasinense: "ambisyon"
    ),
    Word(
        english: "amen",
        tagalog: "siya nawa",
        ilocano: "Isu dayta",
        pangasinense: "Sikato la"
    ),
    Word(
        english: "amendment",
        tagalog: "susog",
        ilocano: "suso",
        pangasinense: "suso"
    ),
    Word(
        english: "amiable",
        tagalog: "magiliw",
        ilocano: "nadungngo",
        pangasinense: "maaro"
    ),
    Word(
        english: "amidst",
        tagalog: "gitna",
        ilocano: "tengnga",
        pangasinense: "pegley"
    ),
    Word(
        english: "amongst",
        tagalog: "kasama",
        ilocano: "kaduana",
        pangasinense: "kaiba"
    ),
    Word(
        english: "amount",
        tagalog: "dami",
        ilocano: "kaadu",
        pangasinense: "karakel"
    ),
    Word(
        english: "amusement",
        tagalog: "aliw",
        ilocano: "agragsak",
        pangasinense: "aliw"
    ),
    Word(
        english: "an",
        tagalog: "isang",
        ilocano: "maysa",
        pangasinense: "sakey"
    ),
    Word(
        english: "analogy",
        tagalog: "pagkakatulad",
        ilocano: "panagpapada",
        pangasinense: "pandumaan"
    ),
    Word(
        english: "analyze",
        tagalog: "suriin",
        ilocano: "sukimatem",
        pangasinense: "nengnengen"
    ),
    Word(
        english: "ancestor",
        tagalog: "ninuno",
        ilocano: "kapuonan",
        pangasinense: "inmuunan atateng"
    ),
    Word(
        english: "anchor",
        tagalog: "angkla",
        ilocano: "angkla",
        pangasinense: "angkla"
    ),
    Word(
        english: "ancient",
        tagalog: "sinauna",
        ilocano: "dati",
        pangasinense: "datin"
    ),
    Word(
        english: "and",
        tagalog: "at",
        ilocano: "ken",
        pangasinense: "tan"
    ),
    Word(
        english: "animal",
        tagalog: "hayop",
        ilocano: "animal",
        pangasinense: "ayayep"
    ),
    Word(
        english: "animosity",
        tagalog: "galit",
        ilocano: "panagpungtot",
        pangasinense: "sanok"
    ),
    Word(
        english: "ankle",
        tagalog: "bukung-bukong",
        ilocano: "agbukbukel",
        pangasinense: "bukbukor"
    ),
    Word(
        english: "announce",
        tagalog: "ipahayag",
        ilocano: "ipakaammo",
        pangasinense: "ipaliwawa"
    ),
    Word(
        english: "annoy",
        tagalog: "inisin",
        ilocano: "inuminado",
        pangasinense: "panangan"
    ),
    Word(
        english: "annual",
        tagalog: "taun-taon",
        ilocano: "tinawen",
        pangasinense: "kada taon"
    ),
    Word(
        english: "anoint",
        tagalog: "pahiran",
        ilocano: "pangpangen",
        pangasinense: "say so"
    ),
    Word(
        english: "another",
        tagalog: "iba pa",
        ilocano: "dadduma pay",
        pangasinense: "arum ni"
    ),
    Word(
        english: "answer",
        tagalog: "sagot",
        ilocano: "sungbat",
        pangasinense: "ebat"
    ),
    Word(
        english: "ant",
        tagalog: "langgam",
        ilocano: "tumatayab",
        pangasinense: "manok"
    ),
    Word(
        english: "anxiety",
        tagalog: "pagkabalisa",
        ilocano: "pannakaseknan",
        pangasinense: "pampapagaan"
    ),
    Word(
        english: "any",
        tagalog: "kahit ano",
        ilocano: "aniaman",
        pangasinense: "antokaman"
    ),
    Word(
        english: "anybody",
        tagalog: "kahit sino",
        ilocano: "asinoman",
        pangasinense: "anggan siopa"
    ),
    Word(
        english: "anyhow",
        tagalog: "kahit paano",
        ilocano: "uray kaskasano",
        pangasinense: "anggan panon"
    ),
    Word(
        english: "anything",
        tagalog: "kahit ano",
        ilocano: "aniaman",
        pangasinense: "antokaman"
    ),
    Word(
        english: "anywhere",
        tagalog: "kahit saan",
        ilocano: "iti sadinoman",
        pangasinense: "anggan iner"
    ),
    Word(
        english: "apart",
        tagalog: "hiwalay",
        ilocano: "naisina",
        pangasinense: "mansian"
    ),
    Word(
        english: "aperture",
        tagalog: "siwang",
        ilocano: "nagbannog",
        pangasinense: "tan"
    ),
    Word(
        english: "apparel",
        tagalog: "damit",
        ilocano: "kawes",
        pangasinense: "kawes"
    ),
    Word(
        english: "appear",
        tagalog: "lumitaw",
        ilocano: "agparang",
        pangasinense: "ompaway"
    ),
    Word(
        english: "appetite",
        tagalog: "gana",
        ilocano: "ti gana",
        pangasinense: "panliketan"
    ),
    Word(
        english: "applaud",
        tagalog: "palakpakan",
        ilocano: "panangpakpak",
        pangasinense: "manpupulong"
    ),
    Word(
        english: "apply",
        tagalog: "mag-aplay",
        ilocano: "ag-apply",
        pangasinense: "man-aplay"
    ),
    Word(
        english: "appoint",
        tagalog: "itakda",
        ilocano: "mangituding",
        pangasinense: "i-set so"
    ),
    Word(
        english: "appreciate",
        tagalog: "pahalagahan",
        ilocano: "panangapresiar",
        pangasinense: "apresyaen"
    ),
    Word(
        english: "approach",
        tagalog: "lapit",
        ilocano: "nasinged",
        pangasinense: "asingger"
    ),
    Word(
        english: "approve",
        tagalog: "sang-ayunan",
        ilocano: "umanamong",
        pangasinense: "onabobon"
    ),
    Word(
        english: "April",
        tagalog: "Abril",
        ilocano: "Abril",
        pangasinense: "Abril"
    ),
    Word(
        english: "apron",
        tagalog: "apron",
        ilocano: "apron",
        pangasinense: "apron"
    ),
    Word(
        english: "arbitrary",
        tagalog: "di-makatwiran",
        ilocano: "saan a nainkalintegan",
        pangasinense: "agmakatunongan"
    ),
    Word(
        english: "arch",
        tagalog: "arko",
        ilocano: "arko",
        pangasinense: "arko"
    ),
    Word(
        english: "argue",
        tagalog: "makipagtalo",
        ilocano: "makisupiat",
        pangasinense: "mikolkol"
    ),
    Word(
        english: "arid",
        tagalog: "tuyo",
        ilocano: "natangken",
        pangasinense: "amagaan"
    ),
    Word(
        english: "arise",
        tagalog: "bumangon",
        ilocano: "bumangon",
        pangasinense: "onalagey"
    ),
    Word(
        english: "arm",
        tagalog: "braso",
        ilocano: "takkiag",
        pangasinense: "saray taklay"
    ),
    Word(
        english: "army",
        tagalog: "hukbo",
        ilocano: "buyot",
        pangasinense: "armada"
    ),
    Word(
        english: "around",
        tagalog: "paligid",
        ilocano: "iti aglawlaw",
        pangasinense: "asingger"
    ),
    Word(
        english: "arouse",
        tagalog: "pukawin",
        ilocano: "mangibangon",
        pangasinense: "onliing"
    ),
    Word(
        english: "arrest",
        tagalog: "arestuhin",
        ilocano: "arestuen",
        pangasinense: "arestoen"
    ),
    Word(
        english: "arrive",
        tagalog: "dumating",
        ilocano: "umay",
        pangasinense: "sinmabi"
    ),
    Word(
        english: "arrow",
        tagalog: "palaso",
        ilocano: "palasio",
        pangasinense: "palasio"
    ),
    Word(
        english: "article",
        tagalog: "artikulo",
        ilocano: "artikulo",
        pangasinense: "artikulo"
    ),
    Word(
        english: "as",
        tagalog: "bilang",
        ilocano: "bilang",
        pangasinense: "bilang"
    ),
    Word(
        english: "ascend",
        tagalog: "umakyat",
        ilocano: "agpangato",
        pangasinense: "ontatdang"
    ),
    Word(
        english: "ashamed",
        tagalog: "nahihiya",
        ilocano: "mabain",
        pangasinense: "nababaingan"
    ),
    Word(
        english: "ashes",
        tagalog: "abo",
        ilocano: "dapo",
        pangasinense: "abo"
    ),
    Word(
        english: "ashore",
        tagalog: "dalampasigan",
        ilocano: "baybay",
        pangasinense: "ed dayat"
    ),
    Word(
        english: "ask",
        tagalog: "magtanong",
        ilocano: "agsaludsod",
        pangasinense: "tepeten"
    ),
    Word(
        english: "asleep",
        tagalog: "natutulog",
        ilocano: "matmaturog",
        pangasinense: "naugip"
    ),
    Word(
        english: "assembly",
        tagalog: "pagtitipon",
        ilocano: "panagurnong",
        pangasinense: "pantitipon"
    ),
    Word(
        english: "assert",
        tagalog: "igiit",
        ilocano: "agpaspasindayag",
        pangasinense: "manpupulong"
    ),
    Word(
        english: "assign",
        tagalog: "italaga",
        ilocano: "maituding",
        pangasinense: "niasain"
    ),
    Word(
        english: "association",
        tagalog: "samahan",
        ilocano: "sangsangkamaysa",
        pangasinense: "kaibay arum"
    ),
    Word(
        english: "assurance",
        tagalog: "katiyakan",
        ilocano: "kinatalged",
        pangasinense: "segurado"
    ),
    Word(
        english: "astern",
        tagalog: "sa likuran",
        ilocano: "iti likudan",
        pangasinense: "diad beneg"
    ),
    Word(
        english: "astonish",
        tagalog: "magulat",
        ilocano: "masdaaw",
        pangasinense: "pankelawan"
    ),
    Word(
        english: "astounding",
        tagalog: "kamangha-mangha",
        ilocano: "nakaskasdaaw",
        pangasinense: "Agaylay abig"
    ),
    Word(
        english: "at",
        tagalog: "sa",
        ilocano: "iti",
        pangasinense: "ed"
    ),
    Word(
        english: "atmosphere",
        tagalog: "atmospera",
        ilocano: "atmospera",
        pangasinense: "atmospera"
    ),
    Word(
        english: "attack",
        tagalog: "pag-atake",
        ilocano: "panangraut",
        pangasinense: "panag-atake"
    ),
    Word(
        english: "attempt",
        tagalog: "subukan",
        ilocano: "padasen",
        pangasinense: "salien"
    ),
    Word(
        english: "attention",
        tagalog: "pansin",
        ilocano: "atension",
        pangasinense: "imano"
    ),
    Word(
        english: "attract",
        tagalog: "akitin",
        ilocano: "agitated",
        pangasinense: "agitated"
    ),
    Word(
        english: "attribute",
        tagalog: "katangian",
        ilocano: "kualidad",
        pangasinense: "kualidad"
    ),
    Word(
        english: "audible",
        tagalog: "naririnig",
        ilocano: "mangngeg",
        pangasinense: "narengel"
    ),
    Word(
        english: "audience",
        tagalog: "madla",
        ilocano: "publiko",
        pangasinense: "publiko"
    ),
    Word(
        english: "August",
        tagalog: "Agosto",
        ilocano: "Agosto",
        pangasinense: "Setyembre"
    ),
    Word(
        english: "aunt",
        tagalog: "tiyahin",
        ilocano: "apong",
        pangasinense: "panginaen"
    ),
    Word(
        english: "author",
        tagalog: "may-akda",
        ilocano: "autor",
        pangasinense: "autor"
    ),
    Word(
        english: "avarice",
        tagalog: "kasakiman",
        ilocano: "kinaagum",
        pangasinense: "inkamakasarili"
    ),
    Word(
        english: "avenge",
        tagalog: "maghiganti",
        ilocano: "agibales",
        pangasinense: "ombawi"
    ),
    Word(
        english: "avoid",
        tagalog: "umiwas",
        ilocano: "liklikan",
        pangasinense: "paliisan"
    ),
    Word(
        english: "await",
        tagalog: "maghintay",
        ilocano: "aguray",
        pangasinense: "manalagar"
    ),
    Word(
        english: "awake",
        tagalog: "gising",
        ilocano: "nakariing",
        pangasinense: "binmangon"
    ),
    Word(
        english: "away",
        tagalog: "malayo",
        ilocano: "adayo",
        pangasinense: "arawi"
    ),
    Word(
        english: "awkward",
        tagalog: "balintunang kilos",
        ilocano: "panagtigtignay a di nainkalintegan",
        pangasinense: "panaggaway mauges"
    ),
    Word(
        english: "ax",
        tagalog: "palakol",
        ilocano: "panagpaagas",
        pangasinense: "panggalaw"
    ),
    Word(
        english: "axle",
        tagalog: "ehe",
        ilocano: "iti",
        pangasinense: "ed"
    ),
    Word(
        english: "baby",
        tagalog: "sanggol",
        ilocano: "maladaga",
        pangasinense: "kapangiyanak"
    ),
    Word(
        english: "bachelor",
        tagalog: "binata",
        ilocano: "agtutubo",
        pangasinense: "kalangweran"
    ),
    Word(
        english: "backbone",
        tagalog: "gulugod",
        ilocano: "agkurkuridem",
        pangasinense: "sakit na linawa"
    ),
    Word(
        english: "backward",
        tagalog: "paatras",
        ilocano: "agsubli",
        pangasinense: "onsublay"
    ),
    Word(
        english: "bad",
        tagalog: "masama",
        ilocano: "dakes",
        pangasinense: "mauges"
    ),
    Word(
        english: "bag",
        tagalog: "bag",
        ilocano: "bag",
        pangasinense: "sako"
    ),
    Word(
        english: "baggage",
        tagalog: "bagahe",
        ilocano: "baggage",
        pangasinense: "baggage"
    ),
    Word(
        english: "bait",
        tagalog: "pain",
        ilocano: "sakit",
        pangasinense: "sakit"
    ),
    Word(
        english: "bake",
        tagalog: "maghurno",
        ilocano: "agluto",
        pangasinense: "pangiparaan ed pangdem"
    ),
    Word(
        english: "balance",
        tagalog: "balanse",
        ilocano: "balanse",
        pangasinense: "balanse"
    ),
    Word(
        english: "bald",
        tagalog: "kalbo",
        ilocano: "kalbo",
        pangasinense: "kalbo"
    ),
    Word(
        english: "ballroom",
        tagalog: "bulwagan",
        ilocano: "pasdek",
        pangasinense: "say hallway"
    ),
    Word(
        english: "bamboo",
        tagalog: "kawayan",
        ilocano: "kawayan",
        pangasinense: "kawayan"
    ),
    Word(
        english: "banana",
        tagalog: "saging",
        ilocano: "saging",
        pangasinense: "saging"
    ),
    Word(
        english: "bandage",
        tagalog: "bendahe",
        ilocano: "pangal",
        pangasinense: "pandurog"
    ),
    Word(
        english: "banner",
        tagalog: "banner",
        ilocano: "banner",
        pangasinense: "banner"
    ),
    Word(
        english: "baptism",
        tagalog: "binyag",
        ilocano: "nabautisaran",
        pangasinense: "abautismoan"
    ),
    Word(
        english: "barbarian",
        tagalog: "barbaro",
        ilocano: "barbaro",
        pangasinense: "maruksa"
    ),
    Word(
        english: "barber",
        tagalog: "barbero",
        ilocano: "barbero",
        pangasinense: "barbero"
    ),
    Word(
        english: "barefoot",
        tagalog: "nakapaa",
        ilocano: "nakapa",
        pangasinense: "aka-enjoy"
    ),
    Word(
        english: "bareheaded",
        tagalog: "walang sumbrero",
        ilocano: "awan sombrero",
        pangasinense: "anggapoy sombrero"
    ),
    Word(
        english: "bargain",
        tagalog: "tawad",
        ilocano: "pammakawan",
        pangasinense: "perdon"
    ),
    Word(
        english: "bark",
        tagalog: "alingawngaw",
        ilocano: "agpukpukkaw",
        pangasinense: "paningil"
    ),
    Word(
        english: "barn",
        tagalog: "kamalig",
        ilocano: "kamalig",
        pangasinense: "panag-ani"
    ),
    Word(
        english: "barter",
        tagalog: "palitan",
        ilocano: "sukatan",
        pangasinense: "mansalat"
    ),
    Word(
        english: "base",
        tagalog: "base",
        ilocano: "base",
        pangasinense: "base"
    ),
    Word(
        english: "bashful",
        tagalog: "mahiyain",
        ilocano: "mabain",
        pangasinense: "mabaing"
    ),
    Word(
        english: "basin",
        tagalog: "lababo",
        ilocano: "lababo",
        pangasinense: "labaan"
    ),
    Word(
        english: "basis",
        tagalog: "batayan",
        ilocano: "pagbatayan",
        pangasinense: "base"
    ),
    Word(
        english: "basket",
        tagalog: "basket",
        ilocano: "basket",
        pangasinense: "basket"
    ),
    Word(
        english: "bat",
        tagalog: "paniki",
        ilocano: "agkukutel",
        pangasinense: "paniki"
    ),
    Word(
        english: "bath",
        tagalog: "paligo",
        ilocano: "banyo",
        pangasinense: "kasilyas"
    ),
    Word(
        english: "bathe",
        tagalog: "maligo",
        ilocano: "pagdigusan",
        pangasinense: "paliguan"
    ),
    Word(
        english: "battle",
        tagalog: "labanan",
        ilocano: "pannakigubat",
        pangasinense: "labanan"
    ),
    Word(
        english: "bazaar",
        tagalog: "bazar",
        ilocano: "bazar",
        pangasinense: "bazar"
    ),
    Word(
        english: "beach",
        tagalog: "dalampasigan",
        ilocano: "baybay",
        pangasinense: "ed dayat"
    ),
    Word(
        english: "beak",
        tagalog: "tuka",
        ilocano: "ti",
        pangasinense: "tan"
    ),
    Word(
        english: "beam",
        tagalog: "sinag",
        ilocano: "radiasion",
        pangasinense: "sinag"
    ),
    Word(
        english: "bean",
        tagalog: "buto",
        ilocano: "tulang",
        pangasinense: "pukel"
    ),
    Word(
        english: "beard",
        tagalog: "balbas",
        ilocano: "barbas",
        pangasinense: "balbas"
    ),
    Word(
        english: "beast",
        tagalog: "hayop",
        ilocano: "animal",
        pangasinense: "ayayep"
    ),
    Word(
        english: "beatitude",
        tagalog: "pagpapala",
        ilocano: "bendision",
        pangasinense: "bendisyon"
    ),
    Word(
        english: "beautiful",
        tagalog: "maganda",
        ilocano: "napintas",
        pangasinense: "marakdakep"
    ),
    Word(
        english: "because",
        tagalog: "dahil",
        ilocano: "gapu ta",
        pangasinense: "lapud"
    ),
    Word(
        english: "become",
        tagalog: "maging",
        ilocano: "uray",
        pangasinense: "anggan"
    ),
    Word(
        english: "bed",
        tagalog: "kama",
        ilocano: "kama",
        pangasinense: "katri"
    ),
    Word(
        english: "bedbug",
        tagalog: "kuto",
        ilocano: "agkukutel",
        pangasinense: "saray ulsa"
    ),
    Word(
        english: "bee",
        tagalog: "bubuyog",
        ilocano: "dagiti uyokan",
        pangasinense: "abe abe"
    ),
    Word(
        english: "beef",
        tagalog: "baka",
        ilocano: "baka",
        pangasinense: "baka"
    ),
    Word(
        english: "beetle",
        tagalog: "alitaptap",
        ilocano: "abbong",
        pangasinense: "alipatap"
    ),
    Word(
        english: "before",
        tagalog: "bago",
        ilocano: "baro",
        pangasinense: "balon"
    ),
    Word(
        english: "beg",
        tagalog: "mamalimos",
        ilocano: "agpalpalimos",
        pangasinense: "mikakasi"
    ),
    Word(
        english: "beggar",
        tagalog: "pulubi",
        ilocano: "agkukutel",
        pangasinense: "panama"
    ),
    Word(
        english: "begin",
        tagalog: "magsimula",
        ilocano: "mangrugi",
        pangasinense: "onggapo"
    ),
    Word(
        english: "begsay",
        tagalog: "magsalita",
        ilocano: "agsao",
        pangasinense: "mansalita"
    ),
    Word(
        english: "behave",
        tagalog: "umasal",
        ilocano: "agtulnog",
        pangasinense: "ugali"
    ),
    Word(
        english: "behind",
        tagalog: "sa likod",
        ilocano: "iti likudan",
        pangasinense: "diad beneg"
    ),
    Word(
        english: "being",
        tagalog: "pagkakakilanlan",
        ilocano: "kinasiasino",
        pangasinense: "id"
    ),
    Word(
        english: "believe",
        tagalog: "maniwala",
        ilocano: "mamati",
        pangasinense: "manisia"
    ),
    Word(
        english: "bellow",
        tagalog: "umungol",
        ilocano: "agul-ul-ulbod",
        pangasinense: "manngesnges"
    ),
    Word(
        english: "belly",
        tagalog: "tiyan",
        ilocano: "ti tian",
        pangasinense: "eges"
    ),
    Word(
        english: "below",
        tagalog: "sa ilalim",
        ilocano: "iti baba",
        pangasinense: "diad leksab"
    ),
    Word(
        english: "belt",
        tagalog: "sinturon",
        ilocano: "sinturon",
        pangasinense: "sinturon"
    ),
    Word(
        english: "bend",
        tagalog: "yumuko",
        ilocano: "agpakleb",
        pangasinense: "ontalimukor"
    ),
    Word(
        english: "beneath",
        tagalog: "sa ilalim",
        ilocano: "iti baba",
        pangasinense: "diad leksab"
    ),
    Word(
        english: "beget",
        tagalog: "mag-anak",
        ilocano: "agassawa",
        pangasinense: "walay pamilya"
    ),
    Word(
        english: "bequeath",
        tagalog: "ipamana",
        ilocano: "ipana",
        pangasinense: "ipapan"
    ),
    Word(
        english: "beseech",
        tagalog: "pakiusap",
        ilocano: "pangngaasim",
        pangasinense: "ipangasin"
    ),
    Word(
        english: "beside",
        tagalog: "tabi",
        ilocano: "iti bangir",
        pangasinense: "ed gilig"
    ),
    Word(
        english: "best",
        tagalog: "pinakamahusay",
        ilocano: "ti kasayaatan",
        pangasinense: "sankaabigan"
    ),
    Word(
        english: "bet",
        tagalog: "taya",
        ilocano: "ti taya",
        pangasinense: "tan"
    ),
    Word(
        english: "betray",
        tagalog: "magkanulo",
        ilocano: "mangliliput",
        pangasinense: "agmanmatoor"
    ),
    Word(
        english: "better",
        tagalog: "mas mabuti",
        ilocano: "Nasaysayaat",
        pangasinense: "mas maong ni"
    ),
    Word(
        english: "between",
        tagalog: "sa pagitan",
        ilocano: "iti nagbaetan",
        pangasinense: "diad baetan"
    ),
    Word(
        english: "beyond",
        tagalog: "lampas",
        ilocano: "iti labes",
        pangasinense: "nen"
    ),
    Word(
        english: "Bible",
        tagalog: "Bibliya",
        ilocano: "Biblia",
        pangasinense: "Biblia"
    ),
    Word(
        english: "big",
        tagalog: "malaki",
        ilocano: "dakkel",
        pangasinense: "baleg"
    ),
    Word(
        english: "bigamy",
        tagalog: "bigami",
        ilocano: "nagadu",
        pangasinense: "mangagawa"
    ),
    Word(
        english: "bill",
        tagalog: "resibo",
        ilocano: "resibo",
        pangasinense: "resibo"
    ),
    Word(
        english: "bind",
        tagalog: "itali",
        ilocano: "itali",
        pangasinense: "italiko"
    ),
    Word(
        english: "bird",
        tagalog: "ibon",
        ilocano: "billit",
        pangasinense: "manok"
    ),
    Word(
        english: "birth",
        tagalog: "kapanganakan",
        ilocano: "pannakaipasngay",
        pangasinense: "inkiyanak"
    ),
    Word(
        english: "birthday",
        tagalog: "kaarawan",
        ilocano: "aldaw ti pannakayanak",
        pangasinense: "birthday"
    ),
    Word(
        english: "birthmark",
        tagalog: "marka ng kapanganakan",
        ilocano: "marka ti pannakayanak",
        pangasinense: "marka na inkiyanak"
    ),
    Word(
        english: "bit",
        tagalog: "kagat",
        ilocano: "agkagat",
        pangasinense: "kagat"
    ),
    Word(
        english: "bite",
        tagalog: "kagat",
        ilocano: "agkagat",
        pangasinense: "kagat"
    ),
    Word(
        english: "bitter",
        tagalog: "mapait",
        ilocano: "nasakit",
        pangasinense: "ansakit"
    ),
    Word(
        english: "black",
        tagalog: "itim",
        ilocano: "nangisit",
        pangasinense: "andeket"
    ),
    Word(
        english: "bladder",
        tagalog: "pantog",
        ilocano: "agkurkuridem",
        pangasinense: "tan"
    ),
    Word(
        english: "blade",
        tagalog: "talim",
        ilocano: "agmalmalem",
        pangasinense: "tan"
    ),
    Word(
        english: "blame",
        tagalog: "sisihin",
        ilocano: "pammabasol",
        pangasinense: "naako"
    ),
    Word(
        english: "blanket",
        tagalog: "kumot",
        ilocano: "kumot",
        pangasinense: "abel"
    ),
    Word(
        english: "blaze",
        tagalog: "apoy",
        ilocano: "apuy",
        pangasinense: "apoy"
    ),
    Word(
        english: "bleed",
        tagalog: "dumugo",
        ilocano: "agpadpadara",
        pangasinense: "manpaparala"
    ),
    Word(
        english: "blind",
        tagalog: "bulag",
        ilocano: "bulsek",
        pangasinense: "bulag"
    ),
    Word(
        english: "blister",
        tagalog: "paltos",
        ilocano: "paltos",
        pangasinense: "pantalon"
    ),
    Word(
        english: "blood",
        tagalog: "dugo",
        ilocano: "dara",
        pangasinense: "dala"
    ),
    Word(
        english: "blow",
        tagalog: "hampas",
        ilocano: "a napuskol",
        pangasinense: "nalaylay"
    ),
    Word(
        english: "blue",
        tagalog: "asul",
        ilocano: "asul",
        pangasinense: "asul"
    ),
    Word(
        english: "blush",
        tagalog: "pamumula",
        ilocano: "naggapuan",
        pangasinense: "nanlapuan"
    ),
    Word(
        english: "board",
        tagalog: "board",
        ilocano: "board",
        pangasinense: "board"
    ),
    Word(
        english: "boat",
        tagalog: "bangka",
        ilocano: "barangay",
        pangasinense: "baloto"
    ),
    Word(
        english: "body",
        tagalog: "katawan",
        ilocano: "bagi",
        pangasinense: "laman"
    ),
    Word(
        english: "boil",
        tagalog: "kumulo",
        ilocano: "kumulo",
        pangasinense: "agmakalkalna"
    ),
    Word(
        english: "bold",
        tagalog: "matatag",
        ilocano: "natibker",
        pangasinense: "mabiskeg"
    ),
    Word(
        english: "bolt",
        tagalog: "bolt",
        ilocano: "baut",
        pangasinense: "bolt"
    ),
    Word(
        english: "bone",
        tagalog: "buto",
        ilocano: "tulang",
        pangasinense: "pukel"
    ),
    Word(
        english: "book",
        tagalog: "libro",
        ilocano: "libro",
        pangasinense: "libro"
    ),
    Word(
        english: "border",
        tagalog: "hangganan",
        ilocano: "ketegan",
        pangasinense: "ketegan"
    ),
    Word(
        english: "born",
        tagalog: "isinilang",
        ilocano: "naipasngay",
        pangasinense: "inyanak"
    ),
    Word(
        english: "broom",
        tagalog: "walis",
        ilocano: "agkurkuridem",
        pangasinense: "aliw"
    ),
    Word(
        english: "borrow",
        tagalog: "manghiram",
        ilocano: "ag-borrow",
        pangasinense: "mangaliw"
    ),
    Word(
        english: "boss",
        tagalog: "amo",
        ilocano: "amo",
        pangasinense: "say amo"
    ),
    Word(
        english: "both",
        tagalog: "pareho",
        ilocano: "agpadpada",
        pangasinense: "pareho"
    ),
    Word(
        english: "bottom",
        tagalog: "ilalim",
        ilocano: "baba",
        pangasinense: "diad leksab"
    ),
    Word(
        english: "bounce",
        tagalog: "tumalon",
        ilocano: "agsalto",
        pangasinense: "ontaboy"
    ),
    Word(
        english: "bow",
        tagalog: "busog",
        ilocano: "napno",
        pangasinense: "napno"
    ),
    Word(
        english: "bowl",
        tagalog: "mangkok",
        ilocano: "mangkok",
        pangasinense: "mangkok"
    ),
    Word(
        english: "bowlegged",
        tagalog: "bowlegged",
        ilocano: "bowlegged",
        pangasinense: "bowlegged"
    ),
    Word(
        english: "boy",
        tagalog: "batang lalaki",
        ilocano: "ubing a lalaki",
        pangasinense: "ugaw a laki"
    ),
    Word(
        english: "brace",
        tagalog: "brace",
        ilocano: "brace",
        pangasinense: "brace"
    ),
    Word(
        english: "brain",
        tagalog: "utak",
        ilocano: "utek",
        pangasinense: "utek"
    ),
    Word(
        english: "brave",
        tagalog: "matatag",
        ilocano: "natibker",
        pangasinense: "mabiskeg"
    ),
    Word(
        english: "branch",
        tagalog: "sanga",
        ilocano: "sanga",
        pangasinense: "sanga"
    ),
    Word(
        english: "brass",
        tagalog: "tanso",
        ilocano: "gambang",
        pangasinense: "tanso"
    ),
    Word(
        english: "bread",
        tagalog: "tinapay",
        ilocano: "tinapay",
        pangasinense: "tinapay"
    ),
    Word(
        english: "break",
        tagalog: "sirain",
        ilocano: "dadaelen",
        pangasinense: "deralen"
    ),
    Word(
        english: "breakfast",
        tagalog: "almusal",
        ilocano: "pangngaldaw",
        pangasinense: "pang-almusal"
    ),
    Word(
        english: "breastbone",
        tagalog: "buto ng dibdib",
        ilocano: "tulang ti barukong",
        pangasinense: "pukel na pagew"
    ),
    Word(
        english: "breathe",
        tagalog: "huminga",
        ilocano: "panaganges",
        pangasinense: "oningas"
    ),
    Word(
        english: "bride",
        tagalog: "nobya",
        ilocano: "nobia",
        pangasinense: "nobya"
    ),
    Word(
        english: "bridegroom",
        tagalog: "bagong kasal",
        ilocano: "baro a panagkasar",
        pangasinense: "balon kasal"
    ),
    Word(
        english: "bridge",
        tagalog: "tulay",
        ilocano: "rangtay",
        pangasinense: "taytay"
    ),
    Word(
        english: "bridle",
        tagalog: "pang-uhog",
        ilocano: "agig-iggem",
        pangasinense: "panag-inom"
    ),
    Word(
        english: "bright",
        tagalog: "maliwanag",
        ilocano: "nalawag",
        pangasinense: "malinew"
    ),
    Word(
        english: "brim",
        tagalog: "gilid",
        ilocano: "bangir",
        pangasinense: "ed gilig"
    ),
    Word(
        english: "bring",
        tagalog: "dalhin",
        ilocano: "mangala",
        pangasinense: "mangawit"
    ),
    Word(
        english: "broad",
        tagalog: "malapad",
        ilocano: "nalawa",
        pangasinense: "balbaleg"
    ),
    Word(
        english: "broken",
        tagalog: "nasira",
        ilocano: "nadadael",
        pangasinense: "aderal"
    ),
    Word(
        english: "brook",
        tagalog: "batis",
        ilocano: "karayan",
        pangasinense: "ilog"
    ),
    Word(
        english: "brother",
        tagalog: "kapatid",
        ilocano: "kabsat",
        pangasinense: "agagi"
    ),
    Word(
        english: "brow",
        tagalog: "kilay",
        ilocano: "aginggat'",
        pangasinense: "kilay"
    ),
    Word(
        english: "brown",
        tagalog: "kayumanggi",
        ilocano: "brown",
        pangasinense: "manga"
    ),
    Word(
        english: "bruise",
        tagalog: "pasa",
        ilocano: "pasa",
        pangasinense: "pasaway"
    ),
    Word(
        english: "brush",
        tagalog: "sipilyo",
        ilocano: "sibilian",
        pangasinense: "sibilyan"
    ),
    Word(
        english: "brutal",
        tagalog: "brutal",
        ilocano: "naranggas",
        pangasinense: "maruksa"
    ),
    Word(
        english: "bubble",
        tagalog: "bula",
        ilocano: "bulong",
        pangasinense: "bulong"
    ),
    Word(
        english: "bucket",
        tagalog: "timba",
        ilocano: "timba",
        pangasinense: "timba"
    ),
    Word(
        english: "buffalo",
        tagalog: "kalabaw",
        ilocano: "ti rabaw",
        pangasinense: "kalawakan"
    ),
    Word(
        english: "bug",
        tagalog: "insekto",
        ilocano: "insekto",
        pangasinense: "insekto"
    ),
    Word(
        english: "build",
        tagalog: "itayo",
        ilocano: "maipatakder",
        pangasinense: "ipaalagey"
    ),
    Word(
        english: "bulge",
        tagalog: "bukol",
        ilocano: "bulong",
        pangasinense: "bukol"
    ),
    Word(
        english: "bull",
        tagalog: "toro",
        ilocano: "toro",
        pangasinense: "toro"
    ),
    Word(
        english: "bump",
        tagalog: "bunton",
        ilocano: "bunton",
        pangasinense: "saray bunton"
    ),
    Word(
        english: "bundle",
        tagalog: "pakete",
        ilocano: "pakete",
        pangasinense: "pakete"
    ),
    Word(
        english: "burden",
        tagalog: "pasanin",
        ilocano: "mangpabaklay",
        pangasinense: "ambelat"
    ),
    Word(
        english: "burn",
        tagalog: "sunugin",
        ilocano: "puoran",
        pangasinense: "poolan"
    ),
    Word(
        english: "burry",
        tagalog: "burahin",
        ilocano: "ikkaten",
        pangasinense: "ekalen"
    ),
    Word(
        english: "business",
        tagalog: "negosyo",
        ilocano: "negosio",
        pangasinense: "negosyo"
    ),
    Word(
        english: "busy",
        tagalog: "abala",
        ilocano: "okupado",
        pangasinense: "busy"
    ),
    Word(
        english: "but",
        tagalog: "ngunit",
        ilocano: "ngem",
        pangasinense: "balet"
    ),
    Word(
        english: "butterfly",
        tagalog: "paru-paro",
        ilocano: "agkakapsut",
        pangasinense: "mansasakit"
    ),
    Word(
        english: "buy",
        tagalog: "bumili",
        ilocano: "gumatang",
        pangasinense: "mansaliw"
    ),
    Word(
        english: "by",
        tagalog: "sa",
        ilocano: "iti",
        pangasinense: "ed"
    ),
    Word(
        english: "cacique",
        tagalog: "cacique",
        ilocano: "ti cacique",
        pangasinense: "cacique"
    ),
    Word(
        english: "cackle",
        tagalog: "tawa",
        ilocano: "panagkatawa",
        pangasinense: "elek"
    ),
    Word(
        english: "cage",
        tagalog: "hawla",
        ilocano: "mangngalap",
        pangasinense: "kulongan"
    ),
    Word(
        english: "calf",
        tagalog: "guya",
        ilocano: "guya",
        pangasinense: "kilaw"
    ),
    Word(
        english: "call",
        tagalog: "tawag",
        ilocano: "awag",
        pangasinense: "tawagan"
    ),
    Word(
        english: "callous",
        tagalog: "matigas",
        ilocano: "natangken",
        pangasinense: "mapeget"
    ),
    Word(
        english: "calm",
        tagalog: "kalmado",
        ilocano: "kalmado",
        pangasinense: "kalmado"
    ),
    Word(
        english: "can",
        tagalog: "lata",
        ilocano: "lata",
        pangasinense: "lata"
    ),
    Word(
        english: "candy",
        tagalog: "kendi",
        ilocano: "kendi",
        pangasinense: "kendi"
    ),
    Word(
        english: "cap",
        tagalog: "takip",
        ilocano: "abbong",
        pangasinense: "sakub"
    ),
    Word(
        english: "capable",
        tagalog: "may kakayahan",
        ilocano: "a kualipikado",
        pangasinense: "nayarian"
    ),
    Word(
        english: "capital",
        tagalog: "kapital",
        ilocano: "kapitolio",
        pangasinense: "kabisera"
    ),
    Word(
        english: "captive",
        tagalog: "bihag",
        ilocano: "nakautibo",
        pangasinense: "kautibo"
    ),
    Word(
        english: "car",
        tagalog: "sasakyan",
        ilocano: "lugan",
        pangasinense: "kotse"
    ),
    Word(
        english: "carabao",
        tagalog: "kalabaw",
        ilocano: "ti rabaw",
        pangasinense: "karabaw"
    ),
    Word(
        english: "carcass",
        tagalog: "bangkay",
        ilocano: "bangkay",
        pangasinense: "bangkay"
    ),
    Word(
        english: "care",
        tagalog: "pag-aalaga",
        ilocano: "panangaywan",
        pangasinense: "panangasikaso"
    ),
    Word(
        english: "careful",
        tagalog: "maingat",
        ilocano: "naannad",
        pangasinense: "maalwar"
    ),
    Word(
        english: "careless",
        tagalog: "pabaya",
        ilocano: "panawan",
        pangasinense: "palpalaran"
    ),
    Word(
        english: "cargo",
        tagalog: "karga",
        ilocano: "karga",
        pangasinense: "karga"
    ),
    Word(
        english: "carpenter",
        tagalog: "karpintero",
        ilocano: "karpintero",
        pangasinense: "karpentero"
    ),
    Word(
        english: "carry",
        tagalog: "dalhin",
        ilocano: "mangala",
        pangasinense: "iyakar"
    ),
    Word(
        english: "cart",
        tagalog: "kart",
        ilocano: "kart",
        pangasinense: "kart"
    ),
    Word(
        english: "carve",
        tagalog: "ukit",
        ilocano: "kinitikitan",
        pangasinense: "panag-ukit"
    ),
    Word(
        english: "casket",
        tagalog: "kabaong",
        ilocano: "kahon",
        pangasinense: "lungon"
    ),
    Word(
        english: "cast",
        tagalog: "cast",
        ilocano: "cast",
        pangasinense: "ibantak"
    ),
    Word(
        english: "cat",
        tagalog: "pusa",
        ilocano: "pusa",
        pangasinense: "pusa"
    ),
    Word(
        english: "catch",
        tagalog: "dakpin",
        ilocano: "panangtiliw",
        pangasinense: "sampat"
    ),
    Word(
        english: "catechism",
        tagalog: "katesismo",
        ilocano: "katekismo",
        pangasinense: "katekismo"
    ),
    Word(
        english: "cattle",
        tagalog: "baka",
        ilocano: "baka",
        pangasinense: "baka"
    ),
    Word(
        english: "cause",
        tagalog: "sanhi",
        ilocano: "gapu",
        pangasinense: "rason"
    ),
    Word(
        english: "cavity",
        tagalog: "butas",
        ilocano: "abut",
        pangasinense: "abot"
    ),
    Word(
        english: "cease",
        tagalog: "huminto",
        ilocano: "agsardeng",
        pangasinense: "tunda"
    ),
    Word(
        english: "ceiling",
        tagalog: "kisame",
        ilocano: "tuktok",
        pangasinense: "gubida"
    ),
    Word(
        english: "celebrate",
        tagalog: "ipagdiwang",
        ilocano: "agragragsak",
        pangasinense: "manselebra"
    ),
    Word(
        english: "celestial",
        tagalog: "makalangit",
        ilocano: "nailangitan",
        pangasinense: "mangatatawen"
    ),
    Word(
        english: "cemetery",
        tagalog: "sementeryo",
        ilocano: "sementerio",
        pangasinense: "sementeryo"
    ),
    Word(
        english: "center",
        tagalog: "sentro",
        ilocano: "sentro",
        pangasinense: "sentro"
    ),
    Word(
        english: "centipede",
        tagalog: "alupihan",
        ilocano: "alupian",
        pangasinense: "centpede"
    ),
    Word(
        english: "century",
        tagalog: "siglo",
        ilocano: "siglo",
        pangasinense: "siglo"
    ),
    Word(
        english: "ceremony",
        tagalog: "seremonya",
        ilocano: "seremonia",
        pangasinense: "ceremonya"
    ),
    Word(
        english: "chaff",
        tagalog: "ipa",
        ilocano: "ipa",
        pangasinense: "taep"
    ),
    Word(
        english: "chain",
        tagalog: "kadena",
        ilocano: "kadena",
        pangasinense: "kadena"
    ),
    Word(
        english: "chair",
        tagalog: "upuan",
        ilocano: "tugaw",
        pangasinense: "yurongan"
    ),
    Word(
        english: "challenge",
        tagalog: "hamon",
        ilocano: "karit",
        pangasinense: "angat"
    ),
    Word(
        english: "chance",
        tagalog: "tsansa",
        ilocano: "gundaway",
        pangasinense: "pankanawnawa"
    ),
    Word(
        english: "change",
        tagalog: "pagbabago",
        ilocano: "panagbalbaliw",
        pangasinense: "salatan"
    ),
    Word(
        english: "channel",
        tagalog: "kanal",
        ilocano: "kanal",
        pangasinense: "kanal"
    ),
    Word(
        english: "chapter",
        tagalog: "kabanata",
        ilocano: "kapitulo",
        pangasinense: "kapitulo"
    ),
    Word(
        english: "character",
        tagalog: "tauhan",
        ilocano: "populasion",
        pangasinense: "totoo"
    ),
    Word(
        english: "chase",
        tagalog: "habulin",
        ilocano: "mangibelleng",
        pangasinense: "usilan"
    ),
    Word(
        english: "chastise",
        tagalog: "parusahan",
        ilocano: "pannakadusa",
        pangasinense: "dusaen"
    ),
    Word(
        english: "chatter",
        tagalog: "tsismis",
        ilocano: "tsismis",
        pangasinense: "tsismis"
    ),
    Word(
        english: "cheat",
        tagalog: "mandaya",
        ilocano: "mangallilaw",
        pangasinense: "mansaol"
    ),
    Word(
        english: "cheek",
        tagalog: "pisngi",
        ilocano: "pingping",
        pangasinense: "aping"
    ),
    Word(
        english: "cheer",
        tagalog: "sigaw",
        ilocano: "agpukkaw",
        pangasinense: "oningal"
    ),
    Word(
        english: "chick",
        tagalog: "sisiw",
        ilocano: "agkukutel",
        pangasinense: "sisiw"
    ),
    Word(
        english: "chicken",
        tagalog: "manok",
        ilocano: "manok",
        pangasinense: "manok"
    ),
    Word(
        english: "chief",
        tagalog: "pinuno",
        ilocano: "lider",
        pangasinense: "lider"
    ),
    Word(
        english: "chiefly",
        tagalog: "pangunahing",
        ilocano: "kangrunaan",
        pangasinense: "manunan"
    ),
    Word(
        english: "child",
        tagalog: "bata",
        ilocano: "ubing",
        pangasinense: "anak"
    ),
    Word(
        english: "childhood",
        tagalog: "pagkabata",
        ilocano: "kinaubing",
        pangasinense: "impanugaw"
    ),
    Word(
        english: "chilly",
        tagalog: "malamig",
        ilocano: "nalamiis",
        pangasinense: "ambetel"
    ),
    Word(
        english: "chin",
        tagalog: "baba",
        ilocano: "ngiwat",
        pangasinense: "timir"
    ),
    Word(
        english: "chip",
        tagalog: "piraso",
        ilocano: "paset",
        pangasinense: "piraso"
    ),
    Word(
        english: "choice",
        tagalog: "pagpipilian",
        ilocano: "pagpilian",
        pangasinense: "napampilian"
    ),
    Word(
        english: "choke",
        tagalog: "sabik",
        ilocano: "maragsakan",
        pangasinense: "labalabay"
    ),
    Word(
        english: "choose",
        tagalog: "pumili",
        ilocano: "agpili",
        pangasinense: "manpili"
    ),
    Word(
        english: "chop",
        tagalog: "hiwa",
        ilocano: "agpespes",
        pangasinense: "puter"
    ),
    Word(
        english: "Christmas",
        tagalog: "Pasko",
        ilocano: "Krismas",
        pangasinense: "Krismas"
    ),
    Word(
        english: "church",
        tagalog: "simbahan",
        ilocano: "simbaan",
        pangasinense: "simbaan"
    ),
    Word(
        english: "circle",
        tagalog: "bilog",
        ilocano: "sirkulo",
        pangasinense: "malimpek"
    ),
    Word(
        english: "circuit",
        tagalog: "sirkito",
        ilocano: "sirkito",
        pangasinense: "sirkito"
    ),
    Word(
        english: "circumcision",
        tagalog: "pagtutuli",
        ilocano: "pannakakugit",
        pangasinense: "panagsegat"
    ),
    Word(
        english: "circumstance",
        tagalog: "kalagayan",
        ilocano: "kasasaad",
        pangasinense: "kondisyon"
    ),
    Word(
        english: "citizen",
        tagalog: "mamamayan",
        ilocano: "umili",
        pangasinense: "mibabaley"
    ),
    Word(
        english: "city",
        tagalog: "lungsod",
        ilocano: "siudad",
        pangasinense: "syudad"
    ),
    Word(
        english: "clamp",
        tagalog: "pang-ipit",
        ilocano: "pang-ipit",
        pangasinense: "sipit"
    ),
    Word(
        english: "clap",
        tagalog: "palakpak",
        ilocano: "aplausos",
        pangasinense: "palakpak"
    ),
    Word(
        english: "clatter",
        tagalog: "kalansing",
        ilocano: "kinalaing",
        pangasinense: "manngalngal"
    ),
    Word(
        english: "claw",
        tagalog: "pangil",
        ilocano: "naalas",
        pangasinense: "ngipen"
    ),
    Word(
        english: "clean",
        tagalog: "malinis",
        ilocano: "nadalus",
        pangasinense: "malinis"
    ),
    Word(
        english: "clear",
        tagalog: "malinaw",
        ilocano: "nalawag",
        pangasinense: "malinew"
    ),
    Word(
        english: "clerk",
        tagalog: "kalihim",
        ilocano: "sekretario",
        pangasinense: "sekretarya"
    ),
    Word(
        english: "clever",
        tagalog: "matalino",
        ilocano: "masirib",
        pangasinense: "marunong"
    ),
    Word(
        english: "click",
        tagalog: "klik",
        ilocano: "klik",
        pangasinense: "pindoten"
    ),
    Word(
        english: "climb",
        tagalog: "umakyat",
        ilocano: "agpangato",
        pangasinense: "ontatdang"
    ),
    Word(
        english: "cling",
        tagalog: "kumapit",
        ilocano: "agpaputok",
        pangasinense: "benbenan"
    ),
    Word(
        english: "close",
        tagalog: "malapit",
        ilocano: "asideg",
        pangasinense: "asinger"
    ),
    Word(
        english: "closet",
        tagalog: "aparador",
        ilocano: "aparador",
        pangasinense: "aparador"
    ),
    Word(
        english: "cloth",
        tagalog: "tela",
        ilocano: "tela",
        pangasinense: "abel"
    ),
    Word(
        english: "clothes",
        tagalog: "damit",
        ilocano: "kawes",
        pangasinense: "kawes"
    ),
    Word(
        english: "cloud",
        tagalog: "ulap",
        ilocano: "ulep",
        pangasinense: "lorem"
    ),
    Word(
        english: "club",
        tagalog: "club",
        ilocano: "club",
        pangasinense: "club"
    ),
    Word(
        english: "clump",
        tagalog: "bunton",
        ilocano: "bunton",
        pangasinense: "bunton"
    ),
    Word(
        english: "clumsy",
        tagalog: "walang kwenta",
        ilocano: "awan kuenta",
        pangasinense: "andi-kakanaan"
    ),
    Word(
        english: "coarse",
        tagalog: "magaspang",
        ilocano: "nabagas",
        pangasinense: "aliwan patad"
    ),
    Word(
        english: "coast",
        tagalog: "baybayin",
        ilocano: "baybay",
        pangasinense: "baybay"
    ),
    Word(
        english: "cock",
        tagalog: "tandang",
        ilocano: "pagilasinan",
        pangasinense: "manok"
    ),
    Word(
        english: "cockpit",
        tagalog: "cockpit",
        ilocano: "cockpit",
        pangasinense: "sabungan"
    ),
    Word(
        english: "cocoa",
        tagalog: "kakaw",
        ilocano: "kakaw",
        pangasinense: "kakaw"
    ),
    Word(
        english: "coffee",
        tagalog: "kape",
        ilocano: "kape",
        pangasinense: "kape"
    ),
    Word(
        english: "coin",
        tagalog: "barya",
        ilocano: "sinsilio",
        pangasinense: "sinsilyo"
    ),
    Word(
        english: "cold",
        tagalog: "malamig",
        ilocano: "nalamiis",
        pangasinense: "ambetel"
    ),
    Word(
        english: "colic",
        tagalog: "colic - colic",
        ilocano: "colic - panagtuok",
        pangasinense: "colic"
    ),
    Word(
        english: "collapse",
        tagalog: "bumagsak",
        ilocano: "bimmaba",
        pangasinense: "atumba"
    ),
    Word(
        english: "collar",
        tagalog: "kwelyo",
        ilocano: "agong",
        pangasinense: "kuwelyo"
    ),
    Word(
        english: "collect",
        tagalog: "kolektahin",
        ilocano: "agurnong",
        pangasinense: "mankolekta"
    ),
    Word(
        english: "collide",
        tagalog: "magbanggaan",
        ilocano: "agsabat",
        pangasinense: "manbanggaan"
    ),
    Word(
        english: "comb",
        tagalog: "suklay",
        ilocano: "suklay",
        pangasinense: "sagaysay"
    ),
    Word(
        english: "combine",
        tagalog: "pagsamahin",
        ilocano: "panagtipon",
        pangasinense: "ipankasakey"
    ),
    Word(
        english: "come",
        tagalog: "dumating",
        ilocano: "umay",
        pangasinense: "linma"
    ),
    Word(
        english: "comfort",
        tagalog: "komportable",
        ilocano: "komportable",
        pangasinense: "komportable"
    ),
    Word(
        english: "comforter",
        tagalog: "kumportableng",
        ilocano: "komportable",
        pangasinense: "komportable"
    ),
    Word(
        english: "comical",
        tagalog: "nakakatawa",
        ilocano: "nakakatkatawa",
        pangasinense: "makapalek"
    ),
    Word(
        english: "complete",
        tagalog: "kumpleto",
        ilocano: "kompleto",
        pangasinense: "completo"
    ),
    Word(
        english: "commandment",
        tagalog: "utos",
        ilocano: "bilin",
        pangasinense: "pian"
    ),
    Word(
        english: "commence",
        tagalog: "magsimula",
        ilocano: "mangrugi",
        pangasinense: "gapoan"
    ),
    Word(
        english: "common",
        tagalog: "karaniwan",
        ilocano: "kadawyan",
        pangasinense: "maslak"
    ),
    Word(
        english: "companion",
        tagalog: "kasama",
        ilocano: "kaduana",
        pangasinense: "saniba"
    ),
    Word(
        english: "company",
        tagalog: "kumpanya",
        ilocano: "kompania",
        pangasinense: "kumpanya"
    ),
    Word(
        english: "compare",
        tagalog: "ihambing",
        ilocano: "idilig",
        pangasinense: "ikompara"
    ),
    Word(
        english: "compassion",
        tagalog: "malasakit",
        ilocano: "maseknan",
        pangasinense: "mangaasikaso"
    ),
    Word(
        english: "compel",
        tagalog: "pilitin",
        ilocano: "panangpilit",
        pangasinense: "puersa"
    ),
    Word(
        english: "complain",
        tagalog: "magreklamo",
        ilocano: "agreklamo",
        pangasinense: "reklamo"
    ),
    Word(
        english: "complexion",
        tagalog: "kutis",
        ilocano: "kutis",
        pangasinense: "kutis"
    ),
    Word(
        english: "compliment",
        tagalog: "papuri",
        ilocano: "pammadayaw",
        pangasinense: "pandayew"
    ),
    Word(
        english: "comprehend",
        tagalog: "intindihin",
        ilocano: "naimpusuan",
        pangasinense: "atalosan"
    ),
    Word(
        english: "comrade",
        tagalog: "kasama",
        ilocano: "kaduana",
        pangasinense: "saniba"
    ),
    Word(
        english: "conceal",
        tagalog: "itago",
        ilocano: "ilemmeng",
        pangasinense: "iyamot"
    ),
    Word(
        english: "conceit",
        tagalog: "pagyayabang",
        ilocano: "panagpannakkel",
        pangasinense: "manpapasirayew"
    ),
    Word(
        english: "conception",
        tagalog: "konsepto",
        ilocano: "konsepto",
        pangasinense: "kanonotan"
    ),
    Word(
        english: "concerning",
        tagalog: "ukol",
        ilocano: "para iti",
        pangasinense: "nipaakar ed"
    ),
    Word(
        english: "condemn",
        tagalog: "hatulan",
        ilocano: "pannakadusa",
        pangasinense: "ukom"
    ),
    Word(
        english: "condescend",
        tagalog: "magpakumbaba",
        ilocano: "agpakumbaba",
        pangasinense: "manpaabeba ka"
    ),
    Word(
        english: "condition",
        tagalog: "kondisyon",
        ilocano: "kasasaad",
        pangasinense: "kondisyon"
    ),
    Word(
        english: "conduct",
        tagalog: "pamunuan",
        ilocano: "panangidaulo",
        pangasinense: "liderato"
    ),
    Word(
        english: "confess",
        tagalog: "umamin",
        ilocano: "umamin",
        pangasinense: "ipaamta"
    ),
    Word(
        english: "confine",
        tagalog: "ihiwalay",
        ilocano: "naisina",
        pangasinense: "mangisian"
    ),
    Word(
        english: "confirm",
        tagalog: "kumpirmahin",
        ilocano: "mangkonpirma",
        pangasinense: "konpirma"
    ),
    Word(
        english: "conflict",
        tagalog: "hidwaan",
        ilocano: "agpadpadada",
        pangasinense: "kolkolan"
    ),
    Word(
        english: "confuse",
        tagalog: "malito",
        ilocano: "nakagulgulo",
        pangasinense: "awetwet"
    ),
    Word(
        english: "congregation",
        tagalog: "kongregasyon",
        ilocano: "kongregasion",
        pangasinense: "kongregasyon"
    ),
    Word(
        english: "conscience",
        tagalog: "konsensya",
        ilocano: "konsiensia",
        pangasinense: "konsiensia"
    ),
    Word(
        english: "consecutive",
        tagalog: "sunud-sunod",
        ilocano: "agsasaruno",
        pangasinense: "nantutumbokan"
    ),
    Word(
        english: "consent",
        tagalog: "pagsang-ayon",
        ilocano: "panagkaykaysa",
        pangasinense: "inmabuloy"
    ),
    Word(
        english: "consider",
        tagalog: "isaalang-alang",
        ilocano: "mangibilang",
        pangasinense: "nonoten"
    ),
    Word(
        english: "consistent",
        tagalog: "pare-pareho",
        ilocano: "agpapada",
        pangasinense: "naynay"
    ),
    Word(
        english: "consolation",
        tagalog: "aliw",
        ilocano: "agragsak",
        pangasinense: "ligliwa"
    ),
    Word(
        english: "conspicuous",
        tagalog: "kapansin-pansin",
        ilocano: "nakaskasdaaw",
        pangasinense: "makatantanda"
    ),
    Word(
        english: "constant",
        tagalog: "pare-pareho",
        ilocano: "agpapada",
        pangasinense: "naynay"
    ),
    Word(
        english: "constipation",
        tagalog: "constipation",
        ilocano: "pannakagawid",
        pangasinense: "constipation"
    ),
    Word(
        english: "consult",
        tagalog: "kumonsulta",
        ilocano: "agkonsulta",
        pangasinense: "mitongtong"
    ),
    Word(
        english: "consume",
        tagalog: "ubusin",
        ilocano: "mangibus",
        pangasinense: "upoten"
    ),
    Word(
        english: "contain",
        tagalog: "naglalaman",
        ilocano: "naglaon",
        pangasinense: "karga"
    ),
    Word(
        english: "content",
        tagalog: "nilalaman",
        ilocano: "linaon",
        pangasinense: "karga"
    ),
    Word(
        english: "contest",
        tagalog: "kumpetisyon",
        ilocano: "kompetision",
        pangasinense: "kompetisyon"
    ),
    Word(
        english: "continue",
        tagalog: "magpatuloy",
        ilocano: "ituloy",
        pangasinense: "ituloy"
    ),
    Word(
        english: "contradict",
        tagalog: "sumalungat",
        ilocano: "di agtutunos",
        pangasinense: "onsumpa"
    ),
    Word(
        english: "contrary",
        tagalog: "kabaligtaran",
        ilocano: "ti kasumbangirna",
        pangasinense: "say kabaliktaran"
    ),
    Word(
        english: "contribute",
        tagalog: "mag-ambag",
        ilocano: "agdonar",
        pangasinense: "mangiter"
    ),
    Word(
        english: "control",
        tagalog: "kontrolin",
        ilocano: "kontrolen",
        pangasinense: "kontrol"
    ),
    Word(
        english: "convenient",
        tagalog: "maginhawa",
        ilocano: "komportable",
        pangasinense: "kombeniente"
    ),
    Word(
        english: "conversation",
        tagalog: "pag-uusap",
        ilocano: "pannakisarita",
        pangasinense: "tongtongan"
    ),
    Word(
        english: "convert",
        tagalog: "i-convert",
        ilocano: "i-convert",
        pangasinense: "manpakomberte"
    ),
    Word(
        english: "convince",
        tagalog: "kumbinsihin",
        ilocano: "makombinsir",
        pangasinense: "kombinsien"
    ),
    Word(
        english: "convulsion",
        tagalog: "pagsasakit",
        ilocano: "sakit",
        pangasinense: "mansasakit"
    ),
    Word(
        english: "cook",
        tagalog: "magluto",
        ilocano: "agluto",
        pangasinense: "manluto"
    ),
    Word(
        english: "cool",
        tagalog: "malamig",
        ilocano: "nalamiis",
        pangasinense: "ambetel"
    ),
    Word(
        english: "coop",
        tagalog: "kooperatiba",
        ilocano: "kooperatiba",
        pangasinense: "kooperatiba"
    ),
    Word(
        english: "cord",
        tagalog: "lubid",
        ilocano: "tali",
        pangasinense: "lubir"
    ),
    Word(
        english: "cork",
        tagalog: "cork - cork",
        ilocano: "ti cork - cork",
        pangasinense: "cork"
    ),
    Word(
        english: "corner",
        tagalog: "sulok",
        ilocano: "sulok",
        pangasinense: "suyok"
    ),
    Word(
        english: "corpse",
        tagalog: "bangkay",
        ilocano: "bangkay",
        pangasinense: "bangkay"
    ),
    Word(
        english: "correct",
        tagalog: "tama",
        ilocano: "umno",
        pangasinense: "duga"
    ),
    Word(
        english: "corrupt",
        tagalog: "masira",
        ilocano: "madadael",
        pangasinense: "pian nabuyak"
    ),
    Word(
        english: "cost",
        tagalog: "halaga",
        ilocano: "pateg",
        pangasinense: "kablian"
    ),
    Word(
        english: "cotton",
        tagalog: "bulak",
        ilocano: "sabsabong",
        pangasinense: "kapes"
    ),
    Word(
        english: "cough",
        tagalog: "ubo",
        ilocano: "panagtudo",
        pangasinense: "ukok"
    ),
    Word(
        english: "count",
        tagalog: "bilangin",
        ilocano: "bilangen",
        pangasinense: "bilang"
    ),
    Word(
        english: "counterfeit",
        tagalog: "pekeng",
        ilocano: "ulbod",
        pangasinense: "palso"
    ),
    Word(
        english: "counterpane",
        tagalog: "counterpane",
        ilocano: "counterpane",
        pangasinense: "counterpane"
    ),
    Word(
        english: "countless",
        tagalog: "walang hanggan",
        ilocano: "iti agnanayon",
        pangasinense: "andi anggaan"
    ),
    Word(
        english: "country",
        tagalog: "bansa",
        ilocano: "pagilian",
        pangasinense: "bansa"
    ),
    Word(
        english: "couple",
        tagalog: "mag-asawa",
        ilocano: "agassawa",
        pangasinense: "sanasawa"
    ),
    Word(
        english: "courage",
        tagalog: "tapang",
        ilocano: "kinatured",
        pangasinense: "pakpel"
    ),
    Word(
        english: "courtship",
        tagalog: "panliligaw",
        ilocano: "pannakikamalala",
        pangasinense: "panliliket"
    ),
    Word(
        english: "cousin",
        tagalog: "pinsan",
        ilocano: "kasinsin",
        pangasinense: "kapinsan"
    ),
    Word(
        english: "cover",
        tagalog: "takpan",
        ilocano: "panangabbong",
        pangasinense: "sakub"
    ),
    Word(
        english: "covet",
        tagalog: "pagnanasa",
        ilocano: "tarigagay",
        pangasinense: "pilalek"
    ),
    Word(
        english: "coward",
        tagalog: "duwag",
        ilocano: "agkukutel",
        pangasinense: "payakot"
    ),
    Word(
        english: "crab",
        tagalog: "alimango",
        ilocano: "agkagat",
        pangasinense: "alama"
    ),
    Word(
        english: "crack",
        tagalog: "bitak",
        ilocano: "abut",
        pangasinense: "letak"
    ),
    Word(
        english: "cradle",
        tagalog: "duyan",
        ilocano: "a pagiddaan",
        pangasinense: "dukolan"
    ),
    Word(
        english: "cramp",
        tagalog: "cramp - cramp",
        ilocano: "cramp - agkurkurkurong",
        pangasinense: "cramps"
    ),
    Word(
        english: "crank",
        tagalog: "crank - crank",
        ilocano: "crank - crank",
        pangasinense: "crank"
    ),
    Word(
        english: "crawfish",
        tagalog: "alimango",
        ilocano: "agkagat",
        pangasinense: "alama"
    ),
    Word(
        english: "crawl",
        tagalog: "gumapang",
        ilocano: "mangmangged",
        pangasinense: "onkurong"
    ),
    Word(
        english: "crazy",
        tagalog: "baliw",
        ilocano: "agmauyong",
        pangasinense: "ambagel"
    ),
    Word(
        english: "crease",
        tagalog: "tiklop",
        ilocano: "agkakapet",
        pangasinense: "tupien"
    ),
    Word(
        english: "creator",
        tagalog: "tagalikha",
        ilocano: "nangparsua",
        pangasinense: "manamalsa"
    ),
    Word(
        english: "creed",
        tagalog: "credo",
        ilocano: "pammati",
        pangasinense: "Manisia ak"
    ),
    Word(
        english: "creek",
        tagalog: "batis",
        ilocano: "karayan",
        pangasinense: "ilog"
    ),
    Word(
        english: "crib",
        tagalog: "duyan",
        ilocano: "a pagiddaan",
        pangasinense: "dukolan"
    ),
    Word(
        english: "cricket",
        tagalog: "cricket - cricket",
        ilocano: "kriket - kriket",
        pangasinense: "kuliglig"
    ),
    Word(
        english: "cripple",
        tagalog: "pilay",
        ilocano: "agkakapsut",
        pangasinense: "makapuy"
    ),
    Word(
        english: "crocks",
        tagalog: "crocks - crocks",
        ilocano: "ti crocks - ti crocks",
        pangasinense: "plato"
    ),
    Word(
        english: "crockery",
        tagalog: "porselana",
        ilocano: "porselana",
        pangasinense: "porselana"
    ),
    Word(
        english: "crocodile",
        tagalog: "buaya",
        ilocano: "buaya",
        pangasinense: "buaya"
    ),
    Word(
        english: "crooked",
        tagalog: "baluktot",
        ilocano: "Nailing",
        pangasinense: "pikewet"
    ),
    Word(
        english: "crop",
        tagalog: "tanim",
        ilocano: "mulmula",
        pangasinense: "itanem"
    ),
    Word(
        english: "cross",
        tagalog: "krus",
        ilocano: "krus",
        pangasinense: "binmeltang"
    ),
    Word(
        english: "crotch",
        tagalog: "pagitan ng hita",
        ilocano: "nagbaetan ti ladawan",
        pangasinense: "diad baetan na saray pueg"
    ),
    Word(
        english: "crouch",
        tagalog: "yumuko",
        ilocano: "agpakleb",
        pangasinense: "onyuko"
    ),
    Word(
        english: "crowd",
        tagalog: "karamihan",
        ilocano: "kaaduan",
        pangasinense: "maslak"
    ),
    Word(
        english: "crucify",
        tagalog: "ipako",
        ilocano: "ipako",
        pangasinense: "kuko"
    ),
    Word(
        english: "cruel",
        tagalog: "malupit",
        ilocano: "naulpit",
        pangasinense: "maruksa"
    ),
    Word(
        english: "cry",
        tagalog: "iyak",
        ilocano: "agsangit",
        pangasinense: "akis"
    ),
    Word(
        english: "cultivate",
        tagalog: "palaguin",
        ilocano: "ituloy",
        pangasinense: "umbaleg"
    ),
    Word(
        english: "cunning",
        tagalog: "tuso",
        ilocano: "panangallilaw",
        pangasinense: "masilib"
    ),
    Word(
        english: "cup",
        tagalog: "tasa",
        ilocano: "tasa",
        pangasinense: "kopa"
    ),
    Word(
        english: "curdle",
        tagalog: "mag-curdle",
        ilocano: "ag-curdle",
        pangasinense: "mankulong"
    ),
    Word(
        english: "cure",
        tagalog: "lunas",
        ilocano: "solusion",
        pangasinense: "remedyo"
    ),
    Word(
        english: "curious",
        tagalog: "mausisa",
        ilocano: "mausig",
        pangasinense: "interesado"
    ),
    Word(
        english: "current",
        tagalog: "kasalukuyan",
        ilocano: "agdama",
        pangasinense: "natan"
    ),
    Word(
        english: "curse",
        tagalog: "sumpa",
        ilocano: "ti lunod",
        pangasinense: "ayew"
    ),
    Word(
        english: "curtain",
        tagalog: "kurtina",
        ilocano: "kurtina",
        pangasinense: "kurtina"
    ),
    Word(
        english: "custom",
        tagalog: "ugali",
        ilocano: "kababalin",
        pangasinense: "awaey"
    ),
    Word(
        english: "cut",
        tagalog: "putulin",
        ilocano: "ikkaten",
        pangasinense: "putoten"
    ),
    Word(
        english: "cute",
        tagalog: "cute",
        ilocano: "napintas",
        pangasinense: "masanting"
    ),
    Word(
        english: "daily",
        tagalog: "araw-araw",
        ilocano: "aldaw-aldaw",
        pangasinense: "agew-agew"
    ),
    Word(
        english: "damage",
        tagalog: "pinsala",
        ilocano: "dakes",
        pangasinense: "aderal"
    ),
    Word(
        english: "damp",
        tagalog: "basa",
        ilocano: "nabasa",
        pangasinense: "basa"
    ),
    Word(
        english: "dance",
        tagalog: "sayaw",
        ilocano: "sayaw",
        pangasinense: "sayaw"
    ),
    Word(
        english: "dark",
        tagalog: "madilim",
        ilocano: "nadagsen",
        pangasinense: "ambilunget"
    ),
    Word(
        english: "darkness",
        tagalog: "kadiliman",
        ilocano: "nadagsen a rabi",
        pangasinense: "kabilungetan"
    ),
    Word(
        english: "darn",
        tagalog: "sumpa",
        ilocano: "sumpa",
        pangasinense: "sumpaen"
    ),
    Word(
        english: "date",
        tagalog: "petsa",
        ilocano: "petsa",
        pangasinense: "petsa"
    ),
    Word(
        english: "dawn",
        tagalog: "bukang-liwayway",
        ilocano: "agsapa",
        pangasinense: "kabuasan"
    ),
    Word(
        english: "day",
        tagalog: "araw",
        ilocano: "aldaw",
        pangasinense: "agew"
    ),
    Word(
        english: "dead",
        tagalog: "patay",
        ilocano: "patay",
        pangasinense: "inatey"
    ),
    Word(
        english: "deaf",
        tagalog: "bingi",
        ilocano: "bingi",
        pangasinense: "telek"
    ),
    Word(
        english: "dear",
        tagalog: "mahal",
        ilocano: "mahal",
        pangasinense: "pinabpabli"
    ),
    Word(
        english: "death",
        tagalog: "kamatayan",
        ilocano: "kamatayan",
        pangasinense: "patey"
    ),
    Word(
        english: "debate",
        tagalog: "debate",
        ilocano: "debate",
        pangasinense: "debate"
    ),
    Word(
        english: "debt",
        tagalog: "utang",
        ilocano: "utang",
        pangasinense: "utang"
    ),
    Word(
        english: "debtor",
        tagalog: "nangutang",
        ilocano: "nangutang",
        pangasinense: "inutang"
    ),
    Word(
        english: "decay",
        tagalog: "pagkalugi",
        ilocano: "nabati",
        pangasinense: "lugi"
    ),
    Word(
        english: "deceive",
        tagalog: "linlangin",
        ilocano: "aglinlang",
        pangasinense: "manloko"
    ),
    Word(
        english: "December",
        tagalog: "Disyembre",
        ilocano: "Disiembre",
        pangasinense: "Disyembre"
    ),
    Word(
        english: "decent",
        tagalog: "disenteng",
        ilocano: "nasayaat",
        pangasinense: "desente"
    ),
    Word(
        english: "decide",
        tagalog: "magpasya",
        ilocano: "mangpili",
        pangasinense: "mandesisyon"
    ),
    Word(
        english: "declare",
        tagalog: "ideklara",
        ilocano: "ipahayag",
        pangasinense: "ideklara"
    ),
    Word(
        english: "decoration",
        tagalog: "dekorasyon",
        ilocano: "dekorasyon",
        pangasinense: "dekorasyon"
    ),
    Word(
        english: "decree",
        tagalog: "utos",
        ilocano: "utos",
        pangasinense: "man-order"
    ),
    Word(
        english: "dedicated",
        tagalog: "nakatuon",
        ilocano: "nakatulong",
        pangasinense: "komitido"
    ),
    Word(
        english: "deed",
        tagalog: "gawa",
        ilocano: "aramid",
        pangasinense: "gawa"
    ),
    Word(
        english: "deep",
        tagalog: "malalim",
        ilocano: "nalukmeg",
        pangasinense: "aralem"
    ),
    Word(
        english: "deer",
        tagalog: "usa",
        ilocano: "usa",
        pangasinense: "usa"
    ),
    Word(
        english: "defend",
        tagalog: "ipagtanggol",
        ilocano: "ipagtanggol",
        pangasinense: "idepensa"
    ),
    Word(
        english: "defile",
        tagalog: "dungisan",
        ilocano: "magkadungis",
        pangasinense: "panagdutak"
    ),
    Word(
        english: "definite",
        tagalog: "tiyak",
        ilocano: "nasayaat",
        pangasinense: "seguradon"
    ),
    Word(
        english: "delay",
        tagalog: "pagkaantala",
        ilocano: "pagpatagil",
        pangasinense: "atrasado"
    ),
    Word(
        english: "delegate",
        tagalog: "delegado",
        ilocano: "delegado",
        pangasinense: "iter"
    ),
    Word(
        english: "delight",
        tagalog: "kasiyahan",
        ilocano: "ragsak",
        pangasinense: "inkapnek"
    ),
    Word(
        english: "deliver",
        tagalog: "ihatid",
        ilocano: "iwarwar",
        pangasinense: "mangiter"
    ),
    Word(
        english: "deluge",
        tagalog: "pagbaha",
        ilocano: "pagbaha",
        pangasinense: "delap"
    ),
    Word(
        english: "demonstrate",
        tagalog: "ipakita",
        ilocano: "ipakit",
        pangasinense: "ipanengneng"
    ),
    Word(
        english: "deny",
        tagalog: "tanggihan",
        ilocano: "tanggihan",
        pangasinense: "ag-ontulok"
    ),
    Word(
        english: "depart",
        tagalog: "umalis",
        ilocano: "umalis",
        pangasinense: "ontaynan"
    ),
    Word(
        english: "deprave",
        tagalog: "magpahina",
        ilocano: "magpa-kurang",
        pangasinense: "onkapuy"
    ),
    Word(
        english: "deprived",
        tagalog: "kulang",
        ilocano: "nakurang",
        pangasinense: "kulang"
    ),
    Word(
        english: "descend",
        tagalog: "bumaba",
        ilocano: "bumaba",
        pangasinense: "onleksab"
    ),
    Word(
        english: "describe",
        tagalog: "ilarawan",
        ilocano: "iladawan",
        pangasinense: "deskribien"
    ),
    Word(
        english: "desired",
        tagalog: "nais",
        ilocano: "kayāt",
        pangasinense: "labay"
    ),
    Word(
        english: "desolate",
        tagalog: "desolado",
        ilocano: "awan ti tao",
        pangasinense: "maermen"
    ),
    Word(
        english: "despair",
        tagalog: "kawalang pag-asa",
        ilocano: "kawalang pag-asa",
        pangasinense: "inkaandi-ilalo"
    ),
    Word(
        english: "destroy",
        tagalog: "sirain",
        ilocano: "sirib",
        pangasinense: "deralen"
    ),
    Word(
        english: "destruction",
        tagalog: "pagkawasak",
        ilocano: "kasurutan",
        pangasinense: "panagderal"
    ),
    Word(
        english: "determined",
        tagalog: "determinado",
        ilocano: "determinado",
        pangasinense: "determinado"
    ),
    Word(
        english: "develop",
        tagalog: "umunlad",
        ilocano: "umunlad",
        pangasinense: "onaligwas"
    ),
    Word(
        english: "devil",
        tagalog: "diyablo",
        ilocano: "demonyo",
        pangasinense: "demonyo"
    ),
    Word(
        english: "devise",
        tagalog: "magplano",
        ilocano: "agplano",
        pangasinense: "plano"
    ),
    Word(
        english: "devour",
        tagalog: "lamunin",
        ilocano: "lamonen",
        pangasinense: "akmonen"
    ),
    Word(
        english: "dew",
        tagalog: "hamog",
        ilocano: "hamog",
        pangasinense: "lurem"
    ),
    Word(
        english: "diarrhea",
        tagalog: "pagtatae",
        ilocano: "pagtatae",
        pangasinense: "panag-atake"
    ),
    Word(
        english: "died",
        tagalog: "namatay",
        ilocano: "namatay",
        pangasinense: "inatey"
    ),
    Word(
        english: "differ",
        tagalog: "magkaiba",
        ilocano: "agkaibang",
        pangasinense: "duma"
    ),
    Word(
        english: "difference",
        tagalog: "pagkakaiba",
        ilocano: "pagkakaiba",
        pangasinense: "pandumaan"
    ),
    Word(
        english: "difficult",
        tagalog: "mahirap",
        ilocano: "narigat",
        pangasinense: "mairap"
    ),
    Word(
        english: "dig",
        tagalog: "maghukay",
        ilocano: "aghukay",
        pangasinense: "mankotkot"
    ),
    Word(
        english: "digest",
        tagalog: "tunawin",
        ilocano: "tunawin",
        pangasinense: "natunaw"
    ),
    Word(
        english: "diligent",
        tagalog: "masigasig",
        ilocano: "masigasig",
        pangasinense: "maseseg"
    ),
    Word(
        english: "dim",
        tagalog: "malabo",
        ilocano: "naal-alin",
        pangasinense: "aliwan malinew"
    ),
    Word(
        english: "dimple",
        tagalog: "ngiti",
        ilocano: "ngiti",
        pangasinense: "imis"
    ),
    Word(
        english: "dip",
        tagalog: "ibabad",
        ilocano: "ibabao",
        pangasinense: "ibabad"
    ),
    Word(
        english: "direct",
        tagalog: "tuwid",
        ilocano: "tuwid",
        pangasinense: "diretso"
    ),
    Word(
        english: "dirt",
        tagalog: "lupa",
        ilocano: "daga",
        pangasinense: "dalin"
    ),
    Word(
        english: "dirty",
        tagalog: "marumi",
        ilocano: "nadumaduma",
        pangasinense: "marutak"
    ),
    Word(
        english: "disagree",
        tagalog: "hindi magkasundo",
        ilocano: "saan nga agkikinnulungan",
        pangasinense: "ag mipakna"
    ),
    Word(
        english: "disapprove",
        tagalog: "hindi aprubahan",
        ilocano: "saan nga maaprubahan",
        pangasinense: "ag-abobonan"
    ),
    Word(
        english: "disciple",
        tagalog: "disipulo",
        ilocano: "disipulo",
        pangasinense: "babangatan"
    ),
    Word(
        english: "disciplined",
        tagalog: "disiplinado",
        ilocano: "disiplinado",
        pangasinense: "disiplinado"
    ),
    Word(
        english: "discourage",
        tagalog: "panghinaan ng loob",
        ilocano: "mapukaw ti panangidaulo",
        pangasinense: "pakadismayaan"
    ),
    Word(
        english: "discuss",
        tagalog: "pag-usapan",
        ilocano: "pag-usapan",
        pangasinense: "pantongtongan"
    ),
    Word(
        english: "disease",
        tagalog: "sakit",
        ilocano: "sakit",
        pangasinense: "ot-ot"
    ),
    Word(
        english: "dish",
        tagalog: "pinggan",
        ilocano: "pinggan",
        pangasinense: "putahe"
    ),
    Word(
        english: "dishonor",
        tagalog: "kahihiyan",
        ilocano: "kahihiyan",
        pangasinense: "kababaingan"
    ),
    Word(
        english: "disorder",
        tagalog: "kaguluhan",
        ilocano: "kaguluhan",
        pangasinense: "gulo"
    ),
    Word(
        english: "disposition",
        tagalog: "disposisyon",
        ilocano: "disposisyon",
        pangasinense: "disposisyon"
    ),
    Word(
        english: "distress",
        tagalog: "pagkalungkot",
        ilocano: "pag-asa",
        pangasinense: "depresyon"
    ),
    Word(
        english: "dive",
        tagalog: "lumubog",
        ilocano: "lumubog",
        pangasinense: "linmereg"
    ),
    Word(
        english: "divided",
        tagalog: "hati",
        ilocano: "nagda",
        pangasinense: "manbibiigan"
    ),
    Word(
        english: "divine",
        tagalog: "banal",
        ilocano: "banal",
        pangasinense: "madibinon"
    ),
    Word(
        english: "divorced",
        tagalog: "hiwalay",
        ilocano: "nagduduma",
        pangasinense: "manbibiigan"
    ),
    Word(
        english: "do",
        tagalog: "gawin",
        ilocano: "aramiden",
        pangasinense: "gawaen"
    ),
    Word(
        english: "doctor",
        tagalog: "doktor",
        ilocano: "doktor",
        pangasinense: "doktor"
    ),
    Word(
        english: "doctrine",
        tagalog: "doktrina",
        ilocano: "doktrina",
        pangasinense: "doktrina"
    ),
    Word(
        english: "dodged",
        tagalog: "iwasan",
        ilocano: "likayan",
        pangasinense: "paliisan"
    ),
    Word(
        english: "dog",
        tagalog: "aso",
        ilocano: "aso",
        pangasinense: "aso"
    ),
    Word(
        english: "doll",
        tagalog: "manika",
        ilocano: "manika",
        pangasinense: "monyeka"
    ),
    Word(
        english: "door",
        tagalog: "pinto",
        ilocano: "pinto",
        pangasinense: "puerta"
    ),
    Word(
        english: "double",
        tagalog: "doble",
        ilocano: "doble",
        pangasinense: "doble"
    ),
    Word(
        english: "doubt",
        tagalog: "duda",
        ilocano: "duda",
        pangasinense: "panduaruwa"
    ),
    Word(
        english: "dove",
        tagalog: "kalapati",
        ilocano: "kalapati",
        pangasinense: "malapati"
    ),
    Word(
        english: "down",
        tagalog: "pababa",
        ilocano: "pababa",
        pangasinense: "pababa"
    ),
    Word(
        english: "doze",
        tagalog: "matulog",
        ilocano: "maturog",
        pangasinense: "ugip"
    ),
    Word(
        english: "draw",
        tagalog: "iguhit",
        ilocano: "igugto",
        pangasinense: "idrowing"
    ),
    Word(
        english: "dream",
        tagalog: "panaginip",
        ilocano: "panaginip",
        pangasinense: "kugip"
    ),
    Word(
        english: "dress",
        tagalog: "damit",
        ilocano: "damit",
        pangasinense: "kawes"
    ),
    Word(
        english: "drink",
        tagalog: "inumin",
        ilocano: "inumen",
        pangasinense: "oninum"
    ),
    Word(
        english: "drop",
        tagalog: "ibuhos",
        ilocano: "ibus",
        pangasinense: "ibuntok"
    ),
    Word(
        english: "drought",
        tagalog: "tagtuyot",
        ilocano: "tagtuyot",
        pangasinense: "kelang"
    ),
    Word(
        english: "drunk",
        tagalog: "lasing",
        ilocano: "lasing",
        pangasinense: "buanges"
    ),
    Word(
        english: "dry",
        tagalog: "tuyo",
        ilocano: "tuyo",
        pangasinense: "amagaan"
    ),
    Word(
        english: "duck",
        tagalog: "pato",
        ilocano: "pato",
        pangasinense: "pato"
    ),
    Word(
        english: "dull",
        tagalog: "mapurol",
        ilocano: "mapurol",
        pangasinense: "makapakapuy"
    ),
    Word(
        english: "dumb",
        tagalog: "bobo",
        ilocano: "bobo",
        pangasinense: "makulangkulang"
    ),
    Word(
        english: "dung",
        tagalog: "dumi",
        ilocano: "dumi",
        pangasinense: "dutak"
    ),
    Word(
        english: "durable",
        tagalog: "matibay",
        ilocano: "nabileg",
        pangasinense: "matibay"
    ),
    Word(
        english: "dust",
        tagalog: "alikabok",
        ilocano: "alikabok",
        pangasinense: "dabok"
    ),
    Word(
        english: "duty",
        tagalog: "tungkulin",
        ilocano: "tungkulin",
        pangasinense: "obligasyon"
    ),
    Word(
        english: "dwarf",
        tagalog: "dwende",
        ilocano: "dwende",
        pangasinense: "goblin"
    ),
    Word(
      english: "ear",
      tagalog: "tainga",
      ilocano: "lapayag",
      pangasinense: "layag",
    ),
    Word(
      english: "early",
      tagalog: "maaga",
      ilocano: "nasapa",
      pangasinense: "asasakbay",
    ),
    Word(
      english: "earnest",
      tagalog: "seryoso",
      ilocano: "serioso",
      pangasinense: "seryoso",
    ),
    Word(
      english: "start",
      tagalog: "simula",
      ilocano: "mangrugi",
      pangasinense: "gapo",
    ),
    Word(
      english: "heart",
      tagalog: "puso",
      ilocano: "puso",
      pangasinense: "puso",
    ),
    Word(
      english: "quake",
      tagalog: "lindol",
      ilocano: "ginggined",
      pangasinense: "yegyeg",
    ),
    Word(
      english: "east",
      tagalog: "silangan",
      ilocano: "daya",
      pangasinense: "bukig",
    ),
    Word(
      english: "easy",
      tagalog: "madali",
      ilocano: "nalaka",
      pangasinense: "mainomay",
    ),
    Word(
      english: "eat",
      tagalog: "kumain",
      ilocano: "mangan",
      pangasinense: "mangan",
    ),
    Word(
      english: "echo",
      tagalog: "echo",
      ilocano: "ekko",
      pangasinense: "ekso",
    ),
    Word(
      english: "edge",
      tagalog: "gilid",
      ilocano: "bangir",
      pangasinense: "ed gilig",
    ),
    Word(
      english: "effect",
      tagalog: "epekto",
      ilocano: "epekto",
      pangasinense: "epekto",
    ),
    Word(
      english: "egg",
      tagalog: "itlog",
      ilocano: "itlog",
      pangasinense: "itlog",
    ),
    Word(
      english: "eight",
      tagalog: "walo",
      ilocano: "walo",
      pangasinense: "walora",
    ),
    Word(
      english: "either",
      tagalog: "alinman",
      ilocano: "aniaman",
      pangasinense: "anggan iner",
    ),
    Word(
      english: "elbow",
      tagalog: "siko",
      ilocano: "siklo",
      pangasinense: "siket",
    ),
    Word(
      english: "elect",
      tagalog: "piliin",
      ilocano: "pilien",
      pangasinense: "manpili",
    ),
    Word(
      english: "elevate",
      tagalog: "itaas",
      ilocano: "ngato",
      pangasinense: "ed tagey",
    ),
    Word(
      english: "else",
      tagalog: "iba",
      ilocano: "dadduma pay",
      pangasinense: "arum",
    ),
    Word(
      english: "embark",
      tagalog: "magsimula",
      ilocano: "mangrugi",
      pangasinense: "onggapo",
    ),
    Word(
      english: "embrace",
      tagalog: "yakap",
      ilocano: "arakup",
      pangasinense: "yakap",
    ),
    Word(
      english: "emphasis",
      tagalog: "diin",
      ilocano: "iti",
      pangasinense: "iner",
    ),
    Word(
      english: "employ",
      tagalog: "empleyo",
      ilocano: "empleado",
      pangasinense: "empleyado",
    ),
    Word(
      english: "empty",
      tagalog: "walang laman",
      ilocano: "awan linaon",
      pangasinense: "anggapoy karga",
    ),
    Word(
      english: "enclose",
      tagalog: "isara",
      ilocano: "agsardeng",
      pangasinense: "isara",
    ),
    Word(
      english: "end",
      tagalog: "wakas",
      ilocano: "iti kamaudiananna",
      pangasinense: "sampot",
    ),
    Word(
      english: "endless",
      tagalog: "walang hanggan",
      ilocano: "iti agnanayon",
      pangasinense: "andi-anggaan",
    ),
    Word(
      english: "endure",
      tagalog: "tiisin",
      ilocano: "agibtur",
      pangasinense: "maanos",
    ),
    Word(
      english: "energy",
      tagalog: "enerhiya",
      ilocano: "enerhia",
      pangasinense: "enerhiya",
    ),
    Word(
      english: "enjoy",
      tagalog: "tamasahin",
      ilocano: "tagiragsaken",
      pangasinense: "panliketan",
    ),
    Word(
      english: "enlarge",
      tagalog: "palakihin",
      ilocano: "mangpadakkel",
      pangasinense: "palaknaben",
    ),
    Word(
      english: "enormous",
      tagalog: "sagana",
      ilocano: "adu",
      pangasinense: "dakel",
    ),
    Word(
      english: "enough",
      tagalog: "pasok",
      ilocano: "sumrek",
      pangasinense: "onloob",
    ),
    Word(
      english: "enter",
      tagalog: "aliw",
      ilocano: "agragsak",
      pangasinense: "aliw",
    ),
    Word(
      english: "entertain",
      tagalog: "buo",
      ilocano: "intero",
      pangasinense: "interon",
    ),
    Word(
      english: "entire",
      tagalog: "pagnakawan",
      ilocano: "panagibelleng",
      pangasinense: "naandi",
    ),
    Word(
      english: "envy",
      tagalog: "lahat",
      ilocano: "amin",
      pangasinense: "amin",
    ),
    Word(
      english: "equal",
      tagalog: "higit",
      ilocano: "ad-adu pay",
      pangasinense: "mas dakel",
    ),
    Word(
      english: "erase",
      tagalog: "epekto",
      ilocano: "epekto",
      pangasinense: "epekto",
    ),
    Word(
      english: "erect",
      tagalog: "halimbawa",
      ilocano: "kas pagarigan",
      pangasinense: "Alimbawa",
    ),
    Word(
      english: "errors",
      tagalog: "paglapag",
      ilocano: "pannakatay",
      pangasinense: "pangipapasen",
    ),
    Word(
      english: "essential",
      tagalog: "kalidad",
      ilocano: "kalidad",
      pangasinense: "kalidad",
    ),
    Word(
      english: "eternity",
      tagalog: "paglilimita",
      ilocano: "pananglapped",
      pangasinense: "pandurumaan na limitasyon",
    ),
    Word(
      english: "eulogy",
      tagalog: "pagsalita",
      ilocano: "panagsao",
      pangasinense: "pitongtong",
    ),
    Word(
      english: "even",
      tagalog: "paandar",
      ilocano: "aramid",
      pangasinense: "kimey",
    ),
    Word(
      english: "evening",
      tagalog: "eksperimento",
      ilocano: "panageksperimento",
      pangasinense: "eksperimento",
    ),
    Word(
      english: "event",
      tagalog: "paggamit",
      ilocano: "panagusar",
      pangasinense: "usaren",
    ),
    Word(
      english: "ever",
      tagalog: "maghangad",
      ilocano: "agbirbirok",
      pangasinense: "mansagpot",
    ),
    Word(
      english: "every",
      tagalog: "magsalita",
      ilocano: "agsao",
      pangasinense: "mansalita",
    ),
    Word(
      english: "evil",
      tagalog: "pagitan",
      ilocano: "nagbaetan",
      pangasinense: "ed baetan",
    ),
    Word(
      english: "exact",
      tagalog: "pahinga",
      ilocano: "aginana",
      pangasinense: "manpainawa",
    ),
    Word(
      english: "examine",
      tagalog: "ibukod",
      ilocano: "saan a mairaman",
      pangasinense: "iwasan",
    ),
    Word(
      english: "example",
      tagalog: "siyempre",
      ilocano: "siempre",
      pangasinense: "siempre tan",
    ),
    Word(
      english: "exceed",
      tagalog: "galit",
      ilocano: "panagpungtot",
      pangasinense: "sanok",
    ),
    Word(
      english: "excel",
      tagalog: "ngayon",
      ilocano: "ita",
      pangasinense: "natan",
    ),
    Word(
      english: "exception",
      tagalog: "oras",
      ilocano: "oras",
      pangasinense: "oras",
    ),
    Word(
      english: "exchange",
      tagalog: "paborito",
      ilocano: "paborito",
      pangasinense: "paborito",
    ),
    Word(
      english: "excitement",
      tagalog: "tago",
      ilocano: "nailemmeng",
      pangasinense: "ag-amta",
    ),
    Word(
      english: "excuse",
      tagalog: "puno",
      ilocano: "kayo",
      pangasinense: "kiew",
    ),
    Word(
      english: "exhibit",
      tagalog: "pwesto",
      ilocano: "lugar",
      pangasinense: "pasen",
    ),
    Word(
      english: "exodus",
      tagalog: "problema",
      ilocano: "problema",
      pangasinense: "problema",
    ),
    Word(
      english: "expand",
      tagalog: "parusa",
      ilocano: "dusa",
      pangasinense: "dusa",
    ),
    Word(
      english: "expect",
      tagalog: "dehado",
      ilocano: "nakiskisan",
      pangasinense: "abalang",
    ),
    Word(
      english: "expel",
      tagalog: "pagpapakilala",
      ilocano: "pannakaipakaammo",
      pangasinense: "pakabat",
    ),
    Word(
      english: "expensive",
      tagalog: "pagbabalik",
      ilocano: "panagsubli",
      pangasinense: "ipawil",
    ),
    Word(
      english: "experience",
      tagalog: "gawin",
      ilocano: "aramiden",
      pangasinense: "gawaen",
    ),
    Word(
      english: "expression",
      tagalog: "tuwa",
      ilocano: "naragsak",
      pangasinense: "maliket",
    ),
    Word(
      english: "exterior",
      tagalog: "ayusin",
      ilocano: "urnosen",
      pangasinense: "man-adjust",
    ),
    Word(
      english: "extinction",
      tagalog: "bawasan",
      ilocano: "mangkissay",
      pangasinense: "ekalen",
    ),
    Word(
      english: "extra",
      tagalog: "pag-aari",
      ilocano: "panagtagikua",
      pangasinense: "kayarian",
    ),
    Word(
      english: "extreme",
      tagalog: "ilagay",
      ilocano: "mangikabil",
      pangasinense: "i-install so",
    ),
    Word(
      english: "eye",
      tagalog: "sundin",
      ilocano: "suroten",
      pangasinense: "ontumbok",
    ),
    Word(
      english: "eyebrow",
      tagalog: "bantayan",
      ilocano: "pagwanawanan",
      pangasinense: "bantayan",
    ),
    Word(
      english: "eyelash",
      tagalog: "pahintulot",
      ilocano: "pammalubos",
      pangasinense: "abuloyan",
    ),
    Word(
      english: "eyelid",
      tagalog: "kakaiba",
      ilocano: "naidumduma",
      pangasinense: "nikadkaduma",
    ),
    Word(
      english: "fable",
      tagalog: "alamat",
      ilocano: "pakasaritaan",
      pangasinense: "istorya",
    ),
    Word(
      english: "face",
      tagalog: "mukha",
      ilocano: "rupa",
      pangasinense: "lupa",
    ),
    Word(
      english: "fact",
      tagalog: "katotohanan",
      ilocano: "kinapudno",
      pangasinense: "katuaan",
    ),
    Word(
      english: "fade",
      tagalog: "maglaho",
      ilocano: "mapukaw",
      pangasinense: "naandi",
    ),
    Word(
      english: "fail",
      tagalog: "mabigo",
      ilocano: "mapaay",
      pangasinense: "ag-agawa",
    ),
    Word(
      english: "faint",
      tagalog: "nanghihina",
      ilocano: "kumapuy",
      pangasinense: "naandiay biskeg",
    ),
    Word(
      english: "faith",
      tagalog: "pananampalataya",
      ilocano: "pammati",
      pangasinense: "pananisia",
    ),
    Word(
      english: "fall",
      tagalog: "bumagsak",
      ilocano: "bimmaba",
      pangasinense: "atumba",
    ),
    Word(
      english: "false",
      tagalog: "mali",
      ilocano: "di umiso",
      pangasinense: "aliwa",
    ),
    Word(
      english: "familiar",
      tagalog: "pamilyar",
      ilocano: "pamiliar",
      pangasinense: "pamilyar",
    ),
    Word(
      english: "family",
      tagalog: "pamilya",
      ilocano: "pamilia",
      pangasinense: "pamilya",
    ),
    Word(
      english: "famous",
      tagalog: "sikat",
      ilocano: "nalatak",
      pangasinense: "sikat",
    ),
    Word(
      english: "fan",
      tagalog: "tagahanga",
      ilocano: "a fan",
      pangasinense: "saray mangaaro ed sikato",
    ),
    Word(
      english: "far",
      tagalog: "malayo",
      ilocano: "adayo",
      pangasinense: "arawi",
    ),
    Word(
      english: "farewell",
      tagalog: "paalam",
      ilocano: "agpakada",
      pangasinense: "Say goodbye",
    ),
    Word(
      english: "farm",
      tagalog: "sakahan",
      ilocano: "talon",
      pangasinense: "tanamanan",
    ),
    Word(
      english: "farmer",
      tagalog: "magsasaka",
      ilocano: "mannalon",
      pangasinense: "dumaralos",
    ),
    Word(
      english: "farther",
      tagalog: "mas malayo",
      ilocano: "adayo pay",
      pangasinense: "mas arawi",
    ),
    Word(
      english: "fast",
      tagalog: "mabilis",
      ilocano: "napartak",
      pangasinense: "mapmaples",
    ),
    Word(
      english: "fasten",
      tagalog: "i-clip",
      ilocano: "i-clip",
      pangasinense: "i-clip",
    ),
    Word(
      english: "fat",
      tagalog: "taba",
      ilocano: "taba",
      pangasinense: "taba",
    ),
    Word(
      english: "fatal",
      tagalog: "nakamamatay",
      ilocano: "makapapatay",
      pangasinense: "makapatey",
    ),
    Word(
      english: "fate",
      tagalog: "kapalaran",
      ilocano: "gasat",
      pangasinense: "kapalaran",
    ),
    Word(
      english: "fraternity",
      tagalog: "kapatiran",
      ilocano: "agkakabsat",
      pangasinense: "sanaagi",
    ),
    Word(
      english: "father",
      tagalog: "ama",
      ilocano: "ama",
      pangasinense: "tatay",
    ),
    Word(
      english: "fatigue",
      tagalog: "pagkapagod",
      ilocano: "pannakabannog",
      pangasinense: "Pakapuyan",
    ),
    Word(
      english: "fault",
      tagalog: "pagkakamali",
      ilocano: "biddut",
      pangasinense: "lingo",
    ),
    Word(
      english: "favor",
      tagalog: "pabor",
      ilocano: "pabor",
      pangasinense: "pabor",
    ),
    Word(
      english: "fear",
      tagalog: "takot",
      ilocano: "buteng",
      pangasinense: "natatakot",
    ),
    Word(
      english: "feather",
      tagalog: "balahibo",
      ilocano: "dutdot",
      pangasinense: "abel",
    ),
    Word(
      english: "February",
      tagalog: "Pebrero",
      ilocano: "Pebrero",
      pangasinense: "Pebrero",
    ),
    Word(
      english: "feeble",
      tagalog: "mahina",
      ilocano: "nakapuy",
      pangasinense: "makapuy",
    ),
    Word(
      english: "feed",
      tagalog: "pakainin",
      ilocano: "pannangan",
      pangasinense: "panangan",
    ),
    Word(
      english: "feel",
      tagalog: "maramdaman",
      ilocano: "agsakit",
      pangasinense: "sakit na linawa",
    ),
    Word(
      english: "fellow",
      tagalog: "kasamahan",
      ilocano: "pannakilangen",
      pangasinense: "kaibam",
    ),
    Word(
      english: "fellowship",
      tagalog: "kapatiran",
      ilocano: "agkakabsat",
      pangasinense: "sanaagi",
    ),
    Word(
      english: "female",
      tagalog: "babae",
      ilocano: "babai",
      pangasinense: "bibii",
    ),
    Word(
      english: "fence",
      tagalog: "bakod",
      ilocano: "alad",
      pangasinense: "bakor",
    ),
    Word(
      english: "ferment",
      tagalog: "pabulok",
      ilocano: "paglalaok",
      pangasinense: "inkotkot",
    ),
    Word(
      english: "ferry",
      tagalog: "barko",
      ilocano: "barko",
      pangasinense: "barko",
    ),
    Word(
      english: "fertilize",
      tagalog: "magtanim",
      ilocano: "agmula",
      pangasinense: "tanem",
    ),
    Word(
      english: "fever",
      tagalog: "lagnat",
      ilocano: "gurigor",
      pangasinense: "tan",
    ),
    Word(
      english: "few",
      tagalog: "ilan",
      ilocano: "sumagmamano",
      pangasinense: "pigara",
    ),
    Word(
      english: "field",
      tagalog: "larangan",
      ilocano: "aglawlaw",
      pangasinense: "teritorya",
    ),
    Word(
      english: "fierce",
      tagalog: "mabangis",
      ilocano: "naranggas",
      pangasinense: "maruksa",
    ),
    Word(
      english: "fight",
      tagalog: "labanan",
      ilocano: "pannakigubat",
      pangasinense: "labanan",
    ),
    Word(
      english: "figure",
      tagalog: "pigura",
      ilocano: "pigura",
      pangasinense: "pigura",
    ),
    Word(
      english: "fill",
      tagalog: "punan",
      ilocano: "agpunas",
      pangasinense: "tan",
    ),
    Word(
      english: "fin",
      tagalog: "palikpik",
      ilocano: "agkukutel",
      pangasinense: "panliligaw",
    ),
    Word(
      english: "final",
      tagalog: "pangwakas",
      ilocano: "maudi",
      pangasinense: "sampot",
    ),
    Word(
      english: "find",
      tagalog: "makahanap",
      ilocano: "mangbirok",
      pangasinense: "naanap",
    ),
    Word(
      english: "fine",
      tagalog: "maayos",
      ilocano: "nasayaat",
      pangasinense: "maong",
    ),
    Word(
      english: "finger",
      tagalog: "daliri",
      ilocano: "ramay",
      pangasinense: "daliri",
    ),
    Word(
      english: "fingernail",
      tagalog: "kuko",
      ilocano: "kuko",
      pangasinense: "na kuko",
    ),
    Word(
      english: "finish",
      tagalog: "tapusin",
      ilocano: "agpatingga",
      pangasinense: "manampot",
    ),
    Word(
      english: "fire",
      tagalog: "apoy",
      ilocano: "apuy",
      pangasinense: "apoy",
    ),
    Word(
      english: "firefly",
      tagalog: "alitaptap",
      ilocano: "abbong",
      pangasinense: "alipatap",
    ),
    Word(
      english: "firm",
      tagalog: "matatag",
      ilocano: "natibker",
      pangasinense: "mabiskeg",
    ),
    Word(
      english: "fish",
      tagalog: "isda",
      ilocano: "ikan",
      pangasinense: "sira",
    ),
    Word(
      english: "fist",
      tagalog: "kamao",
      ilocano: "kinatao",
      pangasinense: "say",
    ),
    Word(
      english: "fit",
      tagalog: "akma",
      ilocano: "trabaho",
      pangasinense: "akma",
    ),
    Word(
      english: "five",
      tagalog: "lima",
      ilocano: "lima",
      pangasinense: "limaran",
    ),
    Word(
      english: "fix",
      tagalog: "ayusin",
      ilocano: "urnosen",
      pangasinense: "man-adjust",
    ),
    Word(
      english: "flag",
      tagalog: "watawat",
      ilocano: "bandera",
      pangasinense: "bandira",
    ),
    Word(
      english: "flame",
      tagalog: "apoy",
      ilocano: "apuy",
      pangasinense: "apoy",
    ),
    Word(
      english: "flat",
      tagalog: "patag",
      ilocano: "patag",
      pangasinense: "patag",
    ),
    Word(
      english: "flavor",
      tagalog: "lasa",
      ilocano: "ti raman",
      pangasinense: "panangan",
    ),
    Word(
      english: "flea",
      tagalog: "kuto",
      ilocano: "agkukutel",
      pangasinense: "saray ulsa",
    ),
    Word(
      english: "flee",
      tagalog: "tumakas",
      ilocano: "naglibas",
      pangasinense: "tinmaynan",
    ),
    Word(
      english: "fling",
      tagalog: "itapon",
      ilocano: "ibelleng",
      pangasinense: "ibantak",
    ),
    Word(
      english: "flink",
      tagalog: "magbalik",
      ilocano: "agsubli",
      pangasinense: "ompawil",
    ),
    Word(
      english: "float",
      tagalog: "lumutang",
      ilocano: "agtaytayab",
      pangasinense: "onlilibog",
    ),
    Word(
      english: "flock",
      tagalog: "kawan",
      ilocano: "gayyem",
      pangasinense: "kaaro",
    ),
    Word(
      english: "flood",
      tagalog: "pagbaha",
      ilocano: "layus",
      pangasinense: "delap",
    ),
    Word(
      english: "floor",
      tagalog: "sahig",
      ilocano: "suelo",
      pangasinense: "dalin",
    ),
    Word(
      english: "flow",
      tagalog: "daloy",
      ilocano: "panagayus",
      pangasinense: "onagos",
    ),
    Word(
      english: "flower",
      tagalog: "bulaklak",
      ilocano: "sabsabong",
      pangasinense: "saray rosas",
    ),
    Word(
      english: "fly",
      tagalog: "langaw",
      ilocano: "agtaytayab",
      pangasinense: "mantikyab",
    ),
    Word(
      english: "foam",
      tagalog: "bula",
      ilocano: "bulong",
      pangasinense: "bulong",
    ),
    Word(
      english: "foe",
      tagalog: "kaaway",
      ilocano: "kabusor",
      pangasinense: "kalaban",
    ),
    Word(
      english: "fold",
      tagalog: "tiklop",
      ilocano: "agkakapet",
      pangasinense: "man-tap",
    ),
    Word(
      english: "follow",
      tagalog: "sundan",
      ilocano: "sumurot",
      pangasinense: "ontumbok",
    ),
    Word(
      english: "food",
      tagalog: "pagkain",
      ilocano: "taraon",
      pangasinense: "kakanen",
    ),
    Word(
      english: "fool",
      tagalog: "hangal",
      ilocano: "maag",
      pangasinense: "makulangkulang",
    ),
    Word(
      english: "foot",
      tagalog: "paa",
      ilocano: "saka",
      pangasinense: "sali",
    ),
    Word(
      english: "for",
      tagalog: "para sa",
      ilocano: "para iti",
      pangasinense: "parad",
    ),
    Word(
      english: "force",
      tagalog: "puwersa",
      ilocano: "puersa",
      pangasinense: "pakapanyari",
    ),
    Word(
      english: "forearm",
      tagalog: "braso",
      ilocano: "takkiag",
      pangasinense: "saray taklay",
    ),
    Word(
      english: "forehead",
      tagalog: "noo",
      ilocano: "wen",
      pangasinense: "so",
    ),
    Word(
      english: "foreigner",
      tagalog: "dayuhan",
      ilocano: "ganggannaet",
      pangasinense: "dayo",
    ),
    Word(
      english: "foretell",
      tagalog: "hulaan",
      ilocano: "panagduadua",
      pangasinense: "Iisipen",
    ),
    Word(
      english: "forever",
      tagalog: "magpakailanman",
      ilocano: "iti agnanayon",
      pangasinense: "andi-anggaan",
    ),
    Word(
      english: "forget",
      tagalog: "kalimutan",
      ilocano: "lipaten",
      pangasinense: "lingwanan",
    ),
    Word(
      english: "forgive",
      tagalog: "magpatawad",
      ilocano: "mangpakawan",
      pangasinense: "mamerdona",
    ),
    Word(
      english: "fork",
      tagalog: "tinidor",
      ilocano: "tinidor",
      pangasinense: "dagum",
    ),
    Word(
      english: "form",
      tagalog: "anyo",
      ilocano: "porma",
      pangasinense: "nengnengen",
    ),
    Word(
      english: "former",
      tagalog: "dati",
      ilocano: "dati",
      pangasinense: "datin",
    ),
    Word(
      english: "fornication",
      tagalog: "pakikipagtalik",
      ilocano: "seksual a pannakidenna",
      pangasinense: "seksual ya relasyon",
    ),
    Word(
      english: "forsake",
      tagalog: "iwanan",
      ilocano: "panawan",
      pangasinense: "paulyanan",
    ),
    Word(
      english: "forth",
      tagalog: "pasulong",
      ilocano: "iti sanguanan",
      pangasinense: "onalis",
    ),
    Word(
      english: "fortnight",
      tagalog: "dalawang linggo",
      ilocano: "dua a lawas",
      pangasinense: "duay simba",
    ),
    Word(
      english: "fortunate",
      tagalog: "masuwerte",
      ilocano: "naragsak",
      pangasinense: "maliket",
    ),
    Word(
      english: "forty",
      tagalog: "kwarenta",
      ilocano: "uppat a pulo",
      pangasinense: "apataplo",
    ),
    Word(
      english: "forward",
      tagalog: "pasulong",
      ilocano: "iti sanguanan",
      pangasinense: "onalis",
    ),
    Word(
      english: "four",
      tagalog: "apat",
      ilocano: "uppat",
      pangasinense: "apatiran",
    ),
    Word(
      english: "fowl",
      tagalog: "ibon",
      ilocano: "billit",
      pangasinense: "manok",
    ),
    Word(
      english: "fragrant",
      tagalog: "mabango",
      ilocano: "nabanglo",
      pangasinense: "ambalingit",
    ),
    Word(
      english: "free",
      tagalog: "libre",
      ilocano: "libre",
      pangasinense: "anggapoy bayad",
    ),
    Word(
      english: "freedom",
      tagalog: "kalayaan",
      ilocano: "wayawaya",
      pangasinense: "kawayangan",
    ),
    Word(
      english: "frequent",
      tagalog: "madalas",
      ilocano: "masansan",
      pangasinense: "lanang",
    ),
    Word(
      english: "fresh",
      tagalog: "sariwa",
      ilocano: "baro",
      pangasinense: "masustansia",
    ),
    Word(
      english: "fretful",
      tagalog: "nag-aalala",
      ilocano: "madanagan",
      pangasinense: "manaaburido",
    ),
    Word(
      english: "friend",
      tagalog: "kaibigan",
      ilocano: "gayyem",
      pangasinense: "kaaro",
    ),
    Word(
      english: "fright",
      tagalog: "takot",
      ilocano: "buteng",
      pangasinense: "natatakot",
    ),
    Word(
      english: "fringe",
      tagalog: "gilid",
      ilocano: "bangir",
      pangasinense: "ed gilig",
    ),
    Word(
      english: "frog",
      tagalog: "palaka",
      ilocano: "palaka",
      pangasinense: "palak",
    ),
    Word(
      english: "from",
      tagalog: "mula sa",
      ilocano: "manipud iti",
      pangasinense: "manlapud",
    ),
    Word(
      english: "front",
      tagalog: "harapan",
      ilocano: "sanguanan",
      pangasinense: "ed arap",
    ),
    Word(
      english: "froth",
      tagalog: "bula",
      ilocano: "bulong",
      pangasinense: "bulong",
    ),
    Word(
      english: "frown",
      tagalog: "nagmumura",
      ilocano: "agsao iti dakes",
      pangasinense: "mansasaol",
    ),
    Word(
      english: "fruit",
      tagalog: "prutas",
      ilocano: "prutas",
      pangasinense: "prutas",
    ),
    Word(
      english: "fry",
      tagalog: "prituhin",
      ilocano: "pagrukodan",
      pangasinense: "manpupulong",
    ),
    Word(
      english: "full",
      tagalog: "puno",
      ilocano: "kayo",
      pangasinense: "kiew",
    ),
    Word(
      english: "furnish",
      tagalog: "magbigay",
      ilocano: "mangted",
      pangasinense: "mangiter",
    ),
    Word(
      english: "furrow",
      tagalog: "araro",
      ilocano: "araro",
      pangasinense: "araro",
    ),
    Word(
      english: "further",
      tagalog: "higit pang",
      ilocano: "ad-adu pay",
      pangasinense: "mas dakel ni",
    ),
    Word(
      english: "future",
      tagalog: "hinaharap",
      ilocano: "iti masanguanan",
      pangasinense: "arapen",
    ),
    Word(
      english: "gaing",
      tagalog: "nakakakuha",
      ilocano: "manggundaway",
      pangasinense: "naala",
    ),
    Word(
      english: "gallop",
      tagalog: "tumakbo ng mabilis",
      ilocano: "agtaray a sipapardas",
      pangasinense: "Ontataray a maples",
    ),
    Word(
      english: "gamble",
      tagalog: "magsusugal",
      ilocano: "agsugal",
      pangasinense: "mansugal",
    ),
    Word(
      english: "game",
      tagalog: "laro",
      ilocano: "ay-ayam",
      pangasinense: "ay-ayam",
    ),
    Word(
      english: "garden",
      tagalog: "hardin",
      ilocano: "hardin",
      pangasinense: "tanamanan",
    ),
    Word(
      english: "gargle",
      tagalog: "gargle",
      ilocano: "gargle",
      pangasinense: "man-gargle",
    ),
    Word(
      english: "gash",
      tagalog: "sugat",
      ilocano: "sugat",
      pangasinense: "sugat",
    ),
    Word(
      english: "gas",
      tagalog: "gas",
      ilocano: "gas",
      pangasinense: "gas",
    ),
    Word(
      english: "gather",
      tagalog: "tipunin",
      ilocano: "agurnong",
      pangasinense: "pantitipon",
    ),
    Word(
      english: "gay",
      tagalog: "bakla",
      ilocano: "gay",
      pangasinense: "gay",
    ),
    Word(
      english: "gaze",
      tagalog: "titig",
      ilocano: "agpang",
      pangasinense: "tan",
    ),
    Word(
      english: "general",
      tagalog: "heneral",
      ilocano: "sapasap",
      pangasinense: "general",
    ),
    Word(
      english: "gentle",
      tagalog: "banayad",
      ilocano: "naalumamay",
      pangasinense: "ag-onlampas",
    ),
    Word(
      english: "gesture",
      tagalog: "galaw",
      ilocano: "panagtigtignay",
      pangasinense: "kagagawa",
    ),
    Word(
      english: "get",
      tagalog: "kuha",
      ilocano: "mangala",
      pangasinense: "alaen",
    ),
    Word(
      english: "ghost",
      tagalog: "multo",
      ilocano: "uleg",
      pangasinense: "uleg",
    ),
    Word(
      english: "giddy",
      tagalog: "natutuwa",
      ilocano: "maragsakan",
      pangasinense: "maliket",
    ),
    Word(
      english: "gift",
      tagalog: "regalo",
      ilocano: "sagut",
      pangasinense: "regalo",
    ),
    Word(
      english: "gill",
      tagalog: "hasang",
      ilocano: "agsabsabong",
      pangasinense: "tan",
    ),
    Word(
      english: "girdle",
      tagalog: "sinturon",
      ilocano: "sinturon",
      pangasinense: "sinturon",
    ),
    Word(
      english: "give",
      tagalog: "ibigay",
      ilocano: "mangted",
      pangasinense: "iter",
    ),
    Word(
      english: "glad",
      tagalog: "masaya",
      ilocano: "naragsak",
      pangasinense: "maliket",
    ),
    Word(
      english: "glass",
      tagalog: "baso",
      ilocano: "baso",
      pangasinense: "baso",
    ),
    Word(
      english: "gleam",
      tagalog: "kislap",
      ilocano: "agsilnag",
      pangasinense: "mankirlap",
    ),
    Word(
      english: "glean",
      tagalog: "magtipon",
      ilocano: "agtataripnong",
      pangasinense: "mantitipon",
    ),
    Word(
      english: "gnash",
      tagalog: "magngalit",
      ilocano: "agpungtot",
      pangasinense: "onsanok",
    ),
    Word(
      english: "gnaw",
      tagalog: "nguyngoy",
      ilocano: "agsangsangit",
      pangasinense: "mannguyurong",
    ),
    Word(
      english: "goat",
      tagalog: "kambing",
      ilocano: "kalding",
      pangasinense: "kanding",
    ),
    Word(
      english: "God",
      tagalog: "Diyos",
      ilocano: "Dios",
      pangasinense: "Dios",
    ),
    Word(
      english: "gold",
      tagalog: "ginto",
      ilocano: "balitok",
      pangasinense: "balitok",
    ),
    Word(
      english: "good",
      tagalog: "mabuti",
      ilocano: "naimbag",
      pangasinense: "maong",
    ),
    Word(
      english: "goods",
      tagalog: "kalakal",
      ilocano: "produkto",
      pangasinense: "kalakal",
    ),
    Word(
      english: "goose",
      tagalog: "gansa",
      ilocano: "gambang",
      pangasinense: "gansa",
    ),
    Word(
      english: "gore",
      tagalog: "dugo",
      ilocano: "dara",
      pangasinense: "dala",
    ),
    Word(
      english: "gorge",
      tagalog: "bangin",
      ilocano: "mabalin",
      pangasinense: "nayarin",
    ),
    Word(
      english: "gossip",
      tagalog: "tsismis",
      ilocano: "tsismis",
      pangasinense: "tsismis",
    ),
    Word(
      english: "govern",
      tagalog: "pamahalaan",
      ilocano: "gobierno",
      pangasinense: "gobierno",
    ),
    Word(
      english: "grab",
      tagalog: "kuhanin",
      ilocano: "mangala",
      pangasinense: "mangala",
    ),
    Word(
      english: "graceful",
      tagalog: "maganda",
      ilocano: "napintas",
      pangasinense: "marakdakep",
    ),
    Word(
      english: "grade",
      tagalog: "grado",
      ilocano: "grado",
      pangasinense: "grado",
    ),
    Word(
      english: "grain",
      tagalog: "butil",
      ilocano: "bukbukel",
      pangasinense: "saray trigo",
    ),
    Word(
      english: "grand",
      tagalog: "magarbo",
      ilocano: "agpasindayag",
      pangasinense: "mapaatagey",
    ),
    Word(
      english: "grass",
      tagalog: "damo",
      ilocano: "damo",
      pangasinense: "damo",
    ),
    Word(
      english: "grave",
      tagalog: "libingan",
      ilocano: "tanem",
      pangasinense: "ponponan",
    ),
    Word(
      english: "grease",
      tagalog: "grasa",
      ilocano: "taba",
      pangasinense: "grasa",
    ),
    Word(
      english: "great",
      tagalog: "mahusay",
      ilocano: "nasayaat",
      pangasinense: "maong",
    ),
    Word(
      english: "green",
      tagalog: "berde",
      ilocano: "berde",
      pangasinense: "berde",
    ),
    Word(
      english: "greet",
      tagalog: "batiin",
      ilocano: "kablaawan",
      pangasinense: "Say hello",
    ),
    Word(
      english: "grief",
      tagalog: "pighati",
      ilocano: "panagsagaba",
      pangasinense: "sakit na linawa",
    ),
    Word(
      english: "grind",
      tagalog: "giling",
      ilocano: "naggiling",
      pangasinense: "kinmapoy",
    ),
    Word(
      english: "groan",
      tagalog: "ungol",
      ilocano: "agsangsangit",
      pangasinense: "agol",
    ),
    Word(
      english: "grow",
      tagalog: "tumubo",
      ilocano: "dumakkel",
      pangasinense: "ombabaleg",
    ),
    Word(
      english: "growl",
      tagalog: "ugong",
      ilocano: "agong",
      pangasinense: "pang-as",
    ),
    Word(
      english: "grudge",
      tagalog: "sama ng loob",
      ilocano: "a kas iti uneg",
      pangasinense: "singa ed loob",
    ),
    Word(
      english: "grumble",
      tagalog: "reklamo",
      ilocano: "reklamo",
      pangasinense: "reklamo",
    ),
    Word(
      english: "guard",
      tagalog: "bantay",
      ilocano: "guardia",
      pangasinense: "bantay",
    ),
    Word(
      english: "guess",
      tagalog: "hulaan",
      ilocano: "panagduadua",
      pangasinense: "Iisipen",
    ),
    Word(
      english: "guest",
      tagalog: "bisita",
      ilocano: "bisita",
      pangasinense: "bisita",
    ),
    Word(
      english: "guide",
      tagalog: "gabay",
      ilocano: "giya",
      pangasinense: "giya",
    ),
    Word(
      english: "guilt",
      tagalog: "pagkakasala",
      ilocano: "panagbasol",
      pangasinense: "kasalanan",
    ),
    Word(
      english: "gulp",
      tagalog: "lagok",
      ilocano: "nalagpit",
      pangasinense: "aliwliwa",
    ),
    Word(
      english: "gun",
      tagalog: "baril",
      ilocano: "paltog",
      pangasinense: "armas na paltog",
    ),
    Word(
      english: "gutter",
      tagalog: "kanal",
      ilocano: "kanal",
      pangasinense: "kanal",
    ),
    Word(
      english: "habit",
      tagalog: "gawi",
      ilocano: "ugali",
      pangasinense: "gawi",
    ),
    Word(
      english: "habitation",
      tagalog: "tirahan",
      ilocano: "pagnaedan",
      pangasinense: "tirahan",
    ),
    Word(
      english: "hair",
      tagalog: "buhok",
      ilocano: "buok",
      pangasinense: "buhok",
    ),
    Word(
      english: "half",
      tagalog: "kalahati",
      ilocano: "kagudua",
      pangasinense: "kalahati",
    ),
    Word(
      english: "halt",
      tagalog: "hinto",
      ilocano: "agsardeng",
      pangasinense: "say salita",
    ),
    Word(
      english: "halter",
      tagalog: "pang-awit",
      ilocano: "panagkanta",
      pangasinense: "pang-awit",
    ),
    Word(
      english: "hammer",
      tagalog: "martilyo",
      ilocano: "martilyo",
      pangasinense: "martilyo",
    ),
    Word(
      english: "hand",
      tagalog: "kamay",
      ilocano: "ima",
      pangasinense: "kamay",
    ),
    Word(
      english: "handle",
      tagalog: "hawakan",
      ilocano: "panangtengngel",
      pangasinense: "say hawakan",
    ),
    Word(
      english: "hang",
      tagalog: "sabitan",
      ilocano: "agpakpakada",
      pangasinense: "sabitan",
    ),
    Word(
      english: "happen",
      tagalog: "mangyari",
      ilocano: "mapasamak",
      pangasinense: "say say",
    ),
    Word(
      english: "happy",
      tagalog: "masaya",
      ilocano: "naragsak",
      pangasinense: "masaya",
    ),
    Word(
      english: "harbor",
      tagalog: "daungan",
      ilocano: "sangladan",
      pangasinense: "daungan",
    ),
    Word(
      english: "hard",
      tagalog: "matigas",
      ilocano: "natangken",
      pangasinense: "matigas",
    ),
    Word(
      english: "harp",
      tagalog: "alpa",
      ilocano: "alpa",
      pangasinense: "alpa",
    ),
    Word(
      english: "harlot",
      tagalog: "pokpok",
      ilocano: "ulo",
      pangasinense: "pokpok",
    ),
    Word(
      english: "harpoon",
      tagalog: "salapang",
      ilocano: "naggapuan",
      pangasinense: "salapang",
    ),
    Word(
      english: "harrow",
      tagalog: "araro",
      ilocano: "araro",
      pangasinense: "araro",
    ),
    Word(
      english: "harsh",
      tagalog: "mabagsik",
      ilocano: "nasungit",
      pangasinense: "mabagsik",
    ),
    Word(
      english: "harvest",
      tagalog: "ani",
      ilocano: "anion",
      pangasinense: "tan",
    ),
    Word(
      english: "hatch",
      tagalog: "pisâ",
      ilocano: "pisâ",
      pangasinense: "pisâ",
    ),
    Word(
      english: "hate",
      tagalog: "galit",
      ilocano: "panagpungtot",
      pangasinense: "galit",
    ),
    Word(
      english: "have",
      tagalog: "mayroon/meron",
      ilocano: "adda/adda",
      pangasinense: "walay/meron",
    ),
    Word(
      english: "hawk",
      tagalog: "lawin",
      ilocano: "lawin",
      pangasinense: "lawin",
    ),
    Word(
      english: "hay",
      tagalog: "dayami",
      ilocano: "dayami",
      pangasinense: "dayami",
    ),
    Word(
      english: "haze",
      tagalog: "ambon",
      ilocano: "umel",
      pangasinense: "ambon",
    ),
    Word(
      english: "he",
      tagalog: "siya",
      ilocano: "isuna",
      pangasinense: "sayya",
    ),
    Word(
      english: "head",
      tagalog: "ulo",
      ilocano: "ulo",
      pangasinense: "ulo",
    ),
    Word(
      english: "headache",
      tagalog: "sakit ng ulo",
      ilocano: "sakit ti ulo",
      pangasinense: "sakit na ulo",
    ),
    Word(
      english: "heal",
      tagalog: "gumaling",
      ilocano: "umimbag",
      pangasinense: "gumaling",
    ),
    Word(
      english: "health",
      tagalog: "kalusugan",
      ilocano: "salun-at",
      pangasinense: "laman na laman",
    ),
    Word(
      english: "heap",
      tagalog: "bunton",
      ilocano: "bunton",
      pangasinense: "bunton",
    ),
    Word(
      english: "hear",
      tagalog: "dinig",
      ilocano: "denggen",
      pangasinense: "panangan",
    ),
    Word(
      english: "heart",
      tagalog: "puso",
      ilocano: "puso",
      pangasinense: "puso",
    ),
    Word(
      english: "heat",
      tagalog: "init",
      ilocano: "napudot",
      pangasinense: "init",
    ),
    Word(
      english: "heathen",
      tagalog: "pagano",
      ilocano: "pagano",
      pangasinense: "pagano",
    ),
    Word(
      english: "heaven",
      tagalog: "langit",
      ilocano: "langit",
      pangasinense: "langit",
    ),
    Word(
      english: "heavy",
      tagalog: "mabigat",
      ilocano: "nadagsen",
      pangasinense: "mabigat",
    ),
    Word(
      english: "heel",
      tagalog: "sakong",
      ilocano: "karayan",
      pangasinense: "sakong",
    ),
    Word(
      english: "height",
      tagalog: "taas",
      ilocano: "nangato",
      pangasinense: "taas",
    ),
    Word(
      english: "heir",
      tagalog: "tagapagmana",
      ilocano: "agtawid",
      pangasinense: "tagapagmana",
    ),
    Word(
      english: "hell",
      tagalog: "impiyerno",
      ilocano: "impierno",
      pangasinense: "impiyerno",
    ),
    Word(
      english: "helm",
      tagalog: "timón",
      ilocano: "timon",
      pangasinense: "timón",
    ),
    Word(
      english: "help",
      tagalog: "tulong",
      ilocano: "tulong",
      pangasinense: "tulong",
    ),
    Word(
      english: "hem",
      tagalog: "laylayan",
      ilocano: "agpalpalama",
      pangasinense: "laylayan",
    ),
    Word(
      english: "hemp",
      tagalog: "abaka",
      ilocano: "kannabis",
      pangasinense: "abaka",
    ),
    Word(
      english: "hen",
      tagalog: "inahin",
      ilocano: "ina",
      pangasinense: "inmahin",
    ),
    Word(
      english: "herd",
      tagalog: "kawan",
      ilocano: "gayyem",
      pangasinense: "kawan",
    ),
    Word(
      english: "here",
      tagalog: "dito",
      ilocano: "ditoy",
      pangasinense: "say",
    ),
    Word(
      english: "hero",
      tagalog: "bayani",
      ilocano: "bayani",
      pangasinense: "bayani",
    ),
    Word(
      english: "hide",
      tagalog: "tago",
      ilocano: "nailemmeng",
      pangasinense: "taga",
    ),
    Word(
      english: "hideous",
      tagalog: "kasuklam-suklam",
      ilocano: "makarimon",
      pangasinense: "kasuklam-suklam",
    ),
    Word(
      english: "high",
      tagalog: "mataas",
      ilocano: "nangato",
      pangasinense: "saray atagey",
    ),
    Word(
      english: "hill",
      tagalog: "burol",
      ilocano: "turod",
      pangasinense: "burol",
    ),
    Word(
      english: "hinge",
      tagalog: "bisagra",
      ilocano: "bisagra",
      pangasinense: "bisagra",
    ),
    Word(
      english: "hip",
      tagalog: "balakang",
      ilocano: "ti pingping",
      pangasinense: "balakang",
    ),
    Word(
      english: "hire",
      tagalog: "upa",
      ilocano: "pangpangulo",
      pangasinense: "upa",
    ),
    Word(
      english: "hit",
      tagalog: "tama",
      ilocano: "umno",
      pangasinense: "tan",
    ),
    Word(
      english: "hitch",
      tagalog: "sabit",
      ilocano: "kinamkamat",
      pangasinense: "sabit",
    ),
    Word(
      english: "hive",
      tagalog: "pugad",
      ilocano: "umok",
      pangasinense: "pugad",
    ),
    Word(
      english: "hoarse",
      tagalog: "paos",
      ilocano: "ti paltog",
      pangasinense: "paos",
    ),
    Word(
      english: "hog",
      tagalog: "baboy",
      ilocano: "baboy",
      pangasinense: "baboy",
    ),
    Word(
      english: "hold",
      tagalog: "hawak",
      ilocano: "panangtengngel",
      pangasinense: "hawak",
    ),
    Word(
      english: "hole",
      tagalog: "butas",
      ilocano: "abut",
      pangasinense: "butas",
    ),
    Word(
      english: "holiday",
      tagalog: "bakasyon",
      ilocano: "panagbakasion",
      pangasinense: "bakasyon",
    ),
    Word(
      english: "hollow",
      tagalog: "hungkag",
      ilocano: "nagbettak",
      pangasinense: "hungkag",
    ),
    Word(
      english: "holy",
      tagalog: "banal",
      ilocano: "sagrado",
      pangasinense: "banal",
    ),
    Word(
      english: "home",
      tagalog: "bahay",
      ilocano: "balay",
      pangasinense: "bahay",
    ),
    Word(
      english: "homesick",
      tagalog: "nangangamba",
      ilocano: "agdanag",
      pangasinense: "nangangamba",
    ),
    Word(
      english: "honest",
      tagalog: "tapat",
      ilocano: "napudno",
      pangasinense: "tapat",
    ),
    Word(
      english: "honey",
      tagalog: "pulot",
      ilocano: "diro",
      pangasinense: "pulot",
    ),
    Word(
      english: "honor",
      tagalog: "karangalan",
      ilocano: "dayaw",
      pangasinense: "karangalan",
    ),
    Word(
      english: "hoof",
      tagalog: "paa ng kabayo",
      ilocano: "saka ti kabalio",
      pangasinense: "pa ng kabayo",
    ),
    Word(
      english: "hook",
      tagalog: "kawit",
      ilocano: "kanta",
      pangasinense: "kawit",
    ),
    Word(
      english: "hoop",
      tagalog: "bilog",
      ilocano: "sirkulo",
      pangasinense: "bilog",
    ),
    Word(
      english: "hop",
      tagalog: "lukso",
      ilocano: "lukso",
      pangasinense: "lukso",
    ),
    Word(
      english: "hope",
      tagalog: "pag-asa",
      ilocano: "namnama",
      pangasinense: "pag-asa",
    ),
    Word(
      english: "horn",
      tagalog: "sungay",
      ilocano: "sara",
      pangasinense: "sungay",
    ),
    Word(
      english: "horrible",
      tagalog: "kasindak-sindak",
      ilocano: "nakaam-amak",
      pangasinense: "kasindak-sindak",
    ),
    Word(
      english: "horror",
      tagalog: "katakutan",
      ilocano: "buteng",
      pangasinense: "katakutan",
    ),
    Word(
      english: "horse",
      tagalog: "kabayo",
      ilocano: "kabalio",
      pangasinense: "kabayo",
    ),
    Word(
      english: "host",
      tagalog: "tagapagpatuloy",
      ilocano: "mangitultuloy",
      pangasinense: "tagagawa",
    ),
    Word(
      english: "hot",
      tagalog: "mainit",
      ilocano: "napudot",
      pangasinense: "say say",
    ),
    Word(
      english: "hour",
      tagalog: "oras",
      ilocano: "oras",
      pangasinense: "oras",
    ),
    Word(
      english: "house",
      tagalog: "bahay",
      ilocano: "balay",
      pangasinense: "say bahay",
    ),
    Word(
      english: "how",
      tagalog: "paano",
      ilocano: "kasano",
      pangasinense: "paano",
    ),
    Word(
      english: "however",
      tagalog: "ngunit",
      ilocano: "ngem",
      pangasinense: "balet",
    ),
    Word(
      english: "hub",
      tagalog: "sentro",
      ilocano: "sentro",
      pangasinense: "sentro",
    ),
    Word(
      english: "hug",
      tagalog: "yakap",
      ilocano: "arakup",
      pangasinense: "yakap",
    ),
    Word(
      english: "hull",
      tagalog: "balat ng barko",
      ilocano: "kudil ti barko",
      pangasinense: "balat ng barko",
    ),
    Word(
      english: "hum",
      tagalog: "ungol",
      ilocano: "agsangsangit",
      pangasinense: "ungol",
    ),
    Word(
      english: "human",
      tagalog: "tao",
      ilocano: "tao",
      pangasinense: "tao",
    ),
    Word(
      english: "humble",
      tagalog: "mapagpakumbaba",
      ilocano: "napakumbaba",
      pangasinense: "mapagpakumbaba",
    ),
    Word(
      english: "humor",
      tagalog: "katatawanan",
      ilocano: "katawa",
      pangasinense: "katatawanan",
    ),
    Word(
      english: "hump",
      tagalog: "kubang likod",
      ilocano: "likudan a kubbong",
      pangasinense: "kubang likod",
    ),
    Word(
      english: "hundred",
      tagalog: "daan",
      ilocano: "kalsada",
      pangasinense: "daan",
    ),
    Word(
      english: "hunger",
      tagalog: "gutom",
      ilocano: "mabisin",
      pangasinense: "eges",
    ),
    Word(
      english: "hunt",
      tagalog: "mangaso",
      ilocano: "mangngalap",
      pangasinense: "mangaso",
    ),
    Word(
      english: "hurry",
      tagalog: "magmadali",
      ilocano: "agdardaras",
      pangasinense: "magmadali",
    ),
    Word(
      english: "hurt",
      tagalog: "saktan",
      ilocano: "agsakit",
      pangasinense: "saktan",
    ),
    Word(
      english: "husband",
      tagalog: "asawa",
      ilocano: "asawa",
      pangasinense: "asawa",
    ),
    Word(
      english: "hut",
      tagalog: "kubo",
      ilocano: "kubo",
      pangasinense: "kubo",
    ),
    Word(
      english: "hysterics",
      tagalog: "histerya",
      ilocano: "histeria",
      pangasinense: "pan-hysterya",
    ),
    Word(
      english: "idea",
      tagalog: "ideya",
      ilocano: "ideya",
      pangasinense: "ideya",
    ),
    Word(
      english: "ideal",
      tagalog: "ideal",
      ilocano: "ideal",
      pangasinense: "idealisado",
    ),
    Word(
      english: "idiom",
      tagalog: "idyoma",
      ilocano: "idioma",
      pangasinense: "idyoma",
    ),
    Word(
      english: "idiot",
      tagalog: "tanga",
      ilocano: "pangen",
      pangasinense: "tan",
    ),
    Word(
      english: "idle",
      tagalog: "tamad",
      ilocano: "nasadut",
      pangasinense: "mangiras",
    ),
    Word(
      english: "idol",
      tagalog: "idolo",
      ilocano: "idolo",
      pangasinense: "idolo",
    ),
    Word(
      english: "idolatry",
      tagalog: "pagsamba sa diyos-diyosan",
      ilocano: "idolatria",
      pangasinense: "panagdayew ed idolo",
    ),
    Word(
      english: "if",
      tagalog: "kung",
      ilocano: "no",
      pangasinense: "say",
    ),
    Word(
      english: "ignore",
      tagalog: "balewalain",
      ilocano: "saan a madlaw",
      pangasinense: "ag-imanoen",
    ),
    Word(
      english: "ill",
      tagalog: "may sakit",
      ilocano: "masakit",
      pangasinense: "mansasakit",
    ),
    Word(
      english: "illegal",
      tagalog: "iligal",
      ilocano: "illegal",
      pangasinense: "ilegal",
    ),
    Word(
      english: "illegitimate",
      tagalog: "di-lehitimo",
      ilocano: "saan a legal",
      pangasinense: "aliwan legay-ley",
    ),
    Word(
      english: "illuminate",
      tagalog: "paliwanagin",
      ilocano: "ilawlawag",
      pangasinense: "ipaliwawa",
    ),
    Word(
      english: "image",
      tagalog: "larawan",
      ilocano: "retrato",
      pangasinense: "litrato",
    ),
    Word(
      english: "imagine",
      tagalog: "isipin",
      ilocano: "panunoten",
      pangasinense: "nonoten",
    ),
    Word(
      english: "imitate",
      tagalog: "gayahin",
      ilocano: "agparintumeng",
      pangasinense: "aligen",
    ),
    Word(
      english: "immature",
      tagalog: "hindi pa hinog",
      ilocano: "saan pay a naimas",
      pangasinense: "agni apano",
    ),
    Word(
      english: "immediately",
      tagalog: "agad-agad",
      ilocano: "dagus",
      pangasinense: "tampol",
    ),
    Word(
      english: "immense",
      tagalog: "malawak",
      ilocano: "nalawa",
      pangasinense: "malaknab",
    ),
    Word(
      english: "immerse",
      tagalog: "ibabad",
      ilocano: "ibabad",
      pangasinense: "ibabad",
    ),
    Word(
      english: "immodest",
      tagalog: "walang hiya",
      ilocano: "Awan ti aniamanna",
      pangasinense: "anggapo la",
    ),
    Word(
      english: "immoral",
      tagalog: "imoral",
      ilocano: "immoral",
      pangasinense: "imoral",
    ),
    Word(
      english: "impair",
      tagalog: "masira",
      ilocano: "madadael",
      pangasinense: "Naderal",
    ),
    Word(
      english: "impenitent",
      tagalog: "walang pagsisisi",
      ilocano: "awan ti panagbabawi",
      pangasinense: "anggapoy pagbabawian",
    ),
    Word(
      english: "imperfect",
      tagalog: "di-perpekto",
      ilocano: "saan a perpekto",
      pangasinense: "ag-ayadyari",
    ),
    Word(
      english: "implement",
      tagalog: "ipatupad",
      ilocano: "ipatungpal",
      pangasinense: "gawaen",
    ),
    Word(
      english: "implore",
      tagalog: "pakiusap",
      ilocano: "pangngaasim",
      pangasinense: "ipangasin",
    ),
    Word(
      english: "impossible",
      tagalog: "imposible",
      ilocano: "imposible",
      pangasinense: "imposible",
    ),
    Word(
      english: "impress",
      tagalog: "humanga",
      ilocano: "agsiddaaw",
      pangasinense: "pankelawan",
    ),
    Word(
      english: "imprison",
      tagalog: "ikulong",
      ilocano: "ikulong",
      pangasinense: "inkulong",
    ),
    Word(
      english: "improper",
      tagalog: "hindi wasto",
      ilocano: "saan nga umiso",
      pangasinense: "aliwan duga",
    ),
    Word(
      english: "improve",
      tagalog: "pagbutihin",
      ilocano: "mangpasayaat",
      pangasinense: "paaligwasen",
    ),
    Word(
      english: "impure",
      tagalog: "marumi",
      ilocano: "narugit",
      pangasinense: "marutak",
    ),
    Word(
      english: "inasmuch",
      tagalog: "sa kadahilanang",
      ilocano: "iti rason",
      pangasinense: "lapud",
    ),
    Word(
      english: "incapable",
      tagalog: "walang kakayahan",
      ilocano: "awan galadna",
      pangasinense: "anggapoy abilidad",
    ),
    Word(
      english: "inch",
      tagalog: "pulgada",
      ilocano: "pulgada",
      pangasinense: "pulgada",
    ),
    Word(
      english: "incident",
      tagalog: "pangyayari",
      ilocano: "pasamak",
      pangasinense: "nagawa",
    ),
    Word(
      english: "include",
      tagalog: "isama",
      ilocano: "iraman",
      pangasinense: "kaibad satan",
    ),
    Word(
      english: "income",
      tagalog: "kita",
      ilocano: "kita",
      pangasinense: "kuarta",
    ),
    Word(
      english: "incomprehensible",
      tagalog: "hindi maintindihan",
      ilocano: "saan a maawatan",
      pangasinense: "agnatalosan",
    ),
    Word(
      english: "inconvenient",
      tagalog: "nakakagulo",
      ilocano: "makaparurod",
      pangasinense: "makapaingongot",
    ),
    Word(
      english: "incorporate",
      tagalog: "isama",
      ilocano: "iraman",
      pangasinense: "kaibad satan",
    ),
    Word(
      english: "incurable",
      tagalog: "di magagamot",
      ilocano: "saan a maagasan",
      pangasinense: "anggapoy tambal",
    ),
    Word(
      english: "indebted",
      tagalog: "may utang",
      ilocano: "utang",
      pangasinense: "akautang",
    ),
    Word(
      english: "indeed",
      tagalog: "talagang",
      ilocano: "talaga",
      pangasinense: "talagan",
    ),
    Word(
      english: "independence",
      tagalog: "kalayaan",
      ilocano: "wayawaya",
      pangasinense: "kawayangan",
    ),
    Word(
      english: "Indian",
      tagalog: "Indiano/Indiyano",
      ilocano: "Indian/Indian",
      pangasinense: "Indio/Indian",
    ),
    Word(
      english: "indicate",
      tagalog: "ipahiwatig",
      ilocano: "ipamatmat",
      pangasinense: "ipanengneng",
    ),
    Word(
      english: "indirect",
      tagalog: "di-tuwiran",
      ilocano: "saan a direkta",
      pangasinense: "agdirektan",
    ),
    Word(
      english: "indistinct",
      tagalog: "malabo",
      ilocano: "nabulsek",
      pangasinense: "aliwliwa",
    ),
    Word(
      english: "individual",
      tagalog: "indibidwal",
      ilocano: "indibidual",
      pangasinense: "indibidual",
    ),
    Word(
      english: "indivisible",
      tagalog: "di-mahihiwalay",
      ilocano: "saan a maisin",
      pangasinense: "agnibulag",
    ),
    Word(
      english: "induce",
      tagalog: "umakit",
      ilocano: "mangallukoy",
      pangasinense: "naayat",
    ),
    Word(
      english: "indulgence",
      tagalog: "pagpapakalayaw",
      ilocano: "panangpadpadakes",
      pangasinense: "panagpalikdo",
    ),
    Word(
      english: "industrious",
      tagalog: "masipag",
      ilocano: "napasnek",
      pangasinense: "maabuloy",
    ),
    Word(
      english: "inexhaustible",
      tagalog: "walang-hanggan",
      ilocano: "agnanayon",
      pangasinense: "andi-anggaan",
    ),
    Word(
      english: "inexpensive",
      tagalog: "mura",
      ilocano: "nalaka",
      pangasinense: "Mangan",
    ),
    Word(
      english: "infallible",
      tagalog: "hindi nagkakamali",
      ilocano: "saan nga agkamali",
      pangasinense: "anggapoy lingo to",
    ),
    Word(
      english: "infancy",
      tagalog: "pagkabata",
      ilocano: "kinaubing",
      pangasinense: "impanugaw",
    ),
    Word(
      english: "infant",
      tagalog: "sanggol",
      ilocano: "maladaga",
      pangasinense: "kapangiyanak",
    ),
    Word(
      english: "infinite",
      tagalog: "walang hangganan",
      ilocano: "awan patinggana",
      pangasinense: "anggapoy anggaan",
    ),
    Word(
      english: "inform",
      tagalog: "ipaalam",
      ilocano: "ipakaammo",
      pangasinense: "ipakabat",
    ),
    Word(
      english: "inhabitant",
      tagalog: "naninirahan",
      ilocano: "agnanaed",
      pangasinense: "manaayam",
    ),
    Word(
      english: "inherit",
      tagalog: "magmana",
      ilocano: "tawid",
      pangasinense: "tawiren",
    ),
    Word(
      english: "iniquity",
      tagalog: "kasamaan",
      ilocano: "kinadakes",
      pangasinense: "kaugsan",
    ),
    Word(
      english: "injure",
      tagalog: "masaktan",
      ilocano: "nasaktan",
      pangasinense: "nasakitan",
    ),
    Word(
      english: "inner",
      tagalog: "panloob",
      ilocano: "iti uneg",
      pangasinense: "ed loob",
    ),
    Word(
      english: "innumerable",
      tagalog: "di-mabilang",
      ilocano: "di mabilang",
      pangasinense: "agnaparaan",
    ),
    Word(
      english: "inquire",
      tagalog: "magtanong",
      ilocano: "agsaludsod",
      pangasinense: "tepeten",
    ),
    Word(
      english: "insane",
      tagalog: "baliw",
      ilocano: "agmauyong",
      pangasinense: "baliw",
    ),
    Word(
      english: "insect",
      tagalog: "insekto",
      ilocano: "insekto",
      pangasinense: "insekto",
    ),
    Word(
      english: "insensible",
      tagalog: "walang pakiramdam",
      ilocano: "awan ti rikna",
      pangasinense: "anggapoy liknaan",
    ),
    Word(
      english: "intercede",
      tagalog: "mamagitan",
      ilocano: "agsakit ti nakem",
      pangasinense: "man-bully ed arum",
    ),
    Word(
      english: "inside",
      tagalog: "loob",
      ilocano: "uneg",
      pangasinense: "ed loob",
    ),
    Word(
      english: "insincere",
      tagalog: "hindi taos-puso",
      ilocano: "saan a naimpusuan",
      pangasinense: "aliwan impapuso",
    ),
    Word(
      english: "inspiration",
      tagalog: "inspirasyon",
      ilocano: "inspirasion",
      pangasinense: "inspirasyon",
    ),
    Word(
      english: "instantly",
      tagalog: "agad-agad",
      ilocano: "dagus",
      pangasinense: "tampol",
    ),
    Word(
      english: "instead",
      tagalog: "sa halip",
      ilocano: "imbes a",
      pangasinense: "imbes ya",
    ),
    Word(
      english: "instruct",
      tagalog: "magturo",
      ilocano: "mangisuro",
      pangasinense: "manbangat",
    ),
    Word(
      english: "insult",
      tagalog: "pang-iinsulto",
      ilocano: "manginsulto",
      pangasinense: "makapasakit",
    ),
    Word(
      english: "integrity",
      tagalog: "integridad",
      ilocano: "kinatarnaw",
      pangasinense: "integridad",
    ),
    Word(
      english: "intelligence",
      tagalog: "talino",
      ilocano: "agpanunot",
      pangasinense: "makabat",
    ),
    Word(
      english: "intemperate",
      tagalog: "walang pagpipigil",
      ilocano: "awan panagteppel",
      pangasinense: "ag-ontundan mansalita",
    ),
    Word(
      english: "intense",
      tagalog: "matindi",
      ilocano: "nakaro",
      pangasinense: "grabe so sakit",
    ),
    Word(
      english: "intention",
      tagalog: "layunin",
      ilocano: "panggep",
      pangasinense: "gagala",
    ),
    Word(
      english: "interior",
      tagalog: "panloob",
      ilocano: "iti uneg",
      pangasinense: "ed loob",
    ),
    Word(
      english: "intermediate",
      tagalog: "panggitna",
      ilocano: "panagpatakder",
      pangasinense: "panag-imano",
    ),
    Word(
      english: "interpose",
      tagalog: "mamagitan",
      ilocano: "agsakit ti nakem",
      pangasinense: "man-bully ed arum",
    ),
    Word(
      english: "interpret",
      tagalog: "ipaliwanag",
      ilocano: "ilawlawag",
      pangasinense: "Ipaliwawa",
    ),
    Word(
      english: "interpreter",
      tagalog: "tagapagsalin",
      ilocano: "translator",
      pangasinense: "translator",
    ),
    Word(
      english: "interrupt",
      tagalog: "gambalain",
      ilocano: "pananglapped",
      pangasinense: "pandurog",
    ),
    Word(
      english: "intestine",
      tagalog: "bituka",
      ilocano: "sakit ti bekkel",
      pangasinense: "panotot",
    ),
    Word(
      english: "intimate",
      tagalog: "malapit",
      ilocano: "asideg",
      pangasinense: "asingger",
    ),
    Word(
      english: "into",
      tagalog: "sa loob",
      ilocano: "iti uneg",
      pangasinense: "ed loob",
    ),
    Word(
      english: "intolerant",
      tagalog: "hindi mapagparaya",
      ilocano: "saan a mapagtalkan",
      pangasinense: "agmakaliket",
    ),
    Word(
      english: "intoxication",
      tagalog: "kalasingan",
      ilocano: "panagkalap",
      pangasinense: "panamairapan",
    ),
    Word(
      english: "introduce",
      tagalog: "ipakilala",
      ilocano: "ipakaammo",
      pangasinense: "ipakabat",
    ),
    Word(
      english: "invade",
      tagalog: "sumalakay",
      ilocano: "agresionado",
      pangasinense: "onataki",
    ),
    Word(
      english: "invalid",
      tagalog: "di-wasto/di-tama",
      ilocano: "di umiso",
      pangasinense: "aliwa/aliwa",
    ),
    Word(
      english: "invest",
      tagalog: "mamuhunan",
      ilocano: "mangin-invest",
      pangasinense: "mamuhunan",
    ),
    Word(
      english: "investigate",
      tagalog: "magsiyasat",
      ilocano: "agimtuod",
      pangasinense: "man-research",
    ),
    Word(
      english: "invisible",
      tagalog: "di-nakikita",
      ilocano: "di makita",
      pangasinense: "agnanengneng",
    ),
    Word(
      english: "iris",
      tagalog: "iris (no Tagalog equivalent)",
      ilocano: "iris (iti Tagalog equivalent)",
      pangasinense: "iris (odino Tagalog equivalent)",
    ),
    Word(
      english: "iron",
      tagalog: "bakal",
      ilocano: "landok",
      pangasinense: "balatyang",
    ),
    Word(
      english: "irregular",
      tagalog: "di-regular",
      ilocano: "saan a regular",
      pangasinense: "aliwan regular",
    ),
    Word(
      english: "irreligious",
      tagalog: "walang relihiyon",
      ilocano: "awan ti relihion",
      pangasinense: "anggapoy relihyon da",
    ),
    Word(
      english: "island",
      tagalog: "isla",
      ilocano: "isla",
      pangasinense: "isla",
    ),
    Word(
      english: "issue",
      tagalog: "isyu",
      ilocano: "isyu",
      pangasinense: "isyu",
    ),
    Word(
      english: "it",
      tagalog: "ito",
      ilocano: "daytoy",
      pangasinense: "say",
    ),
    Word(
      english: "itch",
      tagalog: "kati",
      ilocano: "ti kama",
      pangasinense: "katri",
    ),
    Word(
      english: "itself",
      tagalog: "sarili nito",
      ilocano: "a mismo",
      pangasinense: "sarili to",
    ),
    Word(
        english: "jab",
        tagalog: "saksak",
        ilocano: "nagsuek",
        pangasinense: "naandi"
    ),
    Word(
        english: "jail",
        tagalog: "kulungan",
        ilocano: "kulongan",
        pangasinense: "abong"
    ),
    Word(
        english: "January",
        tagalog: "Enero",
        ilocano: "Enero",
        pangasinense: "Enero"
    ),
    Word(
        english: "jar",
        tagalog: "garapon",
        ilocano: "garapon",
        pangasinense: "garapon"
    ),
    Word(
        english: "jaw",
        tagalog: "panga",
        ilocano: "panga",
        pangasinense: "panga"
    ),
    Word(
        english: "jealous",
        tagalog: "seloso/selosa",
        ilocano: "nalagda/nalagda",
        pangasinense: "seloso/selosa"
    ),
    Word(
        english: "jerk",
        tagalog: "hilahin/biglang galaw",
        ilocano: "panaggaraw/di ninamnama a tignay",
        pangasinense: "I-share I-share I-share I-share I-share"
    ),
    Word(
        english: "jest",
        tagalog: "biro",
        ilocano: "opisina",
        pangasinense: "opisina"
    ),
    Word(
        english: "Jesus",
        tagalog: "Hesus",
        ilocano: "Ni Jesus",
        pangasinense: "Jesus"
    ),
    Word(
        english: "job",
        tagalog: "trabaho",
        ilocano: "trabaho",
        pangasinense: "trabaho"
    ),
    Word(
        english: "join",
        tagalog: "sumali",
        ilocano: "sumrek",
        pangasinense: "onloob"
    ),
    Word(
        english: "joint",
        tagalog: "kasukasuan",
        ilocano: "agkukutel",
        pangasinense: "kasukasuan"
    ),
    Word(
        english: "joke",
        tagalog: "biro",
        ilocano: "opisina",
        pangasinense: "opisina"
    ),
    Word(
        english: "jolly",
        tagalog: "masayahin",
        ilocano: "agragsak",
        pangasinense: "manliket"
    ),
    Word(
        english: "jolt",
        tagalog: "gulat/biglang galaw",
        ilocano: "bigla a panagtignay",
        pangasinense: "biglan ginmalaw"
    ),
    Word(
        english: "journey",
        tagalog: "paglalakbay",
        ilocano: "panagdaliasat",
        pangasinense: "panagbiahe"
    ),
    Word(
        english: "joy",
        tagalog: "kasiyahan",
        ilocano: "ragsak",
        pangasinense: "liket"
    ),
    Word(
        english: "judge",
        tagalog: "hukom",
        ilocano: "ukom",
        pangasinense: "ukom"
    ),
    Word(
        english: "July",
        tagalog: "Hulyo",
        ilocano: "Hulio",
        pangasinense: "Hulyo"
    ),
    Word(
        english: "jump",
        tagalog: "talon",
        ilocano: "talon",
        pangasinense: "talon"
    ),
    Word(
        english: "June",
        tagalog: "Hunyo",
        ilocano: "Hunio",
        pangasinense: "Hunyo"
    ),
    Word(
        english: "just",
        tagalog: "makatarungan",
        ilocano: "nainkalintegan",
        pangasinense: "makatunongan"
    ),
    Word(
        english: "justice",
        tagalog: "katarungan",
        ilocano: "hustisia",
        pangasinense: "hustisya"
    ),
    Word(
        english: "keel",
        tagalog: "kilya",
        ilocano: "kinatao",
        pangasinense: "kilya"
    ),
    Word(
        english: "keen",
        tagalog: "masigasig",
        ilocano: "naregta",
        pangasinense: "maseseg"
    ),
    Word(
        english: "keep",
        tagalog: "itago/ingatan",
        ilocano: "ilemmeng",
        pangasinense: "iyamot/iyamot"
    ),
    Word(
        english: "kettle",
        tagalog: "takure",
        ilocano: "takure",
        pangasinense: "tanure"
    ),
    Word(
        english: "key",
        tagalog: "susi",
        ilocano: "tulbek",
        pangasinense: "susi"
    ),
    Word(
        english: "kick",
        tagalog: "sipa",
        ilocano: "agpakada",
        pangasinense: "say"
    ),
    Word(
        english: "kind",
        tagalog: "mabait",
        ilocano: "nasingpet",
        pangasinense: "mapangasi"
    ),
    Word(
        english: "kind of",
        tagalog: "uri ng",
        ilocano: "kita ti",
        pangasinense: "klase na"
    ),
    Word(
        english: "kindle",
        tagalog: "sindihan",
        ilocano: "kinatao",
        pangasinense: "say"
    ),
    Word(
        english: "king",
        tagalog: "hari",
        ilocano: "ari",
        pangasinense: "ari"
    ),
    Word(
        english: "kingdom",
        tagalog: "kaharian",
        ilocano: "pagarian",
        pangasinense: "panarian"
    ),
    Word(
        english: "kiss",
        tagalog: "halik",
        ilocano: "panangagek",
        pangasinense: "manpalakap"
    ),
    Word(
        english: "kite",
        tagalog: "saranggola",
        ilocano: "saranggola",
        pangasinense: "saranggola"
    ),
    Word(
        english: "kitten",
        tagalog: "kuting",
        ilocano: "kuting",
        pangasinense: "kitty"
    ),
    Word(
        english: "knee",
        tagalog: "tuhod",
        ilocano: "tumeng",
        pangasinense: "pueg"
    ),
    Word(
        english: "kneecap",
        tagalog: "luhod",
        ilocano: "agkakapsut",
        pangasinense: "panngesnges"
    ),
    Word(
        english: "kneel",
        tagalog: "lumuhod",
        ilocano: "agparintumeng",
        pangasinense: "ontalimukor"
    ),
    Word(
        english: "knife",
        tagalog: "kutsilyo",
        ilocano: "kutsilyo",
        pangasinense: "kutsilyo"
    ),
    Word(
        english: "knock",
        tagalog: "katok",
        ilocano: "agtuktok",
        pangasinense: "katok"
    ),
    Word(
        english: "knot",
        tagalog: "buhol",
        ilocano: "bulong",
        pangasinense: "tan"
    ),
    Word(
        english: "know",
        tagalog: "malaman",
        ilocano: "ammo",
        pangasinense: "amtaen"
    ),
    Word(
        english: "knuckle",
        tagalog: "buko ng daliri",
        ilocano: "panaglukat ti ramay",
        pangasinense: "say lukot na gamet"
    ),
    Word(
        english: "labor",
        tagalog: "paggawa",
        ilocano: "panagaramid",
        pangasinense: "panaggawa"
    ),
    Word(
        english: "lace",
        tagalog: "puntas",
        ilocano: "puntas",
        pangasinense: "puntas"
    ),
    Word(
        english: "lack",
        tagalog: "kakulangan",
        ilocano: "kinaawan",
        pangasinense: "kakulangan"
    ),
    Word(
        english: "ladder",
        tagalog: "hagdan",
        ilocano: "agdan",
        pangasinense: "Escalera"
    ),
    Word(
        english: "ladle",
        tagalog: "sandok",
        ilocano: "agkukutel",
        pangasinense: "tan"
    ),
    Word(
        english: "lag",
        tagalog: "pagkaantala",
        ilocano: "pannakaitantan",
        pangasinense: "ag-agawa"
    ),
    Word(
        english: "lake",
        tagalog: "lawa",
        ilocano: "dan-aw",
        pangasinense: "dayat"
    ),
    Word(
        english: "lame",
        tagalog: "pilay",
        ilocano: "agkakapsut",
        pangasinense: "aliwliwa"
    ),
    Word(
        english: "lament",
        tagalog: "hinagpis",
        ilocano: "naingpis",
        pangasinense: "pinatikey"
    ),
    Word(
        english: "lamp",
        tagalog: "ilawan",
        ilocano: "silaw",
        pangasinense: "liliwawa"
    ),
    Word(
        english: "land",
        tagalog: "lupa",
        ilocano: "daga",
        pangasinense: "dalin"
    ),
    Word(
        english: "landlord",
        tagalog: "panginoong maylupa",
        ilocano: "ari ti daga",
        pangasinense: "ari ed dalin"
    ),
    Word(
        english: "language",
        tagalog: "wika",
        ilocano: "lengguahe",
        pangasinense: "lenguahe"
    ),
    Word(
        english: "lap",
        tagalog: "kandungan",
        ilocano: "panagsikog",
        pangasinense: "panlukon"
    ),
    Word(
        english: "large",
        tagalog: "malaki",
        ilocano: "dakkel",
        pangasinense: "baleg"
    ),
    Word(
        english: "last",
        tagalog: "huli",
        ilocano: "naladaw",
        pangasinense: "asingsingger lay panaon"
    ),
    Word(
        english: "late",
        tagalog: "huli",
        ilocano: "naladaw",
        pangasinense: "asingsingger lay panaon"
    ),
    Word(
        english: "lately",
        tagalog: "kamakailan",
        ilocano: "nabiit pay",
        pangasinense: "agano ni"
    ),
    Word(
        english: "later",
        tagalog: "mamaya",
        ilocano: "kalpasanna",
        pangasinense: "Insan"
    ),
    Word(
        english: "latest",
        tagalog: "pinakabago",
        ilocano: "kabaruan",
        pangasinense: "sankabaloan"
    ),
    Word(
        english: "latter",
        tagalog: "huli",
        ilocano: "naladaw",
        pangasinense: "asingsingger lay panaon"
    ),
    Word(
        english: "laugh",
        tagalog: "tawa",
        ilocano: "panagkatawa",
        pangasinense: "elek"
    ),
    Word(
        english: "launch",
        tagalog: "ilunsad",
        ilocano: "mairuar",
        pangasinense: "ipaway"
    ),
    Word(
        english: "law",
        tagalog: "batas",
        ilocano: "linteg",
        pangasinense: "ganggan"
    ),
    Word(
        english: "lawful",
        tagalog: "makatarungan",
        ilocano: "nainkalintegan",
        pangasinense: "makatunongan"
    ),
    Word(
        english: "lawyer",
        tagalog: "abogado",
        ilocano: "abogado",
        pangasinense: "abogado"
    ),
    Word(
        english: "lay",
        tagalog: "ihiga",
        ilocano: "agiddan",
        pangasinense: "lay"
    ),
    Word(
        english: "lazy",
        tagalog: "tamad",
        ilocano: "nasadut",
        pangasinense: "mangiras"
    ),
    Word(
        english: "lead",
        tagalog: "pangunahan",
        ilocano: "kangrunaan",
        pangasinense: "manunan"
    ),
    Word(
        english: "leaf",
        tagalog: "dahon",
        ilocano: "bulong",
        pangasinense: "bulong"
    ),
    Word(
        english: "leak",
        tagalog: "tagas",
        ilocano: "mangmangted",
        pangasinense: "say"
    ),
    Word(
        english: "leaky",
        tagalog: "butas",
        ilocano: "abut",
        pangasinense: "abut"
    ),
    Word(
        english: "lean",
        tagalog: "sumandal",
        ilocano: "sumandal",
        pangasinense: "manpupulong"
    ),
    Word(
        english: "leap",
        tagalog: "talon",
        ilocano: "talon",
        pangasinense: "talon"
    ),
    Word(
        english: "learn",
        tagalog: "matuto",
        ilocano: "agsursuro",
        pangasinense: "manaral"
    ),
    Word(
        english: "least",
        tagalog: "pinaka-kaunti",
        ilocano: "saan unay",
        pangasinense: "anggan panon"
    ),
    Word(
        english: "leather",
        tagalog: "katad",
        ilocano: "lalat",
        pangasinense: "katat"
    ),
    Word(
        english: "leave",
        tagalog: "umalis",
        ilocano: "pumanaw",
        pangasinense: "ontaynan"
    ),
    Word(
        english: "leaven",
        tagalog: "pampaalsa",
        ilocano: "panagpaalsa",
        pangasinense: "panagpainawa"
    ),
    Word(
        english: "leech",
        tagalog: "linta",
        ilocano: "tinta",
        pangasinense: "ink"
    ),
    Word(
        english: "left",
        tagalog: "kaliwa",
        ilocano: "kannigid",
        pangasinense: "kawigi"
    ),
    Word(
        english: "leg",
        tagalog: "binti",
        ilocano: "saka",
        pangasinense: "sali"
    ),
    Word(
        english: "legal",
        tagalog: "legal",
        ilocano: "legal",
        pangasinense: "legal"
    ),
    Word(
        english: "legion",
        tagalog: "lehiyon",
        ilocano: "legion",
        pangasinense: "leyon"
    ),
    Word(
        english: "lemon",
        tagalog: "limon",
        ilocano: "limonada",
        pangasinense: "limon"
    ),
    Word(
        english: "lend",
        tagalog: "magpahiram",
        ilocano: "agpapautang",
        pangasinense: "manpautang"
    ),
    Word(
        english: "length",
        tagalog: "haba",
        ilocano: "kaatiddog",
        pangasinense: "karukey"
    ),
    Word(
        english: "less",
        tagalog: "mas kaunti",
        ilocano: "bassit",
        pangasinense: "daiset ni"
    ),
    Word(
        english: "lesson",
        tagalog: "aralin",
        ilocano: "leksion",
        pangasinense: "leksion"
    ),
    Word(
        english: "lest",
        tagalog: "baka sakali",
        ilocano: "No maminsan",
        pangasinense: "ompan maminsan"
    ),
    Word(
        english: "letter",
        tagalog: "sulat",
        ilocano: "surat",
        pangasinense: "sulat"
    ),
    Word(
        english: "level",
        tagalog: "antas",
        ilocano: "agpang",
        pangasinense: "grado"
    ),
    Word(
        english: "liberty",
        tagalog: "kalayaan",
        ilocano: "wayawaya",
        pangasinense: "kawayangan"
    ),
    Word(
        english: "lick",
        tagalog: "dilaan",
        ilocano: "dila",
        pangasinense: "tongue"
    ),
    Word(
        english: "lid",
        tagalog: "takip",
        ilocano: "abbong",
        pangasinense: "sakbungan"
    ),
    Word(
        english: "lie",
        tagalog: "magsinungaling",
        ilocano: "agulbod",
        pangasinense: "mantila"
    ),
    Word(
        english: "life",
        tagalog: "buhay",
        ilocano: "biag",
        pangasinense: "bilay"
    ),
    Word(
        english: "lift",
        tagalog: "buhatin",
        ilocano: "aramiden",
        pangasinense: "gawaen"
    ),
    Word(
        english: "light",
        tagalog: "ilaw",
        ilocano: "silaw",
        pangasinense: "liwawa"
    ),
    Word(
        english: "lightning",
        tagalog: "kidlat",
        ilocano: "kimat",
        pangasinense: "kidyam"
    ),
    Word(
        english: "like",
        tagalog: "gusto",
        ilocano: "kayak",
        pangasinense: "labay"
    ),
    Word(
        english: "limb",
        tagalog: "biyas",
        ilocano: "biyas",
        pangasinense: "biyas"
    ),
    Word(
        english: "limber",
        tagalog: "malambot",
        ilocano: "nalamuyot",
        pangasinense: "mareen"
    ),
    Word(
        english: "lime",
        tagalog: "kalamansi",
        ilocano: "kataltalonan",
        pangasinense: "tan"
    ),
    Word(
        english: "limit",
        tagalog: "hangganan",
        ilocano: "ketegan",
        pangasinense: "ketegan"
    ),
    Word(
        english: "line",
        tagalog: "linya",
        ilocano: "linia",
        pangasinense: "linya"
    ),
    Word(
        english: "link",
        tagalog: "kawing",
        ilocano: "kalding",
        pangasinense: "kanen"
    ),
    Word(
        english: "lip",
        tagalog: "labi",
        ilocano: "bibig",
        pangasinense: "labi"
    ),
    Word(
        english: "liquor",
        tagalog: "alak",
        ilocano: "arak",
        pangasinense: "alak"
    ),
    Word(
        english: "listen",
        tagalog: "makinig",
        ilocano: "agimdeng",
        pangasinense: "ondengel"
    ),
    Word(
        english: "little",
        tagalog: "maliit",
        ilocano: "bassit",
        pangasinense: "daiset"
    ),
    Word(
        english: "live",
        tagalog: "mabuhay",
        ilocano: "agbiag",
        pangasinense: "manbilay"
    ),
    Word(
        english: "liver",
        tagalog: "atay",
        ilocano: "ti atay",
        pangasinense: "atay"
    ),
    Word(
        english: "living",
        tagalog: "pamumuhay",
        ilocano: "panagbiag",
        pangasinense: "panagbilay"
    ),
    Word(
        english: "load",
        tagalog: "karga",
        ilocano: "karga",
        pangasinense: "karga"
    ),
    Word(
        english: "locust",
        tagalog: "balang",
        ilocano: "bulong",
        pangasinense: "balang"
    ),
    Word(
        english: "lofty",
        tagalog: "mataas",
        ilocano: "nangato",
        pangasinense: "atagey"
    ),
    Word(
        english: "log",
        tagalog: "troso",
        ilocano: "kayo",
        pangasinense: "kiew"
    ),
    Word(
        english: "loin",
        tagalog: "balakang",
        ilocano: "ti pingping",
        pangasinense: "balbas"
    ),
    Word(
        english: "lonely",
        tagalog: "malungkot",
        ilocano: "naliday",
        pangasinense: "maermen"
    ),
    Word(
        english: "long",
        tagalog: "mahaba",
        ilocano: "atiddog",
        pangasinense: "andukey"
    ),
    Word(
        english: "look",
        tagalog: "tingin",
        ilocano: "panagkita",
        pangasinense: "nengnengen"
    ),
    Word(
        english: "loop",
        tagalog: "ikid",
        ilocano: "ti ikid",
        pangasinense: "ikid"
    ),
    Word(
        english: "loose",
        tagalog: "maluwag",
        ilocano: "nalag-an",
        pangasinense: "mabulos"
    ),
    Word(
        english: "Lord",
        tagalog: "Panginoon",
        ilocano: "Apo",
        pangasinense: "Katawan"
    ),
    Word(
        english: "lose",
        tagalog: "matalo",
        ilocano: "maabak",
        pangasinense: "natalo"
    ),
    Word(
        english: "lost",
        tagalog: "nawala",
        ilocano: "napukaw",
        pangasinense: "abalang"
    ),
    Word(
        english: "loud",
        tagalog: "malakas",
        ilocano: "napigsa",
        pangasinense: "mabisbiskeg"
    ),
    Word(
        english: "love",
        tagalog: "pagmamahal",
        ilocano: "ayat",
        pangasinense: "panangaro"
    ),
    Word(
        english: "lover",
        tagalog: "kasintahan",
        ilocano: "nobiana",
        pangasinense: "kaaro"
    ),
    Word(
        english: "lump",
        tagalog: "bukol",
        ilocano: "bulong",
        pangasinense: "bukol"
    ),
    Word(
        english: "lunatic",
        tagalog: "baliw",
        ilocano: "agmauyong",
        pangasinense: "baliw"
    ),
    Word(
        english: "lust",
        tagalog: "pagnanasa",
        ilocano: "tarigagay",
        pangasinense: "pilalek"
    ),
    Word(
        english: "lying",
        tagalog: "pagsisinungaling",
        ilocano: "panagulbod",
        pangasinense: "panagtila"
    ),
    Word(
        english: "machine",
        tagalog: "makina",
        ilocano: "makina",
        pangasinense: "makina"
    ),
    Word(
        english: "mad",
        tagalog: "galit",
        ilocano: "panagpungtot",
        pangasinense: "sanok"
    ),
    Word(
        english: "magnify",
        tagalog: "palakihin",
        ilocano: "mangpadakkel",
        pangasinense: "palaknaben"
    ),
    Word(
        english: "maid",
        tagalog: "katulong",
        ilocano: "katulongan",
        pangasinense: "katulongan"
    ),
    Word(
        english: "make",
        tagalog: "gumawa",
        ilocano: "agaramid",
        pangasinense: "manggagawa"
    ),
    Word(
        english: "male",
        tagalog: "lalaki",
        ilocano: "lalaki",
        pangasinense: "laki"
    ),
    Word(
        english: "malicious",
        tagalog: "malisyoso",
        ilocano: "managimbubukodan",
        pangasinense: "masiblet"
    ),
    Word(
        english: "man",
        tagalog: "lalaki",
        ilocano: "lalaki",
        pangasinense: "laki"
    ),
    Word(
        english: "manage",
        tagalog: "pamahalaan",
        ilocano: "gobierno",
        pangasinense: "gobierno"
    ),
    Word(
        english: "mankind",
        tagalog: "sangkatauhan",
        ilocano: "sangatauan",
        pangasinense: "katooan"
    ),
    Word(
        english: "manner",
        tagalog: "paraan",
        ilocano: "wagas",
        pangasinense: "paraan"
    ),
    Word(
        english: "manure",
        tagalog: "pataba",
        ilocano: "taba",
        pangasinense: "taba"
    ),
    Word(
        english: "many",
        tagalog: "marami",
        ilocano: "adu",
        pangasinense: "dakél"
    ),
    Word(
        english: "march",
        tagalog: "martsa",
        ilocano: "Marso",
        pangasinense: "Marso"
    ),
    Word(
        english: "March",
        tagalog: "Marso",
        ilocano: "Marso",
        pangasinense: "Marso"
    ),
    Word(
        english: "margin",
        tagalog: "hangganan",
        ilocano: "ketegan",
        pangasinense: "ketegan"
    ),
    Word(
        english: "mark",
        tagalog: "tanda",
        ilocano: "tanda",
        pangasinense: "tanda"
    ),
    Word(
        english: "marriage",
        tagalog: "kasal",
        ilocano: "kasar",
        pangasinense: "kasal"
    ),
    Word(
        english: "marrow",
        tagalog: "utak ng buto",
        ilocano: "utek ti tulang",
        pangasinense: "utek na pukel"
    ),
    Word(
        english: "marry",
        tagalog: "magpakasal",
        ilocano: "makiasawa",
        pangasinense: "miasawa"
    ),
    Word(
        english: "marsh",
        tagalog: "latian",
        ilocano: "pagmulaan",
        pangasinense: "tan"
    ),
    Word(
        english: "mast",
        tagalog: "palo",
        ilocano: "palo",
        pangasinense: "palo"
    ),
    Word(
        english: "master",
        tagalog: "panginoon",
        ilocano: "apo",
        pangasinense: "Katawan"
    ),
    Word(
        english: "mat",
        tagalog: "banig",
        ilocano: "agpatpatnag",
        pangasinense: "panay"
    ),
    Word(
        english: "match",
        tagalog: "tugma",
        ilocano: "maitutop",
        pangasinense: "Makatunongan"
    ),
    Word(
        english: "May",
        tagalog: "Mayo",
        ilocano: "Mayo",
        pangasinense: "Mayo"
    ),
    Word(
        english: "maybe",
        tagalog: "siguro",
        ilocano: "mabalin",
        pangasinense: "ompan"
    ),
    Word(
        english: "me",
        tagalog: "ako",
        ilocano: "siak",
        pangasinense: "ak"
    ),
    Word(
        english: "meaning",
        tagalog: "kahulugan",
        ilocano: "kaipapanan",
        pangasinense: "kabaliksan"
    ),
    Word(
        english: "meantime",
        tagalog: "pansamantala",
        ilocano: "temporario",
        pangasinense: "temporaryo labat"
    ),
    Word(
        english: "measure",
        tagalog: "sukat",
        ilocano: "sukat",
        pangasinense: "sukat"
    ),
    Word(
        english: "meat",
        tagalog: "karne",
        ilocano: "karne",
        pangasinense: "karne"
    ),
    Word(
        english: "meddle",
        tagalog: "makialam",
        ilocano: "makibiang",
        pangasinense: "mikonektaan"
    ),
    Word(
        english: "mediate",
        tagalog: "mamamagitan",
        ilocano: "agsakit ti nakem",
        pangasinense: "man-bully ed arum"
    ),
    Word(
        english: "medicine",
        tagalog: "gamot",
        ilocano: "agas",
        pangasinense: "tambal"
    ),
    Word(
        english: "meditate",
        tagalog: "magnilay",
        ilocano: "agpannuray",
        pangasinense: "manpupulong"
    ),
    Word(
        english: "meek",
        tagalog: "maamo",
        ilocano: "naalumamay",
        pangasinense: "maanos"
    ),
    Word(
        english: "meeting",
        tagalog: "pulong",
        ilocano: "gimong",
        pangasinense: "pantitipon"
    ),
    Word(
        english: "melon",
        tagalog: "melon",
        ilocano: "melon",
        pangasinense: "melon"
    ),
    Word(
        english: "member",
        tagalog: "miyembro",
        ilocano: "miembro",
        pangasinense: "membro na"
    ),
    Word(
        english: "memorial",
        tagalog: "alaala",
        ilocano: "lagipen",
        pangasinense: "nonot"
    ),
    Word(
        english: "memory",
        tagalog: "memorya",
        ilocano: "memorya",
        pangasinense: "memorya"
    ),
    Word(
        english: "mention",
        tagalog: "banggitin",
        ilocano: "dakamaten",
        pangasinense: "say"
    ),
    Word(
        english: "merchant",
        tagalog: "mangangalakal",
        ilocano: "negosiante",
        pangasinense: "negosyante"
    ),
    Word(
        english: "mercy",
        tagalog: "awa",
        ilocano: "panangngaasi",
        pangasinense: "panangasi"
    ),
    Word(
        english: "merit",
        tagalog: "karapatan",
        ilocano: "kalintegan",
        pangasinense: "karapatan"
    ),
    Word(
        english: "merry",
        tagalog: "masaya",
        ilocano: "naragsak",
        pangasinense: "maliket"
    ),
    Word(
        english: "message",
        tagalog: "mensahe",
        ilocano: "mensahe",
        pangasinense: "mensahe"
    ),
    Word(
        english: "method",
        tagalog: "paraan",
        ilocano: "wagas",
        pangasinense: "paraan"
    ),
    Word(
        english: "middle",
        tagalog: "gitna",
        ilocano: "tengnga",
        pangasinense: "pegley"
    ),
    Word(
        english: "midst",
        tagalog: "gitna",
        ilocano: "tengnga",
        pangasinense: "pegley"
    ),
    Word(
        english: "midwife",
        tagalog: "hilot",
        ilocano: "agkukutel",
        pangasinense: "agmakatunongan"
    ),
    Word(
        english: "mighty",
        tagalog: "makapangyarihan",
        ilocano: "nabileg",
        pangasinense: "makapanyari"
    ),
    Word(
        english: "mild",
        tagalog: "banayad",
        ilocano: "naalumamay",
        pangasinense: "ag-onlampas"
    ),
    Word(
        english: "milk",
        tagalog: "gatas",
        ilocano: "gatas",
        pangasinense: "gatas"
    ),
    Word(
        english: "million",
        tagalog: "milyon",
        ilocano: "milion",
        pangasinense: "milyon"
    ),
    Word(
        english: "mind",
        tagalog: "isip",
        ilocano: "panunot",
        pangasinense: "nonot"
    ),
    Word(
        english: "mine",
        tagalog: "aking",
        ilocano: "apay",
        pangasinense: "akin"
    ),
    Word(
        english: "mingle",
        tagalog: "makihalubilo",
        ilocano: "makilangenlangen",
        pangasinense: "miulop ed arum"
    ),
    Word(
        english: "minister",
        tagalog: "ministro",
        ilocano: "ministro",
        pangasinense: "ministro"
    ),
    Word(
        english: "minute",
        tagalog: "minuto",
        ilocano: "minuto",
        pangasinense: "minuto"
    ),
    Word(
        english: "miracle",
        tagalog: "himala",
        ilocano: "milagro",
        pangasinense: "milagro"
    ),
    Word(
        english: "mirror",
        tagalog: "salamin",
        ilocano: "sarming",
        pangasinense: "salamin"
    ),
    Word(
        english: "mischief",
        tagalog: "kalokohan",
        ilocano: "kinamaag",
        pangasinense: "andi-kakanaan"
    ),
    Word(
        english: "misery",
        tagalog: "dalamhati",
        ilocano: "iti puso",
        pangasinense: "ed puso"
    ),
    Word(
        english: "mission",
        tagalog: "misyon",
        ilocano: "mision",
        pangasinense: "misyon"
    ),
    Word(
        english: "mistake",
        tagalog: "pagkakamali",
        ilocano: "biddut",
        pangasinense: "lingo"
    ),
    Word(
        english: "misunderstand",
        tagalog: "di maintindihan",
        ilocano: "saan a maawatan",
        pangasinense: "agnatalosan"
    ),
    Word(
        english: "mix",
        tagalog: "ihalo",
        ilocano: "naglalaok",
        pangasinense: "inlaok"
    ),
    Word(
        english: "mob",
        tagalog: "nagkakagulong tao",
        ilocano: "agrirririri dagiti tattao",
        pangasinense: "saray totoo so agmakapansiansia"
    ),
    Word(
        english: "mock",
        tagalog: "tuksuhin",
        ilocano: "mangsulisog",
        pangasinense: "manpasnok"
    ),
    Word(
        english: "modify",
        tagalog: "baguhin",
        ilocano: "baliwan",
        pangasinense: "manguman"
    ),
    Word(
        english: "moist",
        tagalog: "mamasa-masa",
        ilocano: "aglablabes",
        pangasinense: "mabetbet a mansalita"
    ),
    Word(
        english: "money",
        tagalog: "pera",
        ilocano: "kuarta",
        pangasinense: "kuarta"
    ),
    Word(
        english: "monkey",
        tagalog: "unggoy",
        ilocano: "kalakian",
        pangasinense: "monkey"
    ),
    Word(
        english: "month",
        tagalog: "buwan",
        ilocano: "bulan",
        pangasinense: "bulan"
    ),
    Word(
        english: "monthly",
        tagalog: "buwanan",
        ilocano: "bulan",
        pangasinense: "bulan"
    ),
    Word(
        english: "moon",
        tagalog: "buwan",
        ilocano: "bulan",
        pangasinense: "bulan"
    ),
    Word(
        english: "more",
        tagalog: "higit pa",
        ilocano: "ad-adu pay",
        pangasinense: "mas dakel ni"
    ),
    Word(
        english: "moreover",
        tagalog: "bukod pa rito",
        ilocano: "malaksid iti dayta",
        pangasinense: "tan ontan met"
    ),
    Word(
        english: "morning",
        tagalog: "umaga",
        ilocano: "bigat",
        pangasinense: "kabwasan"
    ),
    Word(
        english: "mortal",
        tagalog: "mortal",
        ilocano: "mortal",
        pangasinense: "ompatey"
    ),
    Word(
        english: "mosquito",
        tagalog: "lamok",
        ilocano: "lamok",
        pangasinense: "lamok"
    ),
    Word(
        english: "most",
        tagalog: "pinakamarami",
        ilocano: "kaaduan",
        pangasinense: "sankarakelan"
    ),
    Word(
        english: "mother",
        tagalog: "ina",
        ilocano: "ina",
        pangasinense: "nanay"
    ),
    Word(
        english: "motion",
        tagalog: "galaw",
        ilocano: "panagtigtignay",
        pangasinense: "kagagawa"
    ),
    Word(
        english: "mount",
        tagalog: "sumakay",
        ilocano: "agsakay",
        pangasinense: "onloob"
    ),
    Word(
        english: "mountain",
        tagalog: "bundok",
        ilocano: "bantay",
        pangasinense: "palandey"
    ),
    Word(
        english: "mourn",
        tagalog: "magluksa",
        ilocano: "aglablabes",
        pangasinense: "manlukso"
    ),
    Word(
        english: "mouse",
        tagalog: "daga",
        ilocano: "daga",
        pangasinense: "dalin"
    ),
    Word(
        english: "mouth",
        tagalog: "bibig",
        ilocano: "ngiwat",
        pangasinense: "sangi"
    ),
    Word(
        english: "move",
        tagalog: "gumalaw",
        ilocano: "aggargaraw",
        pangasinense: "onalis-alis"
    ),
    Word(
        english: "much",
        tagalog: "marami",
        ilocano: "adu",
        pangasinense: "dakél"
    ),
    Word(
        english: "mud",
        tagalog: "putik",
        ilocano: "putik",
        pangasinense: "pitek"
    ),
    Word(
        english: "multiply",
        tagalog: "paramihin",
        ilocano: "mangpaadu",
        pangasinense: "palaknaben"
    ),
    Word(
        english: "murmur",
        tagalog: "bulong",
        ilocano: "bulong",
        pangasinense: "bulong"
    ),
    Word(
        english: "mutton",
        tagalog: "karne ng tupa",
        ilocano: "karne ti karnero",
        pangasinense: "karne na karnero"
    ),
    Word(
        english: "my",
        tagalog: "aking",
        ilocano: "ti",
        pangasinense: "say"
    ),
    Word(
        english: "myself",
        tagalog: "sarili ko",
        ilocano: "ti bagik",
        pangasinense: "siak a mismo"
    ),
    Word(
        english: "nail",
        tagalog: "kuko",
        ilocano: "kuko",
        pangasinense: "na kuko"
    ),
    Word(
        english: "naked",
        tagalog: "hubad",
        ilocano: "patarus",
        pangasinense: "translation"
    ),
    Word(
        english: "name",
        tagalog: "pangalan",
        ilocano: "nagan",
        pangasinense: "ngaran"
    ),
    Word(
        english: "narrow",
        tagalog: "makitid",
        ilocano: "narrow",
        pangasinense: "mair-irap"
    ),
    Word(
        english: "nation",
        tagalog: "bansa",
        ilocano: "pagilian",
        pangasinense: "bansa"
    ),
    Word(
        english: "nature",
        tagalog: "kalikasan",
        ilocano: "nakaparsuaan",
        pangasinense: "kalikasan"
    ),
    Word(
        english: "near",
        tagalog: "malapit",
        ilocano: "asideg",
        pangasinense: "asingger"
    ),
    Word(
        english: "nearly",
        tagalog: "halos",
        ilocano: "dandani",
        pangasinense: "ngalngali"
    ),
    Word(
        english: "neat",
        tagalog: "maayos",
        ilocano: "nasayaat",
        pangasinense: "maong"
    ),
    Word(
        english: "necessary",
        tagalog: "kinakailangan",
        ilocano: "kasapulan",
        pangasinense: "kaukolan"
    ),
    Word(
        english: "neck",
        tagalog: "leeg",
        ilocano: "tengnged",
        pangasinense: "beklew"
    ),
    Word(
        english: "need",
        tagalog: "kailangan",
        ilocano: "kasapulan",
        pangasinense: "kaukolan"
    ),
    Word(
        english: "needle",
        tagalog: "karayom",
        ilocano: "karayom",
        pangasinense: "karayom"
    ),
    Word(
        english: "neglect",
        tagalog: "pabayaan",
        ilocano: "baybay-an",
        pangasinense: "paulyanan"
    ),
    Word(
        english: "negro",
        tagalog: "negro",
        ilocano: "Negro",
        pangasinense: "say Negro"
    ),
    Word(
        english: "neighbor",
        tagalog: "kapitbahay",
        ilocano: "kaarruba",
        pangasinense: "kaabay"
    ),
    Word(
        english: "neither",
        tagalog: "alinman",
        ilocano: "aniaman",
        pangasinense: "anggan iner"
    ),
    Word(
        english: "nephew",
        tagalog: "pamangkin",
        ilocano: "kasinsinna",
        pangasinense: "panginaen"
    ),
    Word(
        english: "nerve",
        tagalog: "nerbiyos",
        ilocano: "madanagan",
        pangasinense: "maer-ermen"
    ),
    Word(
        english: "nest",
        tagalog: "pugad",
        ilocano: "umok",
        pangasinense: "ayaman"
    ),
    Word(
        english: "net",
        tagalog: "lambat",
        ilocano: "retina",
        pangasinense: "patit"
    ),
    Word(
        english: "never",
        tagalog: "hindi kailanman",
        ilocano: "pulos a saan",
        pangasinense: "agbalot"
    ),
    Word(
        english: "nevertheless",
        tagalog: "gayunpaman",
        ilocano: "kaskasdi",
        pangasinense: "balet"
    ),
    Word(
        english: "new",
        tagalog: "bago",
        ilocano: "baro",
        pangasinense: "balon"
    ),
    Word(
        english: "news",
        tagalog: "balita",
        ilocano: "damag",
        pangasinense: "balita"
    ),
    Word(
        english: "next",
        tagalog: "susunod",
        ilocano: "sumaruno",
        pangasinense: "onsublay"
    ),
    Word(
        english: "nice",
        tagalog: "mabait",
        ilocano: "nasingpet",
        pangasinense: "mapangasi"
    ),
    Word(
        english: "night",
        tagalog: "gabi",
        ilocano: "rabii",
        pangasinense: "labi"
    ),
    Word(
        english: "nine",
        tagalog: "siyam",
        ilocano: "siam",
        pangasinense: "siamera"
    ),
    Word(
        english: "no",
        tagalog: "hindi",
        ilocano: "saan",
        pangasinense: "andi"
    ),
    Word(
        english: "noble",
        tagalog: "marangal",
        ilocano: "nadayaw",
        pangasinense: "marespeto"
    ),
    Word(
        english: "nod",
        tagalog: "tango",
        ilocano: "tango",
        pangasinense: "tango"
    ),
    Word(
        english: "noise",
        tagalog: "ingay",
        ilocano: "uni",
        pangasinense: "tan"
    ),
    Word(
        english: "none",
        tagalog: "wala",
        ilocano: "awan",
        pangasinense: "anggapo"
    ),
    Word(
        english: "noon",
        tagalog: "tanghali",
        ilocano: "tengnga ti aldaw",
        pangasinense: "ngarem"
    ),
    Word(
        english: "nor",
        tagalog: "ni",
        ilocano: "ti",
        pangasinense: "nen"
    ),
    Word(
        english: "north",
        tagalog: "hilaga",
        ilocano: "amianan",
        pangasinense: "amianen"
    ),
    Word(
        english: "nose",
        tagalog: "ilong",
        ilocano: "agong",
        pangasinense: "ilong"
    ),
    Word(
        english: "not",
        tagalog: "hindi",
        ilocano: "saan",
        pangasinense: "andi"
    ),
    Word(
        english: "nothing",
        tagalog: "wala",
        ilocano: "awan",
        pangasinense: "anggapo"
    ),
    Word(
        english: "notice",
        tagalog: "mapansin",
        ilocano: "madlaw",
        pangasinense: "man-obserba"
    ),
    Word(
        english: "noun",
        tagalog: "pangngalan",
        ilocano: "nagan",
        pangasinense: "ngaran"
    ),
    Word(
        english: "November",
        tagalog: "Nobyembre",
        ilocano: "Nobiembre",
        pangasinense: "Nobyembre"
    ),
    Word(
        english: "now",
        tagalog: "ngayon",
        ilocano: "ita",
        pangasinense: "natan"
    ),
    Word(
        english: "nude",
        tagalog: "hubad",
        ilocano: "patarus",
        pangasinense: "translation"
    ),
    Word(
        english: "number",
        tagalog: "numero",
        ilocano: "numero",
        pangasinense: "bilang"
    ),
    Word(
        english: "nut",
        tagalog: "mani",
        ilocano: "manias",
        pangasinense: "mani"
    ),
    Word(
        english: "nut (shell)",
        tagalog: "balat ng mani",
        ilocano: "balatong ti mani",
        pangasinense: "balatyang na mani"
    ),
    Word(
        english: "oar",
        tagalog: "sagwan",
        ilocano: "sagut",
        pangasinense: "regalo"
    ),
    Word(
        english: "oath",
        tagalog: "panunumpa",
        ilocano: "panagsapata",
        pangasinense: "pansamba"
    ),
    Word(
        english: "obey",
        tagalog: "sumunod",
        ilocano: "sumurot",
        pangasinense: "ontumbok"
    ),
    Word(
        english: "object",
        tagalog: "bagay",
        ilocano: "banag",
        pangasinense: "bengatla"
    ),
    Word(
        english: "obscure",
        tagalog: "malabo",
        ilocano: "nabulsek",
        pangasinense: "aliwliwa"
    ),
    Word(
        english: "observe",
        tagalog: "obserbahan",
        ilocano: "obserbasion",
        pangasinense: "obserbasyon"
    ),
    Word(
        english: "obtain",
        tagalog: "makuha",
        ilocano: "magun-odan",
        pangasinense: "naala"
    ),
    Word(
        english: "occasion",
        tagalog: "okasyon",
        ilocano: "okasion",
        pangasinense: "okasyon"
    ),
    Word(
        english: "occupation",
        tagalog: "trabaho",
        ilocano: "trabaho",
        pangasinense: "trabaho"
    ),
    Word(
        english: "occupy",
        tagalog: "sakupin",
        ilocano: "sakupen",
        pangasinense: "sakopen"
    ),
    Word(
        english: "occur",
        tagalog: "mangyari",
        ilocano: "mapasamak",
        pangasinense: "nagawa"
    ),
    Word(
        english: "ocean",
        tagalog: "karagatan",
        ilocano: "baybay",
        pangasinense: "dayat"
    ),
    Word(
        english: "October",
        tagalog: "Oktubre",
        ilocano: "Oktubre",
        pangasinense: "Oktubre"
    ),
    Word(
        english: "odd",
        tagalog: "kakaiba",
        ilocano: "naidumduma",
        pangasinense: "nikadkaduma"
    ),
    Word(
        english: "odor",
        tagalog: "amoy",
        ilocano: "angot",
        pangasinense: "amoy"
    ),
    Word(
        english: "off",
        tagalog: "patay (for devices) / malayo (position)",
        ilocano: "patay (for devices) / adayo (position)",
        pangasinense: "inatey (for devices) / arawi (position)"
    ),
    Word(
        english: "offer",
        tagalog: "mag-alok",
        ilocano: "mangted",
        pangasinense: "mangiter"
    ),
    Word(
        english: "offering",
        tagalog: "alay",
        ilocano: "panagsakripisio",
        pangasinense: "alay"
    ),
    Word(
        english: "official",
        tagalog: "opisyal",
        ilocano: "opisial",
        pangasinense: "opisyal"
    ),
    Word(
        english: "often",
        tagalog: "madalas",
        ilocano: "masansan",
        pangasinense: "lanang"
    ),
    Word(
        english: "oil",
        tagalog: "langis",
        ilocano: "lana",
        pangasinense: "larak"
    ),
    Word(
        english: "ointment",
        tagalog: "pamahid",
        ilocano: "pangpulot",
        pangasinense: "pamalmo"
    ),
    Word(
        english: "old",
        tagalog: "matanda",
        ilocano: "nataengan",
        pangasinense: "matatken la"
    ),
    Word(
        english: "omen",
        tagalog: "palatandaan",
        ilocano: "tanda",
        pangasinense: "tanda"
    ),
    Word(
        english: "omit",
        tagalog: "alisin",
        ilocano: "ikkaten",
        pangasinense: "ekalen"
    ),
    Word(
        english: "on",
        tagalog: "bukas (for devices) / sa ibabaw (position)",
        ilocano: "open (for devices) / iti ngato (position)",
        pangasinense: "open (for devices) / ontop (position)"
    ),
    Word(
        english: "once",
        tagalog: "isang beses",
        ilocano: "naminsan",
        pangasinense: "aminsan"
    ),
    Word(
        english: "one",
        tagalog: "isa",
        ilocano: "maysa",
        pangasinense: "sakey"
    ),
    Word(
        english: "only",
        tagalog: "lamang",
        ilocano: "laeng",
        pangasinense: "labat"
    ),
    Word(
        english: "open",
        tagalog: "buksan",
        ilocano: "manglukat",
        pangasinense: "lukasan"
    ),
    Word(
        english: "opinion",
        tagalog: "opinyon",
        ilocano: "opinion",
        pangasinense: "opinyon"
    ),
    Word(
        english: "oppose",
        tagalog: "salungatin",
        ilocano: "salungatin",
        pangasinense: "say so"
    ),
    Word(
        english: "opposite",
        tagalog: "kabaligtaran",
        ilocano: "ti kasumbangirna",
        pangasinense: "kabaliktaran"
    ),
    Word(
        english: "oppressor",
        tagalog: "mang-aapi",
        ilocano: "mangirurumen",
        pangasinense: "manpapairap"
    ),
    Word(
        english: "oral",
        tagalog: "pasalita",
        ilocano: "agsao",
        pangasinense: "mansalita"
    ),
    Word(
        english: "orange",
        tagalog: "kahel",
        ilocano: "kahel",
        pangasinense: "kahel"
    ),
    Word(
        english: "order",
        tagalog: "utos",
        ilocano: "bilin",
        pangasinense: "ganggan"
    ),
    Word(
        english: "ordinary",
        tagalog: "karaniwan",
        ilocano: "kadawyan",
        pangasinense: "ordinaryon"
    ),
    Word(
        english: "origin",
        tagalog: "pinagmulan",
        ilocano: "taudan",
        pangasinense: "nanlapuan"
    ),
    Word(
        english: "ornament",
        tagalog: "palamuti",
        ilocano: "dekorasion",
        pangasinense: "dekorasyon"
    ),
    Word(
        english: "other",
        tagalog: "iba",
        ilocano: "dadduma pay",
        pangasinense: "arum"
    ),
    Word(
        english: "ought",
        tagalog: "dapat",
        ilocano: "rumbeng",
        pangasinense: "nepeg"
    ),
    Word(
        english: "our",
        tagalog: "aming/atin",
        ilocano: "ti/dagiti",
        pangasinense: "mi mi mi mi mi mi so"
    ),
    Word(
        english: "out",
        tagalog: "labas",
        ilocano: "iti ruar",
        pangasinense: "paway"
    ),
    Word(
        english: "outfit",
        tagalog: "kasuotan",
        ilocano: "kawes",
        pangasinense: "kawes"
    ),
    Word(
        english: "outlet",
        tagalog: "saksakan",
        ilocano: "agkakapet",
        pangasinense: "tan"
    ),
    Word(
        english: "outrage",
        tagalog: "pagkagalit",
        ilocano: "panagpungtot",
        pangasinense: "sakit na linawa"
    ),
    Word(
        english: "outside",
        tagalog: "labas",
        ilocano: "iti ruar",
        pangasinense: "paway"
    ),
    Word(
        english: "over",
        tagalog: "sa ibabaw",
        ilocano: "iti rabaw",
        pangasinense: "diad tapew na dalin"
    ),
    Word(
        english: "overcome",
        tagalog: "madaig",
        ilocano: "maparmek",
        pangasinense: "manalo"
    ),
    Word(
        english: "owe",
        tagalog: "utang",
        ilocano: "utang",
        pangasinense: "utang"
    ),
    Word(
        english: "owl",
        tagalog: "kuwago",
        ilocano: "baka",
        pangasinense: "manpupulong"
    ),
    Word(
        english: "ox",
        tagalog: "baka",
        ilocano: "baka",
        pangasinense: "baka"
    ),
    Word(
        english: "package",
        tagalog: "pakete",
        ilocano: "pakete",
        pangasinense: "pawit"
    ),
    Word(
        english: "page",
        tagalog: "pahina",
        ilocano: "panid",
        pangasinense: "pahina"
    ),
    Word(
        english: "pain",
        tagalog: "sakit",
        ilocano: "ut-ot",
        pangasinense: "sakit"
    ),
    Word(
        english: "palate",
        tagalog: "panlasa",
        ilocano: "lapayag",
        pangasinense: "panga"
    ),
    Word(
        english: "pale",
        tagalog: "maputla",
        ilocano: "nalusiaw",
        pangasinense: "mapusisaw"
    ),
    Word(
        english: "palm",
        tagalog: "palad",
        ilocano: "dakulap",
        pangasinense: "palma"
    ),
    Word(
        english: "palsy",
        tagalog: "paralisado",
        ilocano: "paralisado",
        pangasinense: "parasy"
    ),
    Word(
        english: "pan",
        tagalog: "pan",
        ilocano: "paryok",
        pangasinense: "kawali"
    ),
    Word(
        english: "panic",
        tagalog: "panic",
        ilocano: "riribuk",
        pangasinense: "nataranta"
    ),
    Word(
        english: "parade",
        tagalog: "parada",
        ilocano: "parada",
        pangasinense: "parada"
    ),
    Word(
        english: "parallel",
        tagalog: "parallel",
        ilocano: "parallel",
        pangasinense: "mipara"
    ),
    Word(
        english: "paralytic",
        tagalog: "paralitiko",
        ilocano: "paralitiko",
        pangasinense: "paralitiko"
    ),
    Word(
        english: "parcel",
        tagalog: "parsela",
        ilocano: "bungon",
        pangasinense: "abalkot a pawit"
    ),
    Word(
        english: "parch",
        tagalog: "tuyot",
        ilocano: "parch",
        pangasinense: "parch"
    ),
    Word(
        english: "pardon",
        tagalog: "patawad",
        ilocano: "pakawan",
        pangasinense: "perdona"
    ),
    Word(
        english: "pare",
        tagalog: "pare",
        ilocano: "pare",
        pangasinense: "pare"
    ),
    Word(
        english: "parent",
        tagalog: "magulang",
        ilocano: "nagannak",
        pangasinense: "ateng"
    ),
    Word(
        english: "part",
        tagalog: "bahagi",
        ilocano: "paset",
        pangasinense: "parte"
    ),
    Word(
        english: "partition",
        tagalog: "pagkahati",
        ilocano: "panagbingaybingay",
        pangasinense: "partisyon"
    ),
    Word(
        english: "partner",
        tagalog: "partner",
        ilocano: "kaasmang",
        pangasinense: "kaiba"
    ),
    Word(
        english: "pass",
        tagalog: "pumasa",
        ilocano: "ipasa",
        pangasinense: "ipasa"
    ),
    Word(
        english: "bypass",
        tagalog: "bypass",
        ilocano: "bypass ti panag-bypass",
        pangasinense: "bypass"
    ),
    Word(
        english: "passenger",
        tagalog: "pasahero",
        ilocano: "pasahero",
        pangasinense: "pasahero"
    ),
    Word(
        english: "past",
        tagalog: "nakaraan",
        ilocano: "napalabas",
        pangasinense: "apalabas"
    ),
    Word(
        english: "pat",
        tagalog: "tapik",
        ilocano: "pat",
        pangasinense: "pat"
    ),
    Word(
        english: "path",
        tagalog: "landas",
        ilocano: "dalan",
        pangasinense: "dalan"
    ),
    Word(
        english: "patient",
        tagalog: "pasyente",
        ilocano: "pasiente",
        pangasinense: "maanos"
    ),
    Word(
        english: "pay",
        tagalog: "magbayad",
        ilocano: "agbayad",
        pangasinense: "manbayar"
    ),
    Word(
        english: "peace",
        tagalog: "kapayapaan",
        ilocano: "kapia",
        pangasinense: "kareenen"
    ),
    Word(
        english: "peck",
        tagalog: "halik",
        ilocano: "peck ti peck",
        pangasinense: "tuktok"
    ),
    Word(
        english: "peculiar",
        tagalog: "kakaiba",
        ilocano: "naidumduma",
        pangasinense: "nikaduma"
    ),
    Word(
        english: "peel",
        tagalog: "balatan",
        ilocano: "ukisan",
        pangasinense: "ubakan"
    ),
    Word(
        english: "peep",
        tagalog: "sumilip",
        ilocano: "agsiput",
        pangasinense: "nengnengen"
    ),
    Word(
        english: "pencil",
        tagalog: "lapis",
        ilocano: "lapis",
        pangasinense: "lapis"
    ),
    Word(
        english: "people",
        tagalog: "mga tao",
        ilocano: "tattao",
        pangasinense: "too"
    ),
    Word(
        english: "perch",
        tagalog: "dumapo",
        ilocano: "perch",
        pangasinense: "perch"
    ),
    Word(
        english: "perfect",
        tagalog: "perpekto",
        ilocano: "naan-anay",
        pangasinense: "perpekto"
    ),
    Word(
        english: "perform",
        tagalog: "gumanap",
        ilocano: "aramiden",
        pangasinense: "manggawa"
    ),
    Word(
        english: "perfume",
        tagalog: "pabango",
        ilocano: "bangbanglo",
        pangasinense: "pabalingit"
    ),
    Word(
        english: "perhaps",
        tagalog: "marahil",
        ilocano: "nalabit",
        pangasinense: "nayarin"
    ),
    Word(
        english: "peril",
        tagalog: "panganib",
        ilocano: "peggad",
        pangasinense: "peligro"
    ),
    Word(
        english: "period",
        tagalog: "panahon",
        ilocano: "panawen",
        pangasinense: "panaon"
    ),
    Word(
        english: "perish",
        tagalog: "mapahamak",
        ilocano: "madadael",
        pangasinense: "ompatey"
    ),
    Word(
        english: "permanent",
        tagalog: "permanente",
        ilocano: "permanente",
        pangasinense: "permanente"
    ),
    Word(
        english: "permit",
        tagalog: "pahintulot",
        ilocano: "pammalubos",
        pangasinense: "permiso"
    ),
    Word(
        english: "perpendicular",
        tagalog: "patayo",
        ilocano: "perpendikular nga",
        pangasinense: "perpendikular"
    ),
    Word(
        english: "perplex",
        tagalog: "pagkataranta",
        ilocano: "mariribukan",
        pangasinense: "mankelaw"
    ),
    Word(
        english: "persist",
        tagalog: "magpumilit",
        ilocano: "agtultuloy",
        pangasinense: "mantultuloy"
    ),
    Word(
        english: "person",
        tagalog: "tao",
        ilocano: "tao",
        pangasinense: "too"
    ),
    Word(
        english: "perspire",
        tagalog: "pawisan",
        ilocano: "ling-et ti ling-et",
        pangasinense: "manpawis"
    ),
    Word(
        english: "pest",
        tagalog: "peste",
        ilocano: "peste",
        pangasinense: "peste"
    ),
    Word(
        english: "pet",
        tagalog: "alagang hayop",
        ilocano: "alaga",
        pangasinense: "alagan ayep"
    ),
    Word(
        english: "petition",
        tagalog: "petisyon",
        ilocano: "petision ti petision",
        pangasinense: "petisyon"
    ),
    Word(
        english: "phosphorescence",
        tagalog: "phosphorescence",
        ilocano: "ti posforosensia",
        pangasinense: "phosphorescence"
    ),
    Word(
        english: "physical",
        tagalog: "pisikal",
        ilocano: "pisikal",
        pangasinense: "pisikal"
    ),
    Word(
        english: "pick",
        tagalog: "pumili",
        ilocano: "piduten",
        pangasinense: "manpili"
    ),
    Word(
        english: "pickle",
        tagalog: "atsara",
        ilocano: "atsara",
        pangasinense: "atsara"
    ),
    Word(
        english: "piece",
        tagalog: "piraso",
        ilocano: "piraso",
        pangasinense: "piraso"
    ),
    Word(
        english: "pierce",
        tagalog: "tumagos",
        ilocano: "ti panangtubkol",
        pangasinense: "tusok"
    ),
    Word(
        english: "pig",
        tagalog: "baboy",
        ilocano: "baboy",
        pangasinense: "baboy"
    ),
    Word(
        english: "pigeon",
        tagalog: "kalapati",
        ilocano: "kalapati",
        pangasinense: "kalapati"
    ),
    Word(
        english: "pile",
        tagalog: "bunton",
        ilocano: "ummongen",
        pangasinense: "bunton"
    ),
    Word(
        english: "pillow",
        tagalog: "unan",
        ilocano: "pungan",
        pangasinense: "danganan"
    ),
    Word(
        english: "pin",
        tagalog: "pin",
        ilocano: "iyaspili",
        pangasinense: "pin"
    ),
    Word(
        english: "pinch",
        tagalog: "kurutin",
        ilocano: "pinch",
        pangasinense: "kurot"
    ),
    Word(
        english: "pipe",
        tagalog: "tubo",
        ilocano: "tubo",
        pangasinense: "tubo"
    ),
    Word(
        english: "pit",
        tagalog: "hukay",
        ilocano: "nauneg nga abot",
        pangasinense: "abot"
    ),
    Word(
        english: "pitch",
        tagalog: "pitch",
        ilocano: "angtem",
        pangasinense: "tono"
    ),
    Word(
        english: "pith",
        tagalog: "pith",
        ilocano: "pith",
        pangasinense: "pith"
    ),
    Word(
        english: "pity",
        tagalog: "kawawa naman",
        ilocano: "asi",
        pangasinense: "kasian"
    ),
    Word(
        english: "pivot",
        tagalog: "pivot",
        ilocano: "pivot ti",
        pangasinense: "pivot"
    ),
    Word(
        english: "place",
        tagalog: "lugar",
        ilocano: "lugar",
        pangasinense: "pasen"
    ),
    Word(
        english: "plague",
        tagalog: "salot",
        ilocano: "sakit",
        pangasinense: "salot"
    ),
    Word(
        english: "plain",
        tagalog: "payak",
        ilocano: "tanap",
        pangasinense: "patar"
    ),
    Word(
        english: "plan",
        tagalog: "plano",
        ilocano: "plano",
        pangasinense: "plano"
    ),
    Word(
        english: "plant",
        tagalog: "halaman",
        ilocano: "tanem",
        pangasinense: "itanem"
    ),
    Word(
        english: "plantation",
        tagalog: "plantasyon",
        ilocano: "plantasion",
        pangasinense: "plantasyon"
    ),
    Word(
        english: "plate",
        tagalog: "plato",
        ilocano: "pinggan",
        pangasinense: "plata"
    ),
    Word(
        english: "play",
        tagalog: "maglaro",
        ilocano: "agay-ayam",
        pangasinense: "mangalaw"
    ),
    Word(
        english: "plead",
        tagalog: "pakiusap",
        ilocano: "agpakaasi",
        pangasinense: "kerew"
    ),
    Word(
        english: "pleasant",
        tagalog: "kaaya-aya",
        ilocano: "nagin-awa",
        pangasinense: "makapaliket"
    ),
    Word(
        english: "please",
        tagalog: "pakiusap",
        ilocano: "maidawat",
        pangasinense: "ipangasim"
    ),
    Word(
        english: "pleasure",
        tagalog: "kasiyahan",
        ilocano: "ayo",
        pangasinense: "liket"
    ),
    Word(
        english: "pledge",
        tagalog: "pangako",
        ilocano: "agkari",
        pangasinense: "pangisipan"
    ),
    Word(
        english: "plenty",
        tagalog: "marami",
        ilocano: "adu",
        pangasinense: "dakel"
    ),
    Word(
        english: "plot",
        tagalog: "balangkas",
        ilocano: "panggep",
        pangasinense: "plano"
    ),
    Word(
        english: "plow",
        tagalog: "araro",
        ilocano: "arado",
        pangasinense: "arado"
    ),
    Word(
        english: "plug",
        tagalog: "plug",
        ilocano: "isaksak",
        pangasinense: "isaksak"
    ),
    Word(
        english: "plunder",
        tagalog: "pandarambong",
        ilocano: "samsam",
        pangasinense: "panagsamsam"
    ),
    Word(
        english: "plunge",
        tagalog: "plunge",
        ilocano: "agdisso",
        pangasinense: "onlelereg"
    ),
    Word(
        english: "pocket",
        tagalog: "bulsa",
        ilocano: "bulsa",
        pangasinense: "bulsa"
    ),
    Word(
        english: "point",
        tagalog: "punto",
        ilocano: "punto",
        pangasinense: "punto"
    ),
    Word(
        english: "poison",
        tagalog: "lason",
        ilocano: "sabidong",
        pangasinense: "samal"
    ),
    Word(
        english: "poke",
        tagalog: "sundutin",
        ilocano: "poke",
        pangasinense: "tusok"
    ),
    Word(
        english: "pole",
        tagalog: "poste",
        ilocano: "poste",
        pangasinense: "poste"
    ),
    Word(
        english: "pond",
        tagalog: "lawa",
        ilocano: "basaw",
        pangasinense: "linok"
    ),
    Word(
        english: "poor",
        tagalog: "mahirap",
        ilocano: "napanglaw",
        pangasinense: "mairap"
    ),
    Word(
        english: "pork",
        tagalog: "baboy",
        ilocano: "karne ti baboy",
        pangasinense: "karne na baboy"
    ),
    Word(
        english: "portion",
        tagalog: "bahagi",
        ilocano: "paset",
        pangasinense: "porsyon"
    ),
    Word(
        english: "position",
        tagalog: "posisyon",
        ilocano: "posision",
        pangasinense: "posisyon"
    ),
    Word(
        english: "postpone",
        tagalog: "ipagpaliban",
        ilocano: "itantan",
        pangasinense: "ipaleen"
    ),
    Word(
        english: "pound",
        tagalog: "libra",
        ilocano: "dekdeken",
        pangasinense: "mekmeken"
    ),
    Word(
        english: "pour",
        tagalog: "ibuhos",
        ilocano: "ibukbok",
        pangasinense: "ibuntok"
    ),
    Word(
        english: "powder",
        tagalog: "pulbos",
        ilocano: "pulbos",
        pangasinense: "pulbos"
    ),
    Word(
        english: "power",
        tagalog: "kapangyarihan",
        ilocano: "puersa",
        pangasinense: "pakayari"
    ),
    Word(
        english: "praise",
        tagalog: "papuri",
        ilocano: "itan-ok",
        pangasinense: "pandayew"
    ),
    Word(
        english: "pray",
        tagalog: "manalangin",
        ilocano: "agkararag",
        pangasinense: "manpikasi"
    ),
    Word(
        english: "prayer",
        tagalog: "panalangin",
        ilocano: "kararag",
        pangasinense: "pikakasi"
    ),
    Word(
        english: "preach",
        tagalog: "mangaral",
        ilocano: "mangasaba",
        pangasinense: "manpulong"
    ),
    Word(
        english: "preacher",
        tagalog: "mangangaral",
        ilocano: "manangaskasaba",
        pangasinense: "managpulong"
    ),
    Word(
        english: "precious",
        tagalog: "mahalaga",
        ilocano: "nagameng",
        pangasinense: "mabmabli"
    ),
    Word(
        english: "predict",
        tagalog: "hulaan",
        ilocano: "ipadles",
        pangasinense: "ipapasakbay"
    ),
    Word(
        english: "preface",
        tagalog: "paunang salita",
        ilocano: "pakauna",
        pangasinense: "pauna"
    ),
    Word(
        english: "prefer",
        tagalog: "mas gusto",
        ilocano: "ipangruna",
        pangasinense: "mas labay"
    ),
    Word(
        english: "prefix",
        tagalog: "unlapi",
        ilocano: "pangrugian",
        pangasinense: "prefix"
    ),
    Word(
        english: "pregnant",
        tagalog: "buntis",
        ilocano: "masikug",
        pangasinense: "malukon"
    ),
    Word(
        english: "prepare",
        tagalog: "maghanda",
        ilocano: "isagana",
        pangasinense: "manparaan"
    ),
    Word(
        english: "preserve",
        tagalog: "ingatan",
        ilocano: "artemen",
        pangasinense: "napansiansia"
    ),
    Word(
        english: "press",
        tagalog: "pindutin",
        ilocano: "pagmalditan",
        pangasinense: "imprentaan"
    ),
    Word(
        english: "pretend",
        tagalog: "magpanggap",
        ilocano: "iyarig",
        pangasinense: "mankunwari"
    ),
    Word(
        english: "pretty",
        tagalog: "maganda",
        ilocano: "napintas",
        pangasinense: "balibali"
    ),
    Word(
        english: "prevent",
        tagalog: "pigilan",
        ilocano: "maatipa",
        pangasinense: "iwasan"
    ),
    Word(
        english: "price",
        tagalog: "presyo",
        ilocano: "presio",
        pangasinense: "presyo"
    ),
    Word(
        english: "prick",
        tagalog: "tusok",
        ilocano: "tudok",
        pangasinense: "tusok"
    ),
    Word(
        english: "pride",
        tagalog: "pagmamalaki",
        ilocano: "sindayag",
        pangasinense: "kinon"
    ),
    Word(
        english: "priest",
        tagalog: "pari",
        ilocano: "padi",
        pangasinense: "pari"
    ),
    Word(
        english: "print",
        tagalog: "print",
        ilocano: "imprenta",
        pangasinense: "man-print"
    ),
    Word(
        english: "prison",
        tagalog: "bilangguan",
        ilocano: "pagbaludan",
        pangasinense: "prisoan"
    ),
    Word(
        english: "prisoner",
        tagalog: "bilanggo",
        ilocano: "balud",
        pangasinense: "priso"
    ),
    Word(
        english: "privilege",
        tagalog: "pribilehiyo",
        ilocano: "gundaway",
        pangasinense: "pribilehiyo"
    ),
    Word(
        english: "probably",
        tagalog: "malamang",
        ilocano: "sa",
        pangasinense: "nayarin"
    ),
    Word(
        english: "proceed",
        tagalog: "magpatuloy",
        ilocano: "ituloy",
        pangasinense: "ituloy"
    ),
    Word(
        english: "process",
        tagalog: "proseso",
        ilocano: "proseso",
        pangasinense: "proseso"
    ),
    Word(
        english: "procession",
        tagalog: "prusisyon",
        ilocano: "prosesion",
        pangasinense: "prusisyon"
    ),
    Word(
        english: "proclaim",
        tagalog: "ipahayag",
        ilocano: "iwaragawag",
        pangasinense: "iyabawag"
    ),
    Word(
        english: "procure",
        tagalog: "kumuha",
        ilocano: "procure ti panaggatang",
        pangasinense: "mangaliw"
    ),
    Word(
        english: "profit",
        tagalog: "tubo",
        ilocano: "ganansia",
        pangasinense: "gunggona"
    ),
    Word(
        english: "profound",
        tagalog: "malalim",
        ilocano: "naliweng",
        pangasinense: "aralem"
    ),
    Word(
        english: "progress",
        tagalog: "pag-unlad",
        ilocano: "pagannayasan",
        pangasinense: "iyaaligwas"
    ),
    Word(
        english: "prolong",
        tagalog: "pahabain",
        ilocano: "agpaatiddog",
        pangasinense: "manbayag"
    ),
    Word(
        english: "promise",
        tagalog: "pangako",
        ilocano: "kari",
        pangasinense: "sipan"
    ),
    Word(
        english: "pronounce",
        tagalog: "bigkasin",
        ilocano: "ibalikas",
        pangasinense: "ibalikas"
    ),
    Word(
        english: "proof",
        tagalog: "patunay",
        ilocano: "ebidensia",
        pangasinense: "prueba"
    ),
    Word(
        english: "prop",
        tagalog: "prop",
        ilocano: "prop",
        pangasinense: "prop"
    ),
    Word(
        english: "property",
        tagalog: "ari-arian",
        ilocano: "sanikua",
        pangasinense: "kayarian"
    ),
    Word(
        english: "prophecy",
        tagalog: "propesiya",
        ilocano: "padto",
        pangasinense: "propesiya"
    ),
    Word(
        english: "prospect",
        tagalog: "inaasam-asam",
        ilocano: "makitkita",
        pangasinense: "ilaloan"
    ),
    Word(
        english: "prosper",
        tagalog: "umunlad",
        ilocano: "rumang-ay",
        pangasinense: "onaligwas"
    ),
    Word(
        english: "prostitute",
        tagalog: "kalapating mababa ang lipad",
        ilocano: "balangkantis",
        pangasinense: "balangkantis"
    ),
    Word(
        english: "protect",
        tagalog: "protektahan",
        ilocano: "salakniban",
        pangasinense: "protektaan"
    ),
    Word(
        english: "protest",
        tagalog: "protesta",
        ilocano: "protesta",
        pangasinense: "manprotesta"
    ),
    Word(
        english: "proud",
        tagalog: "ipinagmamalaki",
        ilocano: "palangguad",
        pangasinense: "mapaatagey"
    ),
    Word(
        english: "proverb",
        tagalog: "salawikain",
        ilocano: "proverbio",
        pangasinense: "uliran"
    ),
    Word(
        english: "provide",
        tagalog: "magbigay",
        ilocano: "agited",
        pangasinense: "mangitarya"
    ),
    Word(
        english: "provoke",
        tagalog: "pukawin",
        ilocano: "provoke",
        pangasinense: "manpasnok"
    ),
    Word(
        english: "public",
        tagalog: "pampubliko",
        ilocano: "publiko",
        pangasinense: "puibliko"
    ),
    Word(
        english: "publish",
        tagalog: "ilathala",
        ilocano: "ipablaak",
        pangasinense: "ipalapag"
    ),
    Word(
        english: "puddle",
        tagalog: "lusak",
        ilocano: "puddle",
        pangasinense: "puddle"
    ),
    Word(
        english: "pull",
        tagalog: "hilahin",
        ilocano: "guyuden",
        pangasinense: "guyor"
    ),
    Word(
        english: "punishment",
        tagalog: "parusa",
        ilocano: "dusa",
        pangasinense: "dusa"
    ),
    Word(
        english: "pup",
        tagalog: "tuta",
        ilocano: "ipus",
        pangasinense: "pup"
    ),
    Word(
        english: "purchase",
        tagalog: "pagbili",
        ilocano: "gumatang",
        pangasinense: "pansaliw"
    ),
    Word(
        english: "pure",
        tagalog: "dalisay",
        ilocano: "puro",
        pangasinense: "puro"
    ),
    Word(
        english: "purify",
        tagalog: "maglinis",
        ilocano: "dalusan",
        pangasinense: "linisan"
    ),
    Word(
        english: "purpose",
        tagalog: "layunin",
        ilocano: "pagayatan",
        pangasinense: "kayewan"
    ),
    Word(
        english: "purse",
        tagalog: "pitaka",
        ilocano: "purao",
        pangasinense: "purao"
    ),
    Word(
        english: "push",
        tagalog: "itulak",
        ilocano: "turugen",
        pangasinense: "itagtag"
    ),
    Word(
        english: "put",
        tagalog: "ilagay",
        ilocano: "isagana",
        pangasinense: "ipane"
    ),

    Word(
        english: "quality",
        tagalog: "kalidad",
        ilocano: "kalidad",
        pangasinense: "kalidad"
    ),
    Word(
        english: "quantity",
        tagalog: "dami",
        ilocano: "kaadu",
        pangasinense: "karakel"
    ),
    Word(
        english: "quarrel",
        tagalog: "pag-aaway",
        ilocano: "apa",
        pangasinense: "kolkolan"
    ),
    Word(
        english: "quarter",
        tagalog: "quarter",
        ilocano: "maipakat a paset",
        pangasinense: "painawaan"
    ),
    Word(
        english: "queer",
        tagalog: "queer",
        ilocano: "queer nga",
        pangasinense: "queer"
    ),
    Word(
        english: "quench",
        tagalog: "pawiin",
        ilocano: "iddepen",
        pangasinense: "paerepen"
    ),
    Word(
        english: "question",
        tagalog: "tanong",
        ilocano: "saludsod",
        pangasinense: "tepet"
    ),
    Word(
        english: "quick",
        tagalog: "mabilis",
        ilocano: "napartak",
        pangasinense: "tampol"
    ),
    Word(
        english: "quiet",
        tagalog: "tahimik",
        ilocano: "naulimek",
        pangasinense: "mareen"
    ),
    Word(
        english: "quit",
        tagalog: "quit",
        ilocano: "isardeng",
        pangasinense: "itunda"
    ),
    Word(
        english: "quite",
        tagalog: "medyo",
        ilocano: "medyo",
        pangasinense: "talagan"
    ),
    Word(
        english: "quote",
        tagalog: "sabi sabi",
        ilocano: "adawen",
        pangasinense: "binitla"
    ),
    Word(
        english: "racer",
        tagalog: "magkakarera",
        ilocano: "racer",
        pangasinense: "managlumba"
    ),
    Word(
        english: "racket",
        tagalog: "raket",
        ilocano: "raket ti",
        pangasinense: "raket"
    ),
    Word(
        english: "raft",
        tagalog: "balsa",
        ilocano: "balsa",
        pangasinense: "balsa"
    ),
    Word(
        english: "rager",
        tagalog: "galit na galit",
        ilocano: "rager",
        pangasinense: "rager"
    ),
    Word(
        english: "rain",
        tagalog: "ulan",
        ilocano: "tudo",
        pangasinense: "uran"
    ),
    Word(
        english: "rainbow",
        tagalog: "bahaghari",
        ilocano: "balangaw",
        pangasinense: "balangaw"
    ),
    Word(
        english: "raiser",
        tagalog: "tagapagtaas",
        ilocano: "raiser",
        pangasinense: "managpaalagey"
    ),
    Word(
        english: "rap",
        tagalog: "rap",
        ilocano: "rap",
        pangasinense: "rap"
    ),
    Word(
        english: "rapidly",
        tagalog: "mabilis",
        ilocano: "nagpartak",
        pangasinense: "maples"
    ),
    Word(
        english: "rat",
        tagalog: "daga",
        ilocano: "bao",
        pangasinense: "utot"
    ),
    Word(
        english: "rather",
        tagalog: "sa halip",
        ilocano: "bassit",
        pangasinense: "imbes"
    ),
    Word(
        english: "rattler",
        tagalog: "attler",
        ilocano: "attler",
        pangasinense: "attler"
    ),
    Word(
        english: "raver",
        tagalog: "raver",
        ilocano: "raver",
        pangasinense: "raver"
    ),
    Word(
        english: "raw",
        tagalog: "hilaw",
        ilocano: "naata",
        pangasinense: "tariwa"
    ),
    Word(
        english: "reach",
        tagalog: "maabot",
        ilocano: "madanon",
        pangasinense: "pakapasabi"
    ),
    Word(
        english: "read",
        tagalog: "basahin",
        ilocano: "basaen",
        pangasinense: "basaen"
    ),
    Word(
        english: "ready",
        tagalog: "handa na",
        ilocano: "nakasagana",
        pangasinense: "akaparaan"
    ),
    Word(
        english: "real",
        tagalog: "totoo",
        ilocano: "agpayso",
        pangasinense: "peteg"
    ),
    Word(
        english: "realize",
        tagalog: "mapagtanto",
        ilocano: "napanunot",
        pangasinense: "namoria"
    ),
    Word(
        english: "reap",
        tagalog: "umani",
        ilocano: "agapit",
        pangasinense: "manani"
    ),
    Word(
        english: "rear",
        tagalog: "likuran",
        ilocano: "likudan",
        pangasinense: "beneg"
    ),
    Word(
        english: "reason",
        tagalog: "dahilan",
        ilocano: "rason",
        pangasinense: "rason"
    ),
    Word(
        english: "rebel",
        tagalog: "rebelde",
        ilocano: "rebelde",
        pangasinense: "rebelde"
    ),
    Word(
        english: "rebuke",
        tagalog: "pagsaway",
        ilocano: "tubngaren",
        pangasinense: "manbalaw"
    ),
    Word(
        english: "recall",
        tagalog: "alalahanin",
        ilocano: "lagipen manen",
        pangasinense: "nanonotan"
    ),
    Word(
        english: "receive",
        tagalog: "tumanggap",
        ilocano: "awaten",
        pangasinense: "awaten"
    ),
    Word(
        english: "reception",
        tagalog: "pagtanggap",
        ilocano: "panangawat",
        pangasinense: "pangawat"
    ),
    Word(
        english: "recognize",
        tagalog: "kilalanin",
        ilocano: "ilasin",
        pangasinense: "bidbiren"
    ),
    Word(
        english: "recollect",
        tagalog: "gunitain",
        ilocano: "laglagipen",
        pangasinense: "tandaan"
    ),
    Word(
        english: "reconcile",
        tagalog: "magkasundo",
        ilocano: "makikappia",
        pangasinense: "mikareenan"
    ),
    Word(
        english: "red",
        tagalog: "pula",
        ilocano: "nalabbaga",
        pangasinense: "ambalanga"
    ),
    Word(
        english: "redeem",
        tagalog: "tubusin",
        ilocano: "subboten",
        pangasinense: "dondonen"
    ),
    Word(
        english: "reed",
        tagalog: "tambo",
        ilocano: "reed",
        pangasinense: "tambo"
    ),
    Word(
        english: "refer",
        tagalog: "sumangguni",
        ilocano: "kitaen",
        pangasinense: "ontukoy"
    ),
    Word(
        english: "refined",
        tagalog: "pino",
        ilocano: "napinpintas",
        pangasinense: "pinarakep"
    ),
    Word(
        english: "reform",
        tagalog: "reporma",
        ilocano: "reporma",
        pangasinense: "reporma"
    ),
    Word(
        english: "regard",
        tagalog: "paggalang",
        ilocano: "panggepen",
        pangasinense: "nipaakar"
    ),
    Word(
        english: "register",
        tagalog: "magparehistro",
        ilocano: "irehistro",
        pangasinense: "rehistro"
    ),
    Word(
        english: "regret",
        tagalog: "panghihinayang",
        ilocano: "ibabawi",
        pangasinense: "panbabawian"
    ),
    Word(
        english: "regular",
        tagalog: "regular",
        ilocano: "regular",
        pangasinense: "regular"
    ),
    Word(
        english: "reign",
        tagalog: "maghari",
        ilocano: "panagturay",
        pangasinense: "manuley"
    ),
    Word(
        english: "reject",
        tagalog: "tanggihan",
        ilocano: "ipaid",
        pangasinense: "ipulisay"
    ),
    Word(
        english: "rejoice",
        tagalog: "magalak",
        ilocano: "agrag-okayo",
        pangasinense: "manliket"
    ),
    Word(
        english: "relation",
        tagalog: "relasyon",
        ilocano: "relasion",
        pangasinense: "relasyon"
    ),
    Word(
        english: "relative",
        tagalog: "kamag-anak",
        ilocano: "kabagian",
        pangasinense: "kanayon"
    ),
    Word(
        english: "release",
        tagalog: "palayain",
        ilocano: "ilettat",
        pangasinense: "pangibulos"
    ),
    Word(
        english: "relief",
        tagalog: "kaluwagan",
        ilocano: "bang-ar",
        pangasinense: "pakainawaan"
    ),
    Word(
        english: "remain",
        tagalog: "manatili",
        ilocano: "agtalinaed",
        pangasinense: "mansiansia"
    ),
    Word(
        english: "remarkable",
        tagalog: "kapansin-pansin",
        ilocano: "sangsangayan",
        pangasinense: "makatantanda"
    ),
    Word(
        english: "remedy",
        tagalog: "lunas",
        ilocano: "remedio",
        pangasinense: "remedyo"
    ),
    Word(
        english: "remember",
        tagalog: "tandaan mo",
        ilocano: "lagipen",
        pangasinense: "tandaan"
    ),
    Word(
        english: "remote",
        tagalog: "remote",
        ilocano: "nauneg",
        pangasinense: "arawi"
    ),
    Word(
        english: "rent",
        tagalog: "upa",
        ilocano: "agabang",
        pangasinense: "upa"
    ),
    Word(
        english: "repair",
        tagalog: "pagkukumpuni",
        ilocano: "kutingtingen",
        pangasinense: "pangapiger"
    ),
    Word(
        english: "repay",
        tagalog: "bayaran",
        ilocano: "bayadan",
        pangasinense: "bayaran"
    ),
    Word(
        english: "repel",
        tagalog: "pagtataboy",
        ilocano: "repel ti",
        pangasinense: "ipulisay"
    ),
    Word(
        english: "repent",
        tagalog: "magsisi",
        ilocano: "agbabawikayo",
        pangasinense: "manbabawi"
    ),
    Word(
        english: "reptile",
        tagalog: "reptilya",
        ilocano: "reptilia",
        pangasinense: "reptilya"
    ),
    Word(
        english: "repulse",
        tagalog: "pagtataboy",
        ilocano: "repulse",
        pangasinense: "ipulisay"
    ),
    Word(
        english: "request",
        tagalog: "kahilingan",
        ilocano: "kiddaw",
        pangasinense: "kerew"
    ),
    Word(
        english: "resign",
        tagalog: "magbitiw",
        ilocano: "agikkat",
        pangasinense: "inmekal"
    ),
    Word(
        english: "resolution",
        tagalog: "resolusyon",
        ilocano: "resolusion",
        pangasinense: "resolusyon"
    ),
    Word(
        english: "respond",
        tagalog: "tumugon",
        ilocano: "sumungbat",
        pangasinense: "onebat"
    ),
    Word(
        english: "restless",
        tagalog: "hindi mapakali",
        ilocano: "saan a natalna",
        pangasinense: "agmakainawa"
    ),
    Word(
        english: "restrain",
        tagalog: "pigilin",
        ilocano: "agteppel",
        pangasinense: "mansebel"
    ),
    Word(
        english: "result",
        tagalog: "resulta",
        ilocano: "resulta",
        pangasinense: "resulta"
    ),
    Word(
        english: "resurrection",
        tagalog: "muling pagkabuhay",
        ilocano: "panagungar",
        pangasinense: "kioli"
    ),
    Word(
        english: "return",
        tagalog: "bumalik",
        ilocano: "isubli",
        pangasinense: "ipawil"
    ),
    Word(
        english: "reunion",
        tagalog: "reunion",
        ilocano: "panagtitipon manen",
        pangasinense: "pankakasakey lamet"
    ),
    Word(
        english: "revenge",
        tagalog: "paghihiganti",
        ilocano: "bales",
        pangasinense: "ombales"
    ),
    Word(
        english: "revive",
        tagalog: "buhayin",
        ilocano: "agbiag manen",
        pangasinense: "manbilay"
    ),
    Word(
        english: "revolver",
        tagalog: "rebolber",
        ilocano: "rebolber",
        pangasinense: "rebolber"
    ),
    Word(
        english: "rich",
        tagalog: "mayaman",
        ilocano: "nabaknang",
        pangasinense: "mayaman"
    ),
    Word(
        english: "rider",
        tagalog: "sakay",
        ilocano: "rider",
        pangasinense: "rider"
    ),
    Word(
        english: "ridge",
        tagalog: "tagaytay",
        ilocano: "ridge",
        pangasinense: "pukdol"
    ),
    Word(
        english: "ridicule",
        tagalog: "pangungutya",
        ilocano: "pananguyaw",
        pangasinense: "panagludlurey"
    ),
    Word(
        english: "right",
        tagalog: "tama",
        ilocano: "kusto",
        pangasinense: "duga"
    ),
    Word(
        english: "righteousness",
        tagalog: "katuwiran",
        ilocano: "kinalinteg",
        pangasinense: "inkatunong"
    ),
    Word(
        english: "rim",
        tagalog: "gilid",
        ilocano: "rim",
        pangasinense: "rim"
    ),
    Word(
        english: "ring",
        tagalog: "singsing",
        ilocano: "singsing",
        pangasinense: "singsing"
    ),
    Word(
        english: "rip",
        tagalog: "punitin",
        ilocano: "pir-aten",
        pangasinense: "pinilat"
    ),
    Word(
        english: "rise",
        tagalog: "tumaas",
        ilocano: "umuli",
        pangasinense: "ontagey"
    ),
    Word(
        english: "rival",
        tagalog: "karibal",
        ilocano: "kalaban",
        pangasinense: "kakompetensia"
    ),
    Word(
        english: "river",
        tagalog: "ilog",
        ilocano: "karayan",
        pangasinense: "ilog"
    ),
    Word(
        english: "road",
        tagalog: "daan",
        ilocano: "dalan",
        pangasinense: "dalan"
    ),
    Word(
        english: "roast",
        tagalog: "inihaw",
        ilocano: "ituno",
        pangasinense: "ikalot"
    ),
    Word(
        english: "rock",
        tagalog: "bato",
        ilocano: "bato",
        pangasinense: "bato"
    ),
    Word(
        english: "rod",
        tagalog: "pamalo",
        ilocano: "pagbaot",
        pangasinense: "baston"
    ),
    Word(
        english: "roll",
        tagalog: "gumulong",
        ilocano: "agkarolig",
        pangasinense: "ilukot"
    ),
    Word(
        english: "roof",
        tagalog: "bubong",
        ilocano: "atep",
        pangasinense: "atep"
    ),
    Word(
        english: "room",
        tagalog: "silid",
        ilocano: "kuarto",
        pangasinense: "kuarto"
    ),
    Word(
        english: "roost",
        tagalog: "roost",
        ilocano: "roost",
        pangasinense: "pukokan"
    ),
    Word(
        english: "root",
        tagalog: "ugat",
        ilocano: "ramot",
        pangasinense: "lamot"
    ),
    Word(
        english: "proper",
        tagalog: "nararapat",
        ilocano: "kusto",
        pangasinense: "susto"
    ),
    Word(
        english: "rotten",
        tagalog: "bulok",
        ilocano: "naperdin",
        pangasinense: "abolok"
    ),
    Word(
        english: "rough",
        tagalog: "magaspang",
        ilocano: "nagurdo",
        pangasinense: "aliwan patad"
    ),
    Word(
        english: "round",
        tagalog: "bilog",
        ilocano: "bilog",
        pangasinense: "malimpek"
    ),
    Word(
        english: "row",
        tagalog: "hilera",
        ilocano: "agsaguan",
        pangasinense: "dasig"
    ),
    Word(
        english: "ruin",
        tagalog: "pagkasira",
        ilocano: "dadaelen",
        pangasinense: "deralen"
    ),
    Word(
        english: "ruler",
        tagalog: "tagapamahala",
        ilocano: "mangituray",
        pangasinense: "manuley"
    ),
    Word(
        english: "run",
        tagalog: "tumakbo",
        ilocano: "agtaray",
        pangasinense: "batik"
    ),
    Word(
        english: "rust",
        tagalog: "kalawang",
        ilocano: "lati",
        pangasinense: "kalawang"
    ),
    Word(
        english: "sack",
        tagalog: "sako",
        ilocano: "sopot",
        pangasinense: "sako"
    ),
    Word(
        english: "sacrifices",
        tagalog: "sakripisyo",
        ilocano: "bagat",
        pangasinense: "bagat"
    ),
    Word(
        english: "ads",
        tagalog: "patalastas",
        ilocano: "maermen",
        pangasinense: "patalastas"
    ),
    Word(
        english: "sails",
        tagalog: "layag",
        ilocano: "layag",
        pangasinense: "layag"
    ),
    Word(
        english: "salt",
        tagalog: "asin",
        ilocano: "asin",
        pangasinense: "asin"
    ),
    Word(
        english: "same",
        tagalog: "pareho",
        ilocano: "kapara",
        pangasinense: "ontan met"
    ),
    Word(
        english: "sand",
        tagalog: "buhangin",
        ilocano: "buer",
        pangasinense: "buer"
    ),
    Word(
        english: "sap",
        tagalog: "katas",
        ilocano: "tabol",
        pangasinense: "sap"
    ),
    Word(
        english: "satisfy",
        tagalog: "masiyahan",
        ilocano: "peraen",
        pangasinense: "napenek"
    ),
    Word(
        english: "sauce",
        tagalog: "sarsa",
        ilocano: "patis",
        pangasinense: "sarsa"
    ),
    Word(
        english: "saucy",
        tagalog: "maanghang",
        ilocano: "malangas",
        pangasinense: "maasin"
    ),
    Word(
        english: "save",
        tagalog: "iligtsas",
        ilocano: "laban",
        pangasinense: "iliktar"
    ),
    Word(
        english: "saw",
        tagalog: "saw",
        ilocano: "lagari",
        pangasinense: "anengneng"
    ),
    Word(
        english: "say",
        tagalog: "sabihin",
        ilocano: "balikas",
        pangasinense: "baga, ibaga, salitaen"
    ),
    Word(
        english: "scab",
        tagalog: "sugat",
        ilocano: "ulpo",
        pangasinense: "keggang"
    ),
    Word(
        english: "scald",
        tagalog: "sunog",
        ilocano: "manpaso",
        pangasinense: "luyakan"
    ),
    Word(
        english: "scaly",
        tagalog: "makaliskis",
        ilocano: "mankiskis",
        pangasinense: "masiksik"
    ),
    Word(
        english: "scar",
        tagalog: "puna",
        ilocano: "piglat",
        pangasinense: "piglat"
    ),
    Word(
        english: "scarcely",
        tagalog: "bihira",
        ilocano: "ngalngali",
        pangasinense: "lawari"
    ),
    Word(
        english: "scholar",
        tagalog: "iskolar",
        ilocano: "iskolar",
        pangasinense: "makabat"
    ),
    Word(
        english: "school",
        tagalog: "paaralan",
        ilocano: "eskuelaan",
        pangasinense: "panagaralan"
    ),
    Word(
        english: "scorch",
        tagalog: "sunog",
        ilocano: "manpaso",
        pangasinense: "tekteken"
    ),
    Word(
        english: "scour",
        tagalog: "kuskusin",
        ilocano: "man-scour",
        pangasinense: "gesigesen"
    ),
    Word(
        english: "cowl",
        tagalog: "kapa",
        ilocano: "cowl",
        pangasinense: "koliseng, onkoliseng"
    ),
    Word(
        english: "scrape",
        tagalog: "kuskusin",
        ilocano: "kiskisan",
        pangasinense: "karkaren"
    ),
    Word(
        english: "scratch",
        tagalog: "kuskos",
        ilocano: "guyames",
        pangasinense: "agulilis, agurabis"
    ),
    Word(
        english: "scream",
        tagalog: "sumigaw",
        ilocano: "ingal",
        pangasinense: "akis, onakis"
    ),
    Word(
        english: "scripture",
        tagalog: "kasulatan",
        ilocano: "kasulatan",
        pangasinense: "sulat"
    ),
    Word(
        english: "scrub",
        tagalog: "kuskusin",
        ilocano: "kiskisan",
        pangasinense: "gasgasen"
    ),
    Word(
        english: "ease",
        tagalog: "dali",
        ilocano: "mainomay",
        pangasinense: "dayat"
    ),
    Word(
        english: "seam",
        tagalog: "tuhog",
        ilocano: "tahi",
        pangasinense: "tupig"
    ),
    Word(
        english: "season",
        tagalog: "panahon",
        ilocano: "panaon",
        pangasinense: "panaon"
    ),
    Word(
        english: "seat",
        tagalog: "upuan",
        ilocano: "yurongan",
        pangasinense: "yorongan"
    ),
    Word(
        english: "second",
        tagalog: "ikalawa",
        ilocano: "komadua",
        pangasinense: "komadua"
    ),
    Word(
        english: "secret",
        tagalog: "lihim",
        ilocano: "yaamot",
        pangasinense: "sekreto"
    ),
    Word(
        english: "section",
        tagalog: "seksyon",
        ilocano: "kaapag",
        pangasinense: "seksyon"
    ),
    Word(
        english: "secure",
        tagalog: "sigurado",
        ilocano: "alaen",
        pangasinense: "maligen"
    ),
    Word(
        english: "smell",
        tagalog: "amoy",
        ilocano: "angob, naangob",
        pangasinense: "angob"
    ),
    Word(
        english: "smile",
        tagalog: "ngiti",
        ilocano: "ayaten",
        pangasinense: "imis"
    ),
    Word(
        english: "smite",
        tagalog: "sipa",
        ilocano: "kabilen",
        pangasinense: "sugaten"
    ),
    Word(
        english: "smoke",
        tagalog: "usok",
        ilocano: "asewek",
        pangasinense: "asewek"
    ),
    Word(
        english: "smooth",
        tagalog: "makinis",
        ilocano: "mapatar",
        pangasinense: "makinis"
    ),
    Word(
        english: "snail",
        tagalog: "kuhol",
        ilocano: "bisokol",
        pangasinense: "bisukol"
    ),
    Word(
        english: "snake",
        tagalog: "ahas",
        ilocano: "oleg",
        pangasinense: "oleg"
    ),
    Word(
        english: "snap",
        tagalog: "snap",
        ilocano: "lipaken",
        pangasinense: "biglaan"
    ),
    Word(
        english: "sneeze",
        tagalog: "bumahing",
        ilocano: "onbasis",
        pangasinense: "manbahing"
    ),
    Word(
        english: "so",
        tagalog: "kaya",
        ilocano: "kanian",
        pangasinense: "say"
    ),
    Word(
        english: "soak",
        tagalog: "ibabad",
        ilocano: "talem, ontalem",
        pangasinense: "italem"
    ),
    Word(
        english: "soar",
        tagalog: "lumipad",
        ilocano: "tekiab, ontekiab",
        pangasinense: "ontagey"
    ),
    Word(
        english: "society",
        tagalog: "lipunan",
        ilocano: "moyong",
        pangasinense: "sosyedad"
    ),
    Word(
        english: "soft",
        tagalog: "malambot",
        ilocano: "anlemek",
        pangasinense: "anlemek"
    ),
    Word(
        english: "soil",
        tagalog: "lupa",
        ilocano: "dalin",
        pangasinense: "dalin"
    ),
    Word(
        english: "solid",
        tagalog: "matibay",
        ilocano: "potel",
        pangasinense: "anawet"
    ),
    Word(
        english: "some",
        tagalog: "ilan",
        ilocano: "arum, pigara",
        pangasinense: "pigara"
    ),
    Word(
        english: "somebody",
        tagalog: "isang tao",
        ilocano: "sakey a too",
        pangasinense: "sakey a too"
    ),
    Word(
        english: "somersault",
        tagalog: "salto",
        ilocano: "balintokar",
        pangasinense: "somersault"
    ),
    Word(
        english: "something",
        tagalog: "isang bagay",
        ilocano: "bengatla",
        pangasinense: "sakey a bengatla"
    ),
    Word(
        english: "sometimes",
        tagalog: "minsanan",
        ilocano: "noarum",
        pangasinense: "maminsan"
    ),
    Word(
        english: "son",
        tagalog: "anak na lalaki",
        ilocano: "anak a laki",
        pangasinense: "anak"
    ),
    Word(
        english: "sore",
        tagalog: "sakit",
        ilocano: "arum",
        pangasinense: "ansakit"
    ),
    Word(
        english: "sorrow",
        tagalog: "pagdadalamhati",
        ilocano: "ermen",
        pangasinense: "ermen"
    ),
    Word(
        english: "soul",
        tagalog: "kaluluwa",
        ilocano: "kamarerwa",
        pangasinense: "kamarerwa"
    ),
    Word(
        english: "sound",
        tagalog: "tunog",
        ilocano: "tanol",
        pangasinense: "tanol"
    ),
    Word(
        english: "sour",
        tagalog: "ating",
        ilocano: "anapseng, anakseng",
        pangasinense: "anakseng"
    ),
    Word(
        english: "south",
        tagalog: "timog",
        ilocano: "abalaten, dapit-ilog",
        pangasinense: "abalaten"
    ),
    Word(
        english: "sow",
        tagalog: "maghasik",
        ilocano: "tanem, mantanem",
        pangasinense: "mantanem"
    ),
    Word(
        english: "sower",
        tagalog: "magsasaka",
        ilocano: "tumatanem",
        pangasinense: "managtanem"
    ),
    Word(
        english: "spank",
        tagalog: "palo",
        ilocano: "lalpak, palalpak",
        pangasinense: "spank"
    ),
    Word(
        english: "sparrow",
        tagalog: "maya",
        ilocano: "anoyaw",
        pangasinense: "anuyaw"
    ),
    Word(
        english: "speak",
        tagalog: "magsalita",
        ilocano: "salita, mansalita",
        pangasinense: "mansalita"
    ),
    Word(
        english: "special",
        tagalog: "espesyal",
        ilocano: "nidumaduma",
        pangasinense: "espisyal"
    ),
    Word(
        english: "speck",
        tagalog: "tuldok",
        ilocano: "mansa, melag mansa",
        pangasinense: "tiklis"
    ),
    Word(
        english: "speech",
        tagalog: "talumpati",
        ilocano: "salita",
        pangasinense: "panagsalita"
    ),
    Word(
        english: "speed",
        tagalog: "bilis",
        ilocano: "siglat",
        pangasinense: "peles"
    ),
    Word(
        english: "spell",
        tagalog: "bSpell",
        ilocano: "letraen",
        pangasinense: "espel"
    ),
    Word(
        english: "spend",
        tagalog: "gastusin",
        ilocano: "gastosen",
        pangasinense: "mangusar"
    ),
    Word(
        english: "spider",
        tagalog: "gagamba",
        ilocano: "genggeng",
        pangasinense: "duron"
    ),
    Word(
        english: "spin",
        tagalog: "paikutin",
        ilocano: "patleken, potipot, ipotipot",
        pangasinense: "itelek"
    ),
    Word(
        english: "spirit",
        tagalog: "espiritu",
        ilocano: "espiritu",
        pangasinense: "espiritu"
    ),
    Word(
        english: "spit",
        tagalog: "lura",
        ilocano: "okda, onlokda",
        pangasinense: "palduaen"
    ),
    Word(
        english: "split",
        tagalog: "hatiin",
        ilocano: "pisagen, balsigen",
        pangasinense: "pisagen"
    ),
    Word(
        english: "spoon",
        tagalog: "kutsara",
        ilocano: "kutsara",
        pangasinense: "kutsara"
    ),
    Word(
        english: "spot",
        tagalog: "lugar",
        ilocano: "mansa",
        pangasinense: "lugar"
    ),
    Word(
        english: "spout",
        tagalog: "tubo",
        ilocano: "bositsit",
        pangasinense: "tubo"
    ),
    Word(
        english: "spread",
        tagalog: "ikalat",
        ilocano: "bilkag, ibilkag, buyak, ibuyak",
        pangasinense: "inlaknad"
    ),
    Word(
        english: "spring",
        tagalog: "tagsibol",
        ilocano: "butay, onbutay, lokso, onlokso",
        pangasinense: "subol"
    ),
    Word(
        english: "sprinkle",
        tagalog: "budburan",
        ilocano: "walsikan",
        pangasinense: "iwalsik"
    ),
    Word(
        english: "square",
        tagalog: "parisukat",
        ilocano: "kalang",
        pangasinense: "kuadrado"
    ),
    Word(
        english: "stretch",
        tagalog: "i-stretch",
        ilocano: "onat, ononat",
        pangasinense: "iunat"
    ),
    Word(
        english: "strike",
        tagalog: "palo",
        ilocano: "pekpeken, bakbaken",
        pangasinense: "pekpeken"
    ),
    Word(
        english: "string",
        tagalog: "sinulid",
        ilocano: "ubir",
        pangasinense: "singer"
    ),
    Word(
        english: "strip",
        tagalog: "strip",
        ilocano: "gisgisen, sigsigen",
        pangasinense: "lakseben"
    ),
    Word(
        english: "strong",
        tagalog: "malakas",
        ilocano: "mabiskeg",
        pangasinense: "mabiskeg"
    ),
    Word(
        english: "study",
        tagalog: "pag-aralan",
        ilocano: "aral, manaral",
        pangasinense: "manaral"
    ),
    Word(
        english: "stumble",
        tagalog: "matapilok",
        ilocano: "tiror, matiror",
        pangasinense: "nagapol"
    ),
    Word(
        english: "stump",
        tagalog: "tangkay",
        ilocano: "tonger",
        pangasinense: "tuod"
    ),
    Word(
        english: "stupid",
        tagalog: "bobo",
        ilocano: "makulnet",
        pangasinense: "makulangkulang"
    ),
    Word(
        english: "stupor",
        tagalog: "kababaan",
        ilocano: "alimoreng",
        pangasinense: "inkabigla"
    ),
    Word(
        english: "subdue",
        tagalog: "supilin",
        ilocano: "taloen",
        pangasinense: "manpasakop"
    ),
    Word(
        english: "subject",
        tagalog: "paksa",
        ilocano: "pakatongtongan",
        pangasinense: "tema"
    ),
    Word(
        english: "submit",
        tagalog: "isumite",
        ilocano: "tolok, ontolok",
        pangasinense: "manpasakop"
    ),
    Word(
        english: "substance",
        tagalog: "sustansya",
        ilocano: "nanam",
        pangasinense: "substansia"
    ),
    Word(
        english: "subtle",
        tagalog: "banayad",
        ilocano: "masilib",
        pangasinense: "agnalikas"
    ),
    Word(
        english: "succeed",
        tagalog: "magtagumpay",
        ilocano: "sublayan",
        pangasinense: "ontalona"
    ),
    Word(
        english: "successive",
        tagalog: "sunod-sunod",
        ilocano: "mantotombokan",
        pangasinense: "nantutumbokan"
    ),
    Word(
        english: "such",
        tagalog: "ganito",
        ilocano: "satan, ontan",
        pangasinense: "satan"
    ),
    Word(
        english: "suck",
        tagalog: "sipsip",
        ilocano: "sopsopen",
        pangasinense: "sopsopen"
    ),
    Word(
        english: "sudden",
        tagalog: "biglaan",
        ilocano: "bigla",
        pangasinense: "biglan"
    ),
    Word(
        english: "suffer",
        tagalog: "magdusa",
        ilocano: "irap, manirap",
        pangasinense: "manirap"
    ),
    Word(
        english: "sugar",
        tagalog: "asukal",
        ilocano: "masamit",
        pangasinense: "asukal"
    ),
    Word(
        english: "sum",
        tagalog: "kabuuan",
        ilocano: "katiponan",
        pangasinense: "kabuoan"
    ),
    Word(
        english: "summer",
        tagalog: "tag-init",
        ilocano: "tiagew",
        pangasinense: "tiagew"
    ),
    Word(
        english: "sun",
        tagalog: "araw",
        ilocano: "agew",
        pangasinense: "agew"
    ),
    Word(
        english: "Sunday",
        tagalog: "Linggo",
        ilocano: "Simba",
        pangasinense: "Simba"
    ),
    Word(
        english: "sup",
        tagalog: "sup",
        ilocano: "dem",
        pangasinense: "sup"
    ),
    Word(
        english: "superfluous",
        tagalog: "labis",
        ilocano: "masolok",
        pangasinense: "agmet kaukolan"
    ),
    Word(
        english: "supper",
        tagalog: "hapunan",
        ilocano: "pandem, pandeman",
        pangasinense: "pangdem"
    ),
    Word(
        english: "supplies",
        tagalog: "suplay",
        ilocano: "abasto",
        pangasinense: "suplay"
    ),
    Word(
        english: "suppose",
        tagalog: "isipin",
        ilocano: "nobilang",
        pangasinense: "alimbawa"
    ),
    Word(
        english: "supreme",
        tagalog: "supremo",
        ilocano: "manonaan",
        pangasinense: "sankatageyan"
    ),
    Word(
        english: "sure",
        tagalog: "tiyak",
        ilocano: "peteg",
        pangasinense: "siempre"
    ),
    Word(
        english: "surrender",
        tagalog: "sumuko",
        ilocano: "soko, onsoko",
        pangasinense: "onsuko"
    ),
    Word(
        english: "surround",
        tagalog: "palibutan",
        ilocano: "liktoben",
        pangasinense: "paliberan"
    ),
    Word(
        english: "suspend",
        tagalog: "isuspinde",
        ilocano: "tondaen, patondaen",
        pangasinense: "itunda"
    ),
    Word(
        english: "swallow",
        tagalog: "lunukin",
        ilocano: "akmonen",
        pangasinense: "akmonen"
    ),
    Word(
        english: "swarm",
        tagalog: "mainit",
        ilocano: "olop, polok",
        pangasinense: "ulop"
    ),
    Word(
        english: "swear",
        tagalog: "manumpa",
        ilocano: "ayew, manayew",
        pangasinense: "mansamba"
    ),
    Word(
        english: "sweat",
        tagalog: "pawis",
        ilocano: "linget, manlinget",
        pangasinense: "linget"
    ),
    Word(
        english: "sweep",
        tagalog: "sweeping",
        ilocano: "panisen",
        pangasinense: "panisen"
    ),
    Word(
        english: "sweet",
        tagalog: "matamis",
        ilocano: "masamit",
        pangasinense: "masamit"
    ),
    Word(
        english: "swell",
        tagalog: "lumaki",
        ilocano: "larag, onlarag",
        pangasinense: "onlarag"
    ),
    Word(
        english: "swift",
        tagalog: "mabilis",
        ilocano: "masiglat, mabatik",
        pangasinense: "maples"
    ),
    Word(
        english: "swim",
        tagalog: "lumangoy",
        ilocano: "langoy, onlangoy",
        pangasinense: "langoy"
    ),
    Word(
        english: "swine",
        tagalog: "alak",
        ilocano: "baboy",
        pangasinense: "baboy"
    ),
    Word(
        english: "swing",
        tagalog: "swing",
        ilocano: "manbayes, baba, manbaba",
        pangasinense: "ibasig"
    ),
    Word(
        english: "sword",
        tagalog: "espada",
        ilocano: "kampilan",
        pangasinense: "espada"
    ),
    Word(
        english: "symbol",
        tagalog: "simbolo",
        ilocano: "tanda",
        pangasinense: "simbolo"
    ),
    Word(
        english: "system",
        tagalog: "sistema",
        ilocano: "oksoy",
        pangasinense: "sistema"
    ),
    Word(
        english: "table",
        tagalog: "lamesa",
        ilocano: "lamisaan",
        pangasinense: "lamisaan"
    ),
    Word(
        english: "tail",
        tagalog: "buntot",
        ilocano: "ikog",
        pangasinense: "ikol"
    ),
    Word(
        english: "take",
        tagalog: "kumuha",
        ilocano: "kuhaen",
        pangasinense: "alaen"
    ),
    Word(
        english: "tale",
        tagalog: "kwento",
        ilocano: "istorya",
        pangasinense: "kwento"
    ),
    Word(
        english: "talent",
        tagalog: "talento",
        ilocano: "talento",
        pangasinense: "talento"
    ),
    Word(
        english: "talk",
        tagalog: "usap",
        ilocano: "sabali",
        pangasinense: "mansalita"
    ),
    Word(
        english: "tame",
        tagalog: "paamo",
        ilocano: "taming",
        pangasinense: "maamo"
    ),
    Word(
        english: "tangle",
        tagalog: "magkalikot",
        ilocano: "agkikkiskis",
        pangasinense: "mangulo"
    ),
    Word(
        english: "tap",
        tagalog: "tuktok",
        ilocano: "tukituk",
        pangasinense: "tapiken"
    ),
    Word(
        english: "tardy",
        tagalog: "huli",
        ilocano: "nalate",
        pangasinense: "atrasado"
    ),
    Word(
        english: "tarry",
        tagalog: "magtagal",
        ilocano: "mangibabawi",
        pangasinense: "mansiansia"
    ),
    Word(
        english: "task",
        tagalog: "gawain",
        ilocano: "trabaho",
        pangasinense: "kimey"
    ),
    Word(
        english: "taste",
        tagalog: "lasa",
        ilocano: "lasa",
        pangasinense: "tawayan"
    ),
    Word(
        english: "tax",
        tagalog: "buwis",
        ilocano: "buwis",
        pangasinense: "buis"
    ),
    Word(
        english: "teach",
        tagalog: "iturong",
        ilocano: "ibangat",
        pangasinense: "ibangat"
    ),
    Word(
        english: "tear",
        tagalog: "luha",
        ilocano: "luha",
        pangasinense: "lua"
    ),
    Word(
        english: "tease",
        tagalog: "tukso",
        ilocano: "tukso",
        pangasinense: "kantiawan"
    ),
    Word(
        english: "teeth",
        tagalog: "ngipin",
        ilocano: "ngipen",
        pangasinense: "saray ngipen"
    ),
    Word(
        english: "tell",
        tagalog: "sabihin",
        ilocano: "ibaga",
        pangasinense: "ibaga"
    ),
    Word(
        english: "temper",
        tagalog: "pagkamatiyaga",
        ilocano: "pagkamatiyaga",
        pangasinense: "temperamento"
    ),
    Word(
        english: "tempest",
        tagalog: "bagyo",
        ilocano: "bagyo",
        pangasinense: "bagyo"
    ),
    Word(
        english: "temple",
        tagalog: "templo",
        ilocano: "templo",
        pangasinense: "templo"
    ),
    Word(
        english: "tempt",
        tagalog: "tukso",
        ilocano: "mangakit",
        pangasinense: "tukso"
    ),
    Word(
        english: "tenant",
        tagalog: "nangungupahan",
        ilocano: "umupang",
        pangasinense: "manaayam"
    ),
    Word(
        english: "tender",
        tagalog: "malambot",
        ilocano: "malambot",
        pangasinense: "anlemek"
    ),
    Word(
        english: "term",
        tagalog: "termino",
        ilocano: "panahon",
        pangasinense: "termino"
    ),
    Word(
        english: "terrible",
        tagalog: "katakot-takot",
        ilocano: "nakakabahala",
        pangasinense: "makapasinagem"
    ),
    Word(
        english: "territory",
        tagalog: "teritoryo",
        ilocano: "teritoryo",
        pangasinense: "teritorya"
    ),
    Word(
        english: "test",
        tagalog: "pagsusulit",
        ilocano: "eksamen",
        pangasinense: "subok"
    ),
    Word(
        english: "testify",
        tagalog: "magpatotoo",
        ilocano: "magpatunay",
        pangasinense: "mantasi"
    ),
    Word(
        english: "testimony",
        tagalog: "pagpapatotoo",
        ilocano: "pagsaksi",
        pangasinense: "testimonya"
    ),
    Word(
        english: "text",
        tagalog: "teksto",
        ilocano: "teksto",
        pangasinense: "teksto"
    ),
    Word(
        english: "than",
        tagalog: "kaysa",
        ilocano: "kaysa",
        pangasinense: "nen"
    ),
    Word(
        english: "thank",
        tagalog: "salamat",
        ilocano: "salamat",
        pangasinense: "misalamat"
    ),
    Word(
        english: "that",
        tagalog: "iyon",
        ilocano: "dayta",
        pangasinense: "atan"
    ),
    Word(
        english: "the",
        tagalog: "ang",
        ilocano: "ti",
        pangasinense: "say"
    ),
    Word(
        english: "their",
        tagalog: "kanila",
        ilocano: "daida",
        pangasinense: "sikara"
    ),
    Word(
        english: "them",
        tagalog: "sila",
        ilocano: "kadakuada",
        pangasinense: "sikara"
    ),
    Word(
        english: "then",
        tagalog: "noon",
        ilocano: "isuna",
        pangasinense: "insan"
    ),
    Word(
        english: "there",
        tagalog: "doon",
        ilocano: "ado",
        pangasinense: "diman"
    ),
    Word(
        english: "therefore",
        tagalog: "kaya't",
        ilocano: "gapuna",
        pangasinense: "kanian"
    ),
    Word(
        english: "these",
        tagalog: "mga ito",
        ilocano: "dagiti daytoy",
        pangasinense: "saraya"
    ),
    Word(
        english: "they",
        tagalog: "sila",
        ilocano: "da",
        pangasinense: "sikara"
    ),
    Word(
        english: "thick",
        tagalog: "makapal",
        ilocano: "natibker",
        pangasinense: "makapal"
    ),
    Word(
        english: "thin",
        tagalog: "payat",
        ilocano: "napigsa",
        pangasinense: "maimpis"
    ),
    Word(
        english: "thing",
        tagalog: "bagay",
        ilocano: "banag",
        pangasinense: "bengatla"
    ),
    Word(
        english: "think",
        tagalog: "isipin",
        ilocano: "panunot",
        pangasinense: "nonot"
    ),
    Word(
        english: "third",
        tagalog: "ikatlo",
        ilocano: "ikatlo",
        pangasinense: "komatlo"
    ),
    Word(
        english: "thirsty",
        tagalog: "nauuhaw",
        ilocano: "napudot",
        pangasinense: "napgaan"
    ),
    Word(
        english: "this",
        tagalog: "ito",
        ilocano: "daytoy",
        pangasinense: "aya"
    ),
    Word(
        english: "thorn",
        tagalog: "tinik",
        ilocano: "tinik",
        pangasinense: "sabit"
    ),
    Word(
        english: "those",
        tagalog: "mga iyon",
        ilocano: "dagiti dayta",
        pangasinense: "saray"
    ),
    Word(
        english: "though",
        tagalog: "bagaman",
        ilocano: "nga",
        pangasinense: "balet"
    ),
    Word(
        english: "thousand",
        tagalog: "libo",
        ilocano: "mili",
        pangasinense: "nilibo"
    ),
    Word(
        english: "thread",
        tagalog: "sinulid",
        ilocano: "sinulid",
        pangasinense: "tinebey"
    ),
    Word(
        english: "three",
        tagalog: "tatlo",
        ilocano: "tallo",
        pangasinense: "talora"
    ),
    Word(
        english: "throat",
        tagalog: "lalamunan",
        ilocano: "lalamunan",
        pangasinense: "kulokulong"
    ),
    Word(
        english: "through",
        tagalog: "sa pamamagitan ng",
        ilocano: "babaen",
        pangasinense: "panamegley"
    ),
    Word(
        english: "throw",
        tagalog: "ihagis",
        ilocano: "ihulog",
        pangasinense: "ibantak"
    ),
    Word(
        english: "thumb",
        tagalog: "hinlalaki",
        ilocano: "deda",
        pangasinense: "tangan"
    ),
    Word(
        english: "thunder",
        tagalog: "kulog",
        ilocano: "kulog",
        pangasinense: "karul"
    ),
    Word(
        english: "thrust",
        tagalog: "itulak",
        ilocano: "isuksok",
        pangasinense: "itulak"
    ),
    Word(
        english: "tide",
        tagalog: "alon",
        ilocano: "dagat",
        pangasinense: "say panaon"
    ),
    Word(
        english: "tie",
        tagalog: "kurdon",
        ilocano: "pagsarabo",
        pangasinense: "singer"
    ),
    Word(
        english: "tight",
        tagalog: "masikip",
        ilocano: "napigsa",
        pangasinense: "malet"
    ),
    Word(
        english: "tilt",
        tagalog: "ikiling",
        ilocano: "ikiling",
        pangasinense: "ikiling"
    ),
    Word(
        english: "time",
        tagalog: "oras",
        ilocano: "oras",
        pangasinense: "panaon"
    ),
    Word(
        english: "tip",
        tagalog: "sukli",
        ilocano: "sukli",
        pangasinense: "toktok"
    ),
    Word(
        english: "tippy",
        tagalog: "nasisilayan",
        ilocano: "masupsup",
        pangasinense: "tippy"
    ),
    Word(
        english: "tired",
        tagalog: "pagod",
        ilocano: "napudot",
        pangasinense: "naksawan"
    ),
    Word(
        english: "to",
        tagalog: "sa",
        ilocano: "iti",
        pangasinense: "ed"
    ),
    Word(
        english: "toad",
        tagalog: "pugot",
        ilocano: "pugot",
        pangasinense: "palaka"
    ),
    Word(
        english: "today",
        tagalog: "ngayon",
        ilocano: "ita",
        pangasinense: "natan"
    ),
    Word(
        english: "toe",
        tagalog: "daliri ng paa",
        ilocano: "daliri ti tiil",
        pangasinense: "sali"
    ),
    Word(
        english: "together",
        tagalog: "magkasama",
        ilocano: "agkaykaysa",
        pangasinense: "saniba"
    ),
    Word(
        english: "tomb",
        tagalog: "libingan",
        ilocano: "libingan",
        pangasinense: "lubok"
    ),
    Word(
        english: "tone",
        tagalog: "tunog",
        ilocano: "tunog",
        pangasinense: "tono"
    ),
    Word(
        english: "tongue",
        tagalog: "dila",
        ilocano: "dila",
        pangasinense: "dila"
    ),
    Word(
        english: "too",
        tagalog: "din",
        ilocano: "met",
        pangasinense: "met"
    ),
    Word(
        english: "tooth",
        tagalog: "ngipin",
        ilocano: "ngipen",
        pangasinense: "ngipin"
    ),
    Word(
        english: "top",
        tagalog: "tuktok",
        ilocano: "tuktok",
        pangasinense: "tagey"
    ),
    Word(
        english: "topic",
        tagalog: "paksa",
        ilocano: "paksa",
        pangasinense: "tema"
    ),
    Word(
        english: "torture",
        tagalog: "paghihirap",
        ilocano: "pagsasaad",
        pangasinense: "panamairapan"
    ),
    Word(
        english: "toss",
        tagalog: "ihagis",
        ilocano: "ibabawi",
        pangasinense: "ibantak"
    ),
    Word(
        english: "total",
        tagalog: "kabuuan",
        ilocano: "kabuuan",
        pangasinense: "kabuoan"
    ),
    Word(
        english: "touch",
        tagalog: "hawakan",
        ilocano: "dantay",
        pangasinense: "diwiten"
    ),
    Word(
        english: "tough",
        tagalog: "matibay",
        ilocano: "matibay",
        pangasinense: "mapeget"
    ),
    Word(
        english: "toward",
        tagalog: "patungo sa",
        ilocano: "tunggal",
        pangasinense: "paarap ed"
    ),
    Word(
        english: "town",
        tagalog: "bayan",
        ilocano: "bayan",
        pangasinense: "baley"
    ),
    Word(
        english: "toy",
        tagalog: "laruan",
        ilocano: "laruan",
        pangasinense: "ayura"
    ),
    Word(
        english: "track",
        tagalog: "dalan",
        ilocano: "dalan",
        pangasinense: "dalan"
    ),
    Word(
        english: "transfer",
        tagalog: "ilipat",
        ilocano: "ilipat",
        pangasinense: "iyalis"
    ),
    Word(
        english: "translate",
        tagalog: "isalin",
        ilocano: "isalin",
        pangasinense: "patalos"
    ),
    Word(
        english: "trap",
        tagalog: "bitag",
        ilocano: "patibong",
        pangasinense: "patit"
    ),
    Word(
        english: "travel",
        tagalog: "biyahe",
        ilocano: "biyahe",
        pangasinense: "biahe"
    ),
    Word(
        english: "tree",
        tagalog: "puno",
        ilocano: "kahoy",
        pangasinense: "kiew"
    ),
    Word(
        english: "tremble",
        tagalog: "nanginginig",
        ilocano: "nanginginig",
        pangasinense: "manggiwgiw"
    ),
    Word(
        english: "tremendous",
        tagalog: "napakalaki",
        ilocano: "napakahalaga",
        pangasinense: "abalbaleg"
    ),
    Word(
        english: "trial",
        tagalog: "pagsubok",
        ilocano: "pagsubok",
        pangasinense: "panubok"
    ),
    Word(
        english: "trick",
        tagalog: "panloko",
        ilocano: "panloko",
        pangasinense: "pinatitan"
    ),
    Word(
        english: "triumphant",
        tagalog: "tagumpay",
        ilocano: "tagumpay",
        pangasinense: "matalona"
    ),
    Word(
        english: "trouble",
        tagalog: "problema",
        ilocano: "problema",
        pangasinense: "problema"
    ),
    Word(
        english: "trousers",
        tagalog: "salawal",
        ilocano: "salawal",
        pangasinense: "pantalon"
    ),
    Word(
        english: "TRUE",
        tagalog: "totoo",
        ilocano: "totoo",
        pangasinense: "tua"
    ),
    Word(
        english: "trust",
        tagalog: "pagtitiwala",
        ilocano: "panagmatalek",
        pangasinense: "pagtitiwala"
    ),
    Word(
        english: "truth",
        tagalog: "katotohanan",
        ilocano: "katuaan",
        pangasinense: "katotohanan"
    ),
    Word(
        english: "try",
        tagalog: "subukan",
        ilocano: "salien",
        pangasinense: "subukan"
    ),
    Word(
        english: "turn",
        tagalog: "ikot",
        ilocano: "liko",
        pangasinense: "ikot"
    ),
    Word(
        english: "turtle",
        tagalog: "pagong",
        ilocano: "pagong",
        pangasinense: "pagong"
    ),
    Word(
        english: "twelve",
        tagalog: "labindalawa",
        ilocano: "labindua",
        pangasinense: "labing-anim"
    ),
    Word(
        english: "twin",
        tagalog: "kambal",
        ilocano: "kambal",
        pangasinense: "kambal"
    ),
    Word(
        english: "twist",
        tagalog: "ikotin",
        ilocano: "pikiweten",
        pangasinense: "ikot"
    ),
    Word(
        english: "two",
        tagalog: "dalawa",
        ilocano: "duara",
        pangasinense: "dua"
    ),
    Word(
        english: "pack",
        tagalog: "pack",
        ilocano: "pakete",
        pangasinense: "pakete"
    ),
    Word(
        english: "package",
        tagalog: "pakete",
        ilocano: "pawit",
        pangasinense: "pakete"
    ),
    Word(
        english: "page",
        tagalog: "pahina",
        ilocano: "panid",
        pangasinense: "pahina"
    ),
    Word(
        english: "pain",
        tagalog: "sakit",
        ilocano: "ut-ot",
        pangasinense: "sakit"
    ),
    Word(
        english: "palate",
        tagalog: "panlasa",
        ilocano: "lapayag",
        pangasinense: "panga"
    ),
    Word(
        english: "pale",
        tagalog: "maputla",
        ilocano: "nalusiaw",
        pangasinense: "mapusisaw"
    ),
    Word(
        english: "palm",
        tagalog: "palad",
        ilocano: "dakulap",
        pangasinense: "palma"
    ),
    Word(
        english: "palsy",
        tagalog: "paralisado",
        ilocano: "paralisado",
        pangasinense: "parasy"
    ),
    Word(
        english: "pan",
        tagalog: "pan",
        ilocano: "paryok",
        pangasinense: "kawali"
    ),
    Word(
        english: "panic",
        tagalog: "panic",
        ilocano: "riribuk",
        pangasinense: "nataranta"
    ),
    Word(
        english: "parade",
        tagalog: "parada",
        ilocano: "parada",
        pangasinense: "parada"
    ),
    Word(
        english: "parallel",
        tagalog: "parallel",
        ilocano: "mipara",
        pangasinense: "parallel"
    ),
    Word(
        english: "paralytic",
        tagalog: "paralitiko",
        ilocano: "paralitiko",
        pangasinense: "paralitiko"
    ),
    Word(
        english: "parcel",
        tagalog: "parsela",
        ilocano: "bungon",
        pangasinense: "abalkot a pawit"
    ),
    Word(
        english: "parch",
        tagalog: "tuyot",
        ilocano: "parch",
        pangasinense: "parch"
    ),
    Word(
        english: "pardon",
        tagalog: "patawad",
        ilocano: "pakawan",
        pangasinense: "perdona"
    ),
    Word(
        english: "pare",
        tagalog: "pare",
        ilocano: "pare",
        pangasinense: "pare"
    ),
    Word(
        english: "parent",
        tagalog: "magulang",
        ilocano: "nagannak",
        pangasinense: "ateng"
    ),
    Word(
        english: "part",
        tagalog: "bahagi",
        ilocano: "paset",
        pangasinense: "parte"
    ),
    Word(
        english: "partition",
        tagalog: "pagkahati",
        ilocano: "panagbingaybingay",
        pangasinense: "partisyon"
    ),
    Word(
        english: "partner",
        tagalog: "partner",
        ilocano: "kaasmang",
        pangasinense: "kaiba"
    ),
    Word(
        english: "pass",
        tagalog: "pumasa",
        ilocano: "ipasa",
        pangasinense: "ipasa"
    ),
    Word(
        english: "bypass",
        tagalog: "bypass",
        ilocano: "bypass ti panag-bypass",
        pangasinense: "bypass"
    ),
    Word(
        english: "passenger",
        tagalog: "pasahero",
        ilocano: "pasahero",
        pangasinense: "pasahero"
    ),
    Word(
        english: "past",
        tagalog: "nakaraan",
        ilocano: "napalabas",
        pangasinense: "apalabas"
    ),
    Word(
        english: "pat",
        tagalog: "tapik",
        ilocano: "pat",
        pangasinense: "pat"
    ),
    Word(
        english: "path",
        tagalog: "landas",
        ilocano: "dalan",
        pangasinense: "dalan"
    ),
    Word(
        english: "patient",
        tagalog: "pasyente",
        ilocano: "pasiente",
        pangasinense: "maanos"
    ),
    Word(
        english: "pay",
        tagalog: "magbayad",
        ilocano: "agbayad",
        pangasinense: "manbayar"
    ),
    Word(
        english: "peace",
        tagalog: "kapayapaan",
        ilocano: "kapia",
        pangasinense: "kareenen"
    ),
    Word(
        english: "peck",
        tagalog: "halik",
        ilocano: "tuktok",
        pangasinense: "peck ti peck"
    ),
    Word(
        english: "peculiar",
        tagalog: "kakaiba",
        ilocano: "nikaduma",
        pangasinense: "naidumduma"
    ),
    Word(
        english: "peel",
        tagalog: "balatan",
        ilocano: "ubakan",
        pangasinense: "ukisan"
    ),
    Word(
        english: "peep",
        tagalog: "sumilip",
        ilocano: "nengnengen",
        pangasinense: "agsiput"
    ),
    Word(
        english: "pencil",
        tagalog: "lapis",
        ilocano: "lapis",
        pangasinense: "lapis"
    ),
    Word(
        english: "people",
        tagalog: "mga tao",
        ilocano: "too",
        pangasinense: "tattao"
    ),
    Word(
        english: "perch",
        tagalog: "dumapo",
        ilocano: "perch",
        pangasinense: "perch"
    ),
    Word(
        english: "perfect",
        tagalog: "perpekto",
        ilocano: "naan-anay",
        pangasinense: "perpekto"
    ),
    Word(
        english: "perform",
        tagalog: "gumanap",
        ilocano: "manggawa",
        pangasinense: "aramiden"
    ),
    Word(
        english: "perfume",
        tagalog: "pabango",
        ilocano: "pabalingit",
        pangasinense: "bangbanglo"
    ),
    Word(
        english: "perhaps",
        tagalog: "marahil",
        ilocano: "nayarin",
        pangasinense: "nalabit"
    ),
    Word(
        english: "peril",
        tagalog: "panganib",
        ilocano: "peligro",
        pangasinense: "peggad"
    ),
    Word(
        english: "period",
        tagalog: "panahon",
        ilocano: "panaon",
        pangasinense: "panawen"
    ),
    Word(
        english: "perish",
        tagalog: "mapahamak",
        ilocano: "ompatey",
        pangasinense: "madadael"
    ),
    Word(
        english: "permanent",
        tagalog: "permanente",
        ilocano: "permanente",
        pangasinense: "permanente"
    ),
    Word(
        english: "permit",
        tagalog: "pahintulot",
        ilocano: "permiso",
        pangasinense: "pammalubos"
    ),
    Word(
        english: "perpendicular",
        tagalog: "patayo",
        ilocano: "perpendikular",
        pangasinense: "perpendikular nga"
    ),
    Word(
        english: "perplex",
        tagalog: "pagkataranta",
        ilocano: "mankelaw",
        pangasinense: "mariribukan"
    ),
    Word(
        english: "persist",
        tagalog: "magpumilit",
        ilocano: "mantultuloy",
        pangasinense: "agtultuloy"
    ),
    Word(
        english: "person",
        tagalog: "tao",
        ilocano: "too",
        pangasinense: "tao"
    ),
    Word(
        english: "perspire",
        tagalog: "pawisan",
        ilocano: "manpawis",
        pangasinense: "ling-et ti ling-et"
    ),
    Word(
        english: "pest",
        tagalog: "peste",
        ilocano: "peste",
        pangasinense: "peste"
    ),
    Word(
        english: "pet",
        tagalog: "alagang hayop",
        ilocano: "alaga",
        pangasinense: "alagan ayep"
    ),
    Word(
        english: "petition",
        tagalog: "petisyon",
        ilocano: "petision ti petision",
        pangasinense: "petisyon"
    ),
    Word(
        english: "phosphorescence",
        tagalog: "phosphorescence",
        ilocano: "ti posforosensia",
        pangasinense: "phosphorescence"
    ),
    Word(
        english: "physical",
        tagalog: "pisikal",
        ilocano: "pisikal",
        pangasinense: "pisikal"
    ),
    Word(
        english: "pick",
        tagalog: "pumili",
        ilocano: "manpili",
        pangasinense: "piduten"
    ),
    Word(
        english: "pickle",
        tagalog: "atsara",
        ilocano: "atsara",
        pangasinense: "atsara"
    ),
    Word(
        english: "piece",
        tagalog: "piraso",
        ilocano: "piraso",
        pangasinense: "piraso"
    ),
    Word(
        english: "pierce",
        tagalog: "tumagos",
        ilocano: "tusok ti panangtubkol",
        pangasinense: "tumagos"
    ),
    Word(
        english: "pig",
        tagalog: "baboy",
        ilocano: "baboy",
        pangasinense: "baboy"
    ),
    Word(
        english: "pigeon",
        tagalog: "kalapati",
        ilocano: "kalapati",
        pangasinense: "kalapati"
    ),
    Word(
        english: "pile",
        tagalog: "bunton",
        ilocano: "ummongen",
        pangasinense: "bunton"
    ),
    Word(
        english: "pillow",
        tagalog: "unan",
        ilocano: "pungan",
        pangasinense: "danganan"
    ),
    Word(
        english: "pin",
        tagalog: "pin",
        ilocano: "iyaspili",
        pangasinense: "pin"
    ),
    Word(
        english: "pinch",
        tagalog: "kurutin",
        ilocano: "pinch",
        pangasinense: "pinch"
    ),
    Word(
        english: "pipe",
        tagalog: "tubo",
        ilocano: "tubo",
        pangasinense: "tubo"
    ),
    Word(
        english: "pit",
        tagalog: "hukay",
        ilocano: "nauneg nga abot",
        pangasinense: "abot"
    ),
    Word(
        english: "pitch",
        tagalog: "pitch",
        ilocano: "angtem",
        pangasinense: "pitch"
    ),
    Word(
        english: "pith",
        tagalog: "pith",
        ilocano: "pith",
        pangasinense: "pith"
    ),
    Word(
        english: "pity",
        tagalog: "kawawa naman",
        ilocano: "kasian",
        pangasinense: "asi"
    ),
    Word(
        english: "pivot",
        tagalog: "pivot",
        ilocano: "pivot ti",
        pangasinense: "pivot"
    ),
    Word(
        english: "place",
        tagalog: "lugar",
        ilocano: "pasen",
        pangasinense: "lugar"
    ),
    Word(
        english: "plague",
        tagalog: "salot",
        ilocano: "sakit",
        pangasinense: "salot"
    ),
    Word(
        english: "plain",
        tagalog: "payak",
        ilocano: "patar",
        pangasinense: "tanap"
    ),
    Word(
        english: "plan",
        tagalog: "plano",
        ilocano: "plano",
        pangasinense: "plano"
    ),
    Word(
        english: "plant",
        tagalog: "halaman",
        ilocano: "itanem",
        pangasinense: "tanem"
    ),
    Word(
        english: "plantation",
        tagalog: "plantasyon",
        ilocano: "plantasion",
        pangasinense: "plantasyon"
    ),
    Word(
        english: "plate",
        tagalog: "plato",
        ilocano: "pinggan",
        pangasinense: "plata"
    ),
    Word(
        english: "play",
        tagalog: "maglaro",
        ilocano: "agay-ayam",
        pangasinense: "mangalaw"
    ),
    Word(
        english: "plead",
        tagalog: "pakiusap",
        ilocano: "kerew",
        pangasinense: "agpakaasi"
    ),
    Word(
        english: "pleasant",
        tagalog: "kaaya-aya",
        ilocano: "makapaliket",
        pangasinense: "nagin-awa"
    ),
    Word(
        english: "please",
        tagalog: "pakiusap",
        ilocano: "ipangasim",
        pangasinense: "maidawat"
    ),
    Word(
        english: "pleasure",
        tagalog: "kasiyahan",
        ilocano: "liket",
        pangasinense: "ayo"
    ),
    Word(
        english: "pledge",
        tagalog: "pangako",
        ilocano: "pangisipan",
        pangasinense: "agkari"
    ),
    Word(
        english: "plenty",
        tagalog: "marami",
        ilocano: "dakel",
        pangasinense: "adu"
    ),
    Word(
        english: "plot",
        tagalog: "balangkas",
        ilocano: "plano",
        pangasinense: "panggep"
    ),
    Word(
        english: "plow",
        tagalog: "araro",
        ilocano: "arado",
        pangasinense: "arado"
    ),
    Word(
        english: "plug",
        tagalog: "plug",
        ilocano: "isaksak",
        pangasinense: "isaksak"
    ),
    Word(
        english: "plunder",
        tagalog: "pandaramong",
        ilocano: "panagsamsam",
        pangasinense: "samsam"
    ),
    Word(
        english: "plunge",
        tagalog: "plunge",
        ilocano: "onlelereg",
        pangasinense: "agdisso"
    ),
    Word(
        english: "pocket",
        tagalog: "bulsa",
        ilocano: "bulsa",
        pangasinense: "bulsa"
    ),
    Word(
        english: "point",
        tagalog: "punto",
        ilocano: "punto",
        pangasinense: "punto"
    ),
    Word(
        english: "poison",
        tagalog: "lason",
        ilocano: "samal",
        pangasinense: "sabidong"
    ),
    Word(
        english: "poke",
        tagalog: "sundutin",
        ilocano: "tusok",
        pangasinense: "poke"
    ),
    Word(
        english: "pole",
        tagalog: "poste",
        ilocano: "poste",
        pangasinense: "poste"
    ),
    Word(
        english: "pond",
        tagalog: "lawa",
        ilocano: "basaw",
        pangasinense: "linok"
    ),
    Word(
        english: "poor",
        tagalog: "mahirap",
        ilocano: "napanglaw",
        pangasinense: "mairap"
    ),
    Word(
        english: "pork",
        tagalog: "baboy",
        ilocano: "karne ti baboy",
        pangasinense: "karne na baboy"
    ),
    Word(
        english: "portion",
        tagalog: "bahagi",
        ilocano: "paset",
        pangasinense: "porsyon"
    ),
    Word(
        english: "position",
        tagalog: "posisyon",
        ilocano: "posision",
        pangasinense: "posisyon"
    ),
    Word(
        english: "postpone",
        tagalog: "ipagpaliban",
        ilocano: "itantan",
        pangasinense: "ipaleen"
    ),
    Word(
        english: "pound",
        tagalog: "libra",
        ilocano: "mekmeken",
        pangasinense: "dekdeken"
    ),
    Word(
        english: "pour",
        tagalog: "ibuhos",
        ilocano: "ibuntok",
        pangasinense: "ibukbok"
    ),
    Word(
        english: "powder",
        tagalog: "pulbos",
        ilocano: "pulbos",
        pangasinense: "pulbos"
    ),
    Word(
        english: "power",
        tagalog: "kapangyarihan",
        ilocano: "pakayari",
        pangasinense: "puersa"
    ),
    Word(
        english: "praise",
        tagalog: "papuri",
        ilocano: "pandayew",
        pangasinense: "itan-ok"
    ),
    Word(
        english: "pray",
        tagalog: "manalangin",
        ilocano: "manpikasi",
        pangasinense: "agkararag"
    ),
    Word(
        english: "prayer",
        tagalog: "panalangin",
        ilocano: "pikakasi",
        pangasinense: "kararag"
    ),
    Word(
        english: "preach",
        tagalog: "mangaral",
        ilocano: "manpulong",
        pangasinense: "mangasaba"
    ),
    Word(
        english: "preacher",
        tagalog: "mangangaral",
        ilocano: "managpulong",
        pangasinense: "manangaskasaba"
    ),
    Word(
        english: "precious",
        tagalog: "mahalaga",
        ilocano: "mabmabli",
        pangasinense: "nagameng"
    ),
    Word(
        english: "predict",
        tagalog: "hulaan",
        ilocano: "ipapasakbay",
        pangasinense: "ipadles"
    ),
    Word(
        english: "preface",
        tagalog: "paunang salita",
        ilocano: "pauna",
        pangasinense: "pakauna"
    ),
    Word(
        english: "prefer",
        tagalog: "mas gusto",
        ilocano: "mas labay",
        pangasinense: "ipangruna"
    ),
    Word(
        english: "prefix",
        tagalog: "unlapi",
        ilocano: "pangrugian",
        pangasinense: "pangrugian"
    ),
    Word(
        english: "pregnant",
        tagalog: "buntis",
        ilocano: "malukon",
        pangasinense: "masikug"
    ),
    Word(
        english: "prepare",
        tagalog: "maghanda",
        ilocano: "manparaan",
        pangasinense: "isagana"
    ),
    Word(
        english: "preserve",
        tagalog: "ingatan",
        ilocano: "napansiansia",
        pangasinense: "artemen"
    ),
    Word(
        english: "press",
        tagalog: "pindutin",
        ilocano: "imprentaan",
        pangasinense: "pagmalditan"
    ),
    Word(
        english: "pretend",
        tagalog: "magpanggap",
        ilocano: "mankunwari",
        pangasinense: "iyarig"
    ),
    Word(
        english: "pretty",
        tagalog: "maganda",
        ilocano: "balibali",
        pangasinense: "napintas"
    ),
    Word(
        english: "prevent",
        tagalog: "pigilan",
        ilocano: "iwasan",
        pangasinense: "maatipa"
    ),
    Word(
        english: "price",
        tagalog: "presyo",
        ilocano: "presio",
        pangasinense: "presyo"
    ),
    Word(
        english: "prick",
        tagalog: "tusok",
        ilocano: "tudok",
        pangasinense: "tusok"
    ),
    Word(
        english: "pride",
        tagalog: "pagmamalaki",
        ilocano: "kinon",
        pangasinense: "sindayag"
    ),
    Word(
        english: "priest",
        tagalog: "pari",
        ilocano: "padi",
        pangasinense: "pari"
    ),
    Word(
        english: "print",
        tagalog: "print",
        ilocano: "man-print",
        pangasinense: "imprenta"
    ),
    Word(
        english: "prison",
        tagalog: "bilangguan",
        ilocano: "prisoan",
        pangasinense: "pagbaludan"
    ),
    Word(
        english: "prisoner",
        tagalog: "bilanggo",
        ilocano: "priso",
        pangasinense: "balud"
    ),
    Word(
        english: "privilege",
        tagalog: "pribilehiyo",
        ilocano: "gundaway",
        pangasinense: "pribilehiyo"
    ),
    Word(
        english: "probably",
        tagalog: "malamang",
        ilocano: "nayarin",
        pangasinense: "sa"
    ),
    Word(
        english: "proceed",
        tagalog: "magpatuloy",
        ilocano: "ituloy",
        pangasinense: "ituloy"
    ),
    Word(
        english: "process",
        tagalog: "proseso",
        ilocano: "proseso",
        pangasinense: "proseso"
    ),
    Word(
        english: "procession",
        tagalog: "prusisyon",
        ilocano: "prosesion",
        pangasinense: "prusisyon"
    ),
    Word(
        english: "proclaim",
        tagalog: "ipahayag",
        ilocano: "iyabawag",
        pangasinense: "iwaragawag"
    ),
    Word(
        english: "procure",
        tagalog: "kumuha",
        ilocano: "mangaliw",
        pangasinense: "ti panaggatang"
    ),
    Word(
        english: "profit",
        tagalog: "tubo",
        ilocano: "gunggona",
        pangasinense: "ganansia"
    ),
    Word(
        english: "profound",
        tagalog: "malalim",
        ilocano: "aralem",
        pangasinense: "naliweng"
    ),
    Word(
        english: "progress",
        tagalog: "pag-unlad",
        ilocano: "iyaaligwas",
        pangasinense: "pagannayasan"
    ),
    Word(
        english: "prolong",
        tagalog: "pahabain",
        ilocano: "manbayag",
        pangasinense: "agpaatiddog"
    ),
    Word(
        english: "promise",
        tagalog: "pangako",
        ilocano: "sipan",
        pangasinense: "kari"
    ),
    Word(
        english: "pronounce",
        tagalog: "bigkasin",
        ilocano: "ibalikas",
        pangasinense: "ibalikas"
    ),
    Word(
        english: "proof",
        tagalog: "patunay",
        ilocano: "prueba",
        pangasinense: "ebidensia"
    ),
    Word(
        english: "prop",
        tagalog: "prop",
        ilocano: "prop",
        pangasinense: "prop"
    ),
    Word(
        english: "property",
        tagalog: "ari-arian",
        ilocano: "kayarian",
        pangasinense: "sanikua"
    ),
    Word(
        english: "prophecy",
        tagalog: "propesiya",
        ilocano: "padto",
        pangasinense: "propesiya"
    ),
    Word(
        english: "prospect",
        tagalog: "inaasam-asam",
        ilocano: "ilaloan",
        pangasinense: "makitkita"
    ),
    Word(
        english: "prosper",
        tagalog: "umunlad",
        ilocano: "onaligwas",
        pangasinense: "rumang-ay"
    ),
    Word(
        english: "prostitute",
        tagalog: "kalapating mababa ang lipad",
        ilocano: "balangkantis",
        pangasinense: "balangkantis"
    ),
    Word(
        english: "protect",
        tagalog: "protektahan",
        ilocano: "protektaan",
        pangasinense: "salakniban"
    ),
    Word(
        english: "protest",
        tagalog: "protesta",
        ilocano: "manprotesta",
        pangasinense: "protesta"
    ),
    Word(
        english: "proud",
        tagalog: "ipinagmamalaki",
        ilocano: "mapaatagey",
        pangasinense: "palangguad"
    ),
    Word(
        english: "proverb",
        tagalog: "salawikain",
        ilocano: "uliran",
        pangasinense: "proverbio"
    ),
    Word(
        english: "provide",
        tagalog: "magbigay",
        ilocano: "mangitarya",
        pangasinense: "agited"
    ),
    Word(
        english: "provoke",
        tagalog: "pukawin",
        ilocano: "manpasnok",
        pangasinense: "provoke"
    ),
    Word(
        english: "public",
        tagalog: "pampubliko",
        ilocano: "puibliko",
        pangasinense: "publiko"
    ),
    Word(
        english: "publish",
        tagalog: "ilathala",
        ilocano: "ipalapag",
        pangasinense: "ipablaak"
    ),
    Word(
        english: "puddle",
        tagalog: "lusak",
        ilocano: "puddle",
        pangasinense: "puddle"
    ),
    Word(
        english: "pull",
        tagalog: "hilahin",
        ilocano: "guyor",
        pangasinense: "guyuden"
    ),
    Word(
        english: "punishment",
        tagalog: "parusa",
        ilocano: "dusa",
        pangasinense: "dusa"
    ),
    Word(
        english: "pup",
        tagalog: "tuta",
        ilocano: "pup",
        pangasinense: "ipus"
    ),
    Word(
        english: "purchase",
        tagalog: "pagbili",
        ilocano: "pansaliw",
        pangasinense: "gumatang"
    ),
    Word(
        english: "pure",
        tagalog: "dalisay",
        ilocano: "puro",
        pangasinense: "puro"
    ),
    Word(
        english: "purify",
        tagalog: "maglinis",
        ilocano: "linisan",
        pangasinense: "dalusan"
    ),
    Word(
        english: "purpose",
        tagalog: "layunin",
        ilocano: "gagala",
        pangasinense: "gandat"
    ),
    Word(
        english: "pursue",
        tagalog: "ituloy",
        ilocano: "suroten",
        pangasinense: "ituloy"
    ),
    Word(
        english: "put",
        tagalog: "ilagay",
        ilocano: "iyan",
        pangasinense: "ikabil"
    ),
    Word(
        english: "quality",
        tagalog: "kalidad",
        ilocano: "kalidad",
        pangasinense: "kalidad"
    ),
    Word(
        english: "quantity",
        tagalog: "dami",
        ilocano: "kaadu",
        pangasinense: "karakel"
    ),
    Word(
        english: "quarrel",
        tagalog: "alitan",
        ilocano: "alitan",
        pangasinense: "alitan"
    ),
    Word(
        english: "quarter",
        tagalog: "kuwarter",
        ilocano: "kuarto",
        pangasinense: "kuarton"
    ),
    Word(
        english: "queer",
        tagalog: "kakaiba",
        ilocano: "naidumduma",
        pangasinense: "nikadkaduma"
    ),
    Word(
        english: "quench",
        tagalog: "patagilam",
        ilocano: "aginudo",
        pangasinense: "pangipalugaran"
    ),
    Word(
        english: "question",
        tagalog: "tanong",
        ilocano: "saludsod",
        pangasinense: "tepet"
    ),
    Word(
        english: "quick",
        tagalog: "mabilis",
        ilocano: "napartak",
        pangasinense: "mapmaples"
    ),
    Word(
        english: "quiet",
        tagalog: "tahimik",
        ilocano: "naulimek",
        pangasinense: "mareen"
    ),
    Word(
        english: "quit",
        tagalog: "itigil",
        ilocano: "agsardeng",
        pangasinense: "ontunda"
    ),
    Word(
        english: "quite",
        tagalog: "talaga",
        ilocano: "talaga",
        pangasinense: "talagan"
    ),
    Word(
        english: "quote",
        tagalog: "sipi",
        ilocano: "ti parapo",
        pangasinense: "say"
    ),
    Word(
        english: "ugly",
        tagalog: "pangit",
        ilocano: "aliwliwa",
        pangasinense: "naalas"
    ),
    Word(
        english: "umbrella",
        tagalog: "payong",
        ilocano: "payong",
        pangasinense: "payong"
    ),
    Word(
        english: "unbelief",
        tagalog: "kawalan ng paniniwala",
        ilocano: "kakulangan na pananisia",
        pangasinense: "Awan ti Pammati"
    ),
    Word(
        english: "unbend",
        tagalog: "iwaksi",
        ilocano: "ibantak",
        pangasinense: "ibelleng"
    ),
    Word(
        english: "unceasing",
        tagalog: "walang tigil",
        ilocano: "ag-ontunda",
        pangasinense: "Pulos a Di Agsardeng"
    ),
    Word(
        english: "unchangeable",
        tagalog: "hindi nababago",
        ilocano: "agmanguman",
        pangasinense: "di agbaliwbaliw"
    ),
    Word(
        english: "uncle",
        tagalog: "tiyuhin",
        ilocano: "tiyo",
        pangasinense: "angkal"
    ),
    Word(
        english: "unclean",
        tagalog: "hindi malinis",
        ilocano: "marutak",
        pangasinense: "saan a nadalus"
    ),
    Word(
        english: "uncomfortable",
        tagalog: "hindi komportable",
        ilocano: "agmakapaliket",
        pangasinense: "saan a komportable"
    ),
    Word(
        english: "uncover",
        tagalog: "alisin ang takip",
        ilocano: "ekalen so sakbong",
        pangasinense: "ikkaten ti kalub"
    ),
    Word(
        english: "undefiled",
        tagalog: "walang dungis",
        ilocano: "anggapoy mantsa",
        pangasinense: "awan pakapilawanna"
    ),
    Word(
        english: "under",
        tagalog: "sa ilalim",
        ilocano: "dalem",
        pangasinense: "baba"
    ),
    Word(
        english: "understand",
        tagalog: "maunawaan",
        ilocano: "natalosan",
        pangasinense: "maawatan"
    ),
    Word(
        english: "undertake",
        tagalog: "isakatuparan",
        ilocano: "gawaen",
        pangasinense: "aramiden"
    ),
    Word(
        english: "unequal",
        tagalog: "hindi Pantay",
        ilocano: "ag-inkaparpareho",
        pangasinense: "aan nga agpapada"
    ),
    Word(
        english: "unfair",
        tagalog: "hindi Makatarungan",
        ilocano: "aliwan patas",
        pangasinense: "saan a patas"
    ),
    Word(
        english: "unfaithful",
        tagalog: "hindi tapat",
        ilocano: "agmatoor",
        pangasinense: "hindi Makatarungan"
    ),
    Word(
        english: "unfold",
        tagalog: "buksan/ibunyag",
        ilocano: "lukasan/Iparungtal",
        pangasinense: "luktan / Ipalgak"
    ),
    Word(
        english: "ungodly",
        tagalog: "walang Diyos",
        ilocano: "anggapoy Dios",
        pangasinense: "awan ti dios"
    ),
    Word(
        english: "ungrateful",
        tagalog: "walang utang na loob",
        ilocano: "puso ya Anggapoy Utang",
        pangasinense: "awan ti utang"
    ),
    Word(
        english: "uninjured",
        tagalog: "walang sira/hindi nasaktan",
        ilocano: "anggapoy Aderal",
        pangasinense: "awan ti pannakadadael"
    ),
    Word(
        english: "union",
        tagalog: "pagkakaisa",
        ilocano: "pankakasakey/Pankakasakey",
        pangasinense: "panagkaykaysa"
    ),
    Word(
        english: "universal",
        tagalog: "pangkalahatan",
        ilocano: "amin",
        pangasinense: "sapasap"
    ),
    Word(
        english: "unkind",
        tagalog: "hindi mabait",
        ilocano: "aliwan Maomaong",
        pangasinense: "saan a naasi"
    ),
    Word(
        english: "unlike",
        tagalog: "hindi katulad",
        ilocano: "aliwan singa",
        pangasinense: "saan nga agpapada"
    ),
    Word(
        english: "unloose",
        tagalog: "kalasin",
        ilocano: "ukbaran",
        pangasinense: "kalasin"
    ),
    Word(
        english: "unnecessary",
        tagalog: "hindi kailangan",
        ilocano: "anggapoy",
        pangasinense: "saan a kasapulan"
    ),
    Word(
        english: "untie",
        tagalog: "kalagan",
        ilocano: "malukak",
        pangasinense: "saan a nairut"
    ),
    Word(
        english: "unto",
        tagalog: "tungo sa",
        ilocano: "ed",
        pangasinense: "agpaturong idiay"
    ),
    Word(
        english: "untrue",
        tagalog: "hindi totoo",
        ilocano: "aliwan Tua",
        pangasinense: "saan a pudno"
    ),
    Word(
        english: "unusual",
        tagalog: "hindi karaniwan",
        ilocano: "aliwan Kaslakan",
        pangasinense: "saan a kadawyan"
    ),
    Word(
        english: "unwelcome",
        tagalog: "hindi tinanggap",
        ilocano: "ag-inawat",
        pangasinense: "saan a maawat"
    ),
    Word(
        english: "unwind",
        tagalog: "magpahinga",
        ilocano: "manpainawa/manrelaks",
        pangasinense: "aginanakayo"
    ),
    Word(
        english: "up",
        tagalog: "taas",
        ilocano: "katagey",
        pangasinense: "kinatayag"
    ),
    Word(
        english: "upon",
        tagalog: "sa ibabaw ng",
        ilocano: "diad tapew na",
        pangasinense: "iti rabaw ti"
    ),
    Word(
        english: "upper",
        tagalog: "itaas",
        ilocano: "diad tagey",
        pangasinense: "ngato"
    ),
    Word(
        english: "upset",
        tagalog: "nagalit/nabahala",
        ilocano: "napapagaan/mansyodot",
        pangasinense: "makibiang"
    ),
    Word(
        english: "upward",
        tagalog: "paitaas",
        ilocano: "paatagey",
        pangasinense: "agpangato"
    ),
    Word(
        english: "urge",
        tagalog: "himukin",
        ilocano: "pasesegen",
        pangasinense: "allukoyen"
    ),
    Word(
        english: "use",
        tagalog: "gamitin",
        ilocano: "usar",
        pangasinense: "usaren"
    ),
    Word(
        english: "usual",
        tagalog: "karaniwan",
        ilocano: "maslak",
        pangasinense: "kadawyan"
    ),
    Word(
        english: "vacation",
        tagalog: "bakasyon",
        ilocano: "bakasion",
        pangasinense: "bakasyon"
    ),
    Word(
        english: "vain",
        tagalog: "walang kabuluhan",
        ilocano: "andi-kakanaan",
        pangasinense: "awan serserbina"
    ),
    Word(
        english: "value",
        tagalog: "halaga",
        ilocano: "kablian",
        pangasinense: "pateg"
    ),
    Word(
        english: "various",
        tagalog: "iba't ibang",
        ilocano: "nanduruma",
        pangasinense: "agduduma"
    ),
    Word(
        english: "veil",
        tagalog: "belo",
        ilocano: "belo",
        pangasinense: "belo"
    ),
    Word(
        english: "vein",
        tagalog: "ugat",
        ilocano: "lamot",
        pangasinense: "ramot"
    ),
    Word(
        english: "verge",
        tagalog: "gilid/muntik na",
        ilocano: "gilig/ngalngalin",
        pangasinense: "nganngani"
    ),
    Word(
        english: "very",
        tagalog: "napaka/sobra",
        ilocano: "alablabas",
        pangasinense: "unay"
    ),
    Word(
        english: "vex",
        tagalog: "inis/asar",
        ilocano: "naaburido",
        pangasinense: "aggura"
    ),
    Word(
        english: "vice",
        tagalog: "bisyo",
        ilocano: "bise",
        pangasinense: "bise"
    ),
    Word(
        english: "view",
        tagalog: "tanawin/paningin",
        ilocano: "pakanengneng",
        pangasinense: "kitaen"
    ),
    Word(
        english: "vine",
        tagalog: "baging",
        ilocano: "ubas",
        pangasinense: "ubas ti ubas"
    ),
    Word(
        english: "virgin",
        tagalog: "birhen",
        ilocano: "birhen",
        pangasinense: "birhen"
    ),
    Word(
        english: "vivid",
        tagalog: "buhay na buhay/maliwanag",
        ilocano: "mabilay a tuloy",
        pangasinense: "nlawag"
    ),
    Word(
        english: "voice",
        tagalog: "tinig/boses",
        ilocano: "boses",
        pangasinense: "timek"
    ),
    Word(
        english: "vomit",
        tagalog: "sumuka/magsuka",
        ilocano: "nansuka",
        pangasinense: "ibelleng ti ngato"
    ),
    Word(
        english: "vow",
        tagalog: "panata/sumpa",
        ilocano: "sipan",
        pangasinense: "kari"
    ),
    Word(
        english: "wabble",
        tagalog: "",
        ilocano: "onyurong ed beneg",
        pangasinense: "natalna nga inana"
    ),
    Word(
        english: "waist",
        tagalog: "baywang",
        ilocano: "balangbang",
        pangasinense: "siket"
    ),
    Word(
        english: "wait",
        tagalog: "maghintay",
        ilocano: "alagar",
        pangasinense: "aguray"
    ),
    Word(
        english: "wake",
        tagalog: "gumising",
        ilocano: "bangon",
        pangasinense: "agriing"
    ),
    Word(
        english: "walk",
        tagalog: "maglakad",
        ilocano: "akar",
        pangasinense: "agpagnapagnakayo"
    ),
    Word(
        english: "wall",
        tagalog: "pader",
        ilocano: "padir",
        pangasinense: "diding"
    ),
    Word(
        english: "wander",
        tagalog: "gumala",
        ilocano: "nanliberliber",
        pangasinense: "aggargaraw iti aglawlaw"
    ),
    Word(
        english: "want",
        tagalog: "gusto/nais",
        ilocano: "labay",
        pangasinense: "kasla"
    ),
    Word(
        english: "warm",
        tagalog: "mainit-init",
        ilocano: "ampetang",
        pangasinense: "napudot ti pudotna"
    ),
    Word(
        english: "wart",
        tagalog: "kulugo",
        ilocano: "kulugo",
        pangasinense: "kulugo"
    ),
    Word(
        english: "wash",
        tagalog: "maghugas",
        ilocano: "urasan",
        pangasinense: "bugguan"
    ),
    Word(
        english: "waste",
        tagalog: "aksaya",
        ilocano: "basura",
        pangasinense: "sayangen"
    ),
    Word(
        english: "watch",
        tagalog: "panoorin/relo",
        ilocano: "bantayan",
        pangasinense: "agbuya"
    ),
    Word(
        english: "water",
        tagalog: "tubig",
        ilocano: "danum",
        pangasinense: "danum"
    ),
    Word(
        english: "wave",
        tagalog: "alon/kumaway",
        ilocano: "daluyon",
        pangasinense: "agwaywayas"
    ),
    Word(
        english: "wax",
        tagalog: "pagkit",
        ilocano: "beeswax",
        pangasinense: "panag-wax"
    ),
    Word(
        english: "way",
        tagalog: "daan/paraan",
        ilocano: "karsada/dalan",
        pangasinense: "dalan/wagas"
    ),
    Word(
        english: "we",
        tagalog: "kami/tayo",
        ilocano: "sikami/kami",
        pangasinense: "dakami/dakami"
    ),
    Word(
        english: "weak",
        tagalog: "mahina",
        ilocano: "makapuy",
        pangasinense: "nakapsot"
    ),
    Word(
        english: "wealthy",
        tagalog: "mayaman",
        ilocano: "mayaman",
        pangasinense: "nabaknang"
    ),
    Word(
        english: "wear",
        tagalog: "magsuot",
        ilocano: "ikawes",
        pangasinense: "ikabilmo"
    ),
    Word(
        english: "weather",
        tagalog: "panahon",
        ilocano: "panaon",
        pangasinense: "tiempo"
    ),
    Word(
        english: "weave",
        tagalog: "maghabi",
        ilocano: "man-abel",
        pangasinense: "habel"
    ),
    Word(
        english: "wedding",
        tagalog: "kasal",
        ilocano: "kasal",
        pangasinense: "panagasawa"
    ),
    Word(
        english: "week",
        tagalog: "linggo",
        ilocano: "simba",
        pangasinense: "dominggo"
    ),
    Word(
        english: "weigh",
        tagalog: "timbangin",
        ilocano: "timbang",
        pangasinense: "tulong"
    ),
    Word(
        english: "welcome",
        tagalog: "malugod na pagtanggap",
        ilocano: "naabrasa kayo",
        pangasinense: "naragsak nga isasangbay"
    ),
    Word(
        english: "well",
        tagalog: "mabuti",
        ilocano: "maong",
        pangasinense: "nasayaat"
    ),
    Word(
        english: "west",
        tagalog: "kanluran",
        ilocano: "sagur",
        pangasinense: "laud"
    ),
    Word(
        english: "wet",
        tagalog: "basa",
        ilocano: "ambasa",
        pangasinense: "nabasa"
    ),
    Word(
        english: "what",
        tagalog: "ano",
        ilocano: "anto",
        pangasinense: "ania"
    ),
    Word(
        english: "wheel",
        tagalog: "gulong",
        ilocano: "dalig",
        pangasinense: "kararit"
    ),
    Word(
        english: "when",
        tagalog: "kailan",
        ilocano: "kapigan",
        pangasinense: "no"
    ),
    Word(
        english: "where",
        tagalog: "saan",
        ilocano: "iner",
        pangasinense: "sadinno"
    ),
    Word(
        english: "whether",
        tagalog: "kung",
        ilocano: "no",
        pangasinense: "no"
    ),
    Word(
        english: "while",
        tagalog: "habang",
        ilocano: "legan",
        pangasinense: "kabayatan"
    ),
    Word(
        english: "whip",
        tagalog: "latigo/hagupit",
        ilocano: "latigo",
        pangasinense: "saplit"
    ),
    Word(
        english: "whisper",
        tagalog: "bulong",
        ilocano: "iyesaes",
        pangasinense: "arasaas"
    ),
    Word(
        english: "whistle",
        tagalog: "pito",
        ilocano: "pitora",
        pangasinense: "pito"
    ),
    Word(
        english: "white",
        tagalog: "puti",
        ilocano: "amputi",
        pangasinense: "puraw"
    ),
    Word(
        english: "who",
        tagalog: "sino",
        ilocano: "siopa",
        pangasinense: "asinno"
    ),
    Word(
        english: "why",
        tagalog: "bakit",
        ilocano: "akin",
        pangasinense: "apay"
    ),
    Word(
        english: "wicked",
        tagalog: "masama",
        ilocano: "mauges",
        pangasinense: "dakes"
    ),
    Word(
        english: "wide",
        tagalog: "malawak",
        ilocano: "maawang",
        pangasinense: "naakaba"
    ),
    Word(
        english: "widow",
        tagalog: "balo",
        ilocano: "balo ya bii",
        pangasinense: "balo"
    ),
    Word(
        english: "wild",
        tagalog: "ligaw",
        ilocano: "maatap",
        pangasinense: "naatap"
    ),
    Word(
        english: "wilderness",
        tagalog: "ilang",
        ilocano: "pigara",
        pangasinense: "sumagmamano"
    ),
    Word(
        english: "win",
        tagalog: "manalo",
        ilocano: "manalo",
        pangasinense: "mangabak"
    ),
    Word(
        english: "wind",
        tagalog: "hangin",
        ilocano: "dagem",
        pangasinense: "angin"
    ),
    Word(
        english: "window",
        tagalog: "bintana",
        ilocano: "kalangweran a laki",
        pangasinense: "tawa"
    ),
    Word(
        english: "wine",
        tagalog: "alak",
        ilocano: "alkohol",
        pangasinense: "arak"
    ),
    Word(
        english: "wing",
        tagalog: "pakpak",
        ilocano: "payak",
        pangasinense: "payak dagiti payak"
    ),
    Word(
        english: "wink",
        tagalog: "kumindat",
        ilocano: "mankindat",
        pangasinense: "agkidem"
    ),
    Word(
        english: "winter",
        tagalog: "taglamig",
        ilocano: "panaoy betel",
        pangasinense: "tiempo ti lam-ek"
    ),
    Word(
        english: "wipe",
        tagalog: "punasan",
        ilocano: "punasen",
        pangasinense: "punasan"
    ),
    Word(
        english: "wise",
        tagalog: "matalino",
        ilocano: "marunong",
        pangasinense: "nasirib"
    ),
    Word(
        english: "wish",
        tagalog: "nais/hiling",
        ilocano: "pilalek/kerew",
        pangasinense: "tarigagay/kiddaw"
    ),
    Word(
        english: "with",
        tagalog: "kasama",
        ilocano: "kaiba",
        pangasinense: "kadua"
    ),
    Word(
        english: "wither",
        tagalog: "malanta",
        ilocano: "amaga",
        pangasinense: "nalaylay"
    ),
    Word(
        english: "within",
        tagalog: "sa loob",
        ilocano: "walad loob",
        pangasinense: "uneg"
    ),
    Word(
        english: "without",
        tagalog: "wala",
        ilocano: "angapo",
        pangasinense: "awan"
    ),
    Word(
        english: "witness",
        tagalog: "saksi",
        ilocano: "tasi",
        pangasinense: "saksi"
    ),
    Word(
        english: "woe",
        tagalog: "dalamhati",
        ilocano: "ermen",
        pangasinense: "leddaang"
    ),
    Word(
        english: "woman",
        tagalog: "babae",
        ilocano: "bii",
        pangasinense: "babai"
    ),
    Word(
        english: "wonder",
        tagalog: "magtaka",
        ilocano: "pankelawan",
        pangasinense: "masdaawka"
    ),
    Word(
        english: "wonderful",
        tagalog: "kahanga-hanga",
        ilocano: "makapakelaw",
        pangasinense: "nakaskasdaaw ti nakaskasdaaw"
    ),
    Word(
        english: "wood",
        tagalog: "kahoy",
        ilocano: "kiew",
        pangasinense: "kayo"
    ),
    Word(
        english: "word",
        tagalog: "salita",
        ilocano: "salita",
        pangasinense: "sarita"
    ),
    Word(
        english: "work",
        tagalog: "trabaho/gawa",
        ilocano: "kimey",
        pangasinense: "trabaho"
    ),
    Word(
        english: "world",
        tagalog: "mundo",
        ilocano: "mundo",
        pangasinense: "lubong"
    ),
    Word(
        english: "worm",
        tagalog: "uod",
        ilocano: "bigis",
        pangasinense: "uleg nga Uleg"
    ),
    Word(
        english: "worse",
        tagalog: "mas masama",
        ilocano: "mas grabe",
        pangasinense: "nakamadmadi"
    ),
    Word(
        english: "worship",
        tagalog: "sambahin",
        ilocano: "panagdayew",
        pangasinense: "idiaya"
    ),
    Word(
        english: "worst",
        tagalog: "pinakamasama",
        ilocano: "sankagrabian",
        pangasinense: "kamamadian"
    ),
    Word(
        english: "worth",
        tagalog: "halaga",
        ilocano: "kablian",
        pangasinense: "pateg"
    ),
    Word(
        english: "wound",
        tagalog: "sugat",
        ilocano: "sugat",
        pangasinense: "sugat"
    ),
    Word(
        english: "wrap",
        tagalog: "balutin",
        ilocano: "balkoten",
        pangasinense: "bungonen"
    ),
    Word(
        english: "wreck",
        tagalog: "wasakin",
        ilocano: "panaoy betel",
        pangasinense: "dadaelen"
    ),
    Word(
        english: "wring",
        tagalog: "piga/pilipit",
        ilocano: "pisilen/pisipisen",
        pangasinense: "panagbaliwbaliw"
    ),
    Word(
        english: "write",
        tagalog: "sumulat",
        ilocano: "isurat",
        pangasinense: "isulat"
    ),
    Word(
        english: "wrong",
        tagalog: "mali",
        ilocano: "kamali",
        pangasinense: "aliwa"
    ),
    Word(
        english: "year",
        tagalog: "taon",
        ilocano: "taon",
        pangasinense: "tawen"
    ),
    Word(
        english: "yell",
        tagalog: "sigaw",
        ilocano: "oningal",
        pangasinense: "agpukkaw"
    ),
    Word(
        english: "yellow",
        tagalog: "dilaw",
        ilocano: "duyaw",
        pangasinense: "duyaw"
    ),
    Word(
        english: "yes",
        tagalog: "oo",
        ilocano: "wen",
        pangasinense: "on"
    ),
    Word(
        english: "yet",
        tagalog: "hindi pa/tila",
        ilocano: "ag ni/mapatnag",
        pangasinense: "saan pay/agparang"
    ),
    Word(
        english: "yield",
        tagalog: "sumuko/magbigay",
        ilocano: "isuko/iter",
        pangasinense: "sumuko/mangted"
    ),
    Word(
        english: "yoke",
        tagalog: "pamatok",
        ilocano: "pako",
        pangasinense: "sangol"
    ),
    Word(
        english: "you",
        tagalog: "ikaw/kayo",
        ilocano: "sika",
        pangasinense: "sika"
    ),
    Word(
        english: "young",
        tagalog: "bata",
        ilocano: "anak",
        pangasinense: "ubing"
    ),
    Word(
        english: "zeal",
        tagalog: "sigasig/kasigasigan",
        ilocano: "maseseg/entusiastiko",
        pangasinense: "Entusiasmo/entusiasmo"
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
                  // Expanded to make the list scrollable
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
                                Text(word.pangasinense),
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
  final String pangasinense;
  final String tagalog;
  bool isFavorite;

  Word({
    required this.english,
    required this.ilocano,
    required this.pangasinense,
    required this.tagalog,
    this.isFavorite = false,
  });
}
