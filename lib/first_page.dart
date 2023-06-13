import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:web_project/widgets/first_page_widgets/decorations_widget.dart';
import 'package:web_project/widgets/first_page_widgets/information_card.dart';
import 'package:web_project/widgets/first_page_widgets/settings_button_widget.dart';
import 'package:web_project/widgets/first_page_widgets/true_information_card_widget.dart';

List<String> titles = <String>[
  'Добавить карточку',
  'История игр',
];


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initFirebase();
  }

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 2;
    const TextStyle tabbarTextStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w400);
    const Color colorBackground = Colors.black87;
    const TextStyle textCard = TextStyle(fontSize: 18, );

    return DefaultTabController(
      length: tabsCount,
      child: Scaffold(
        backgroundColor: colorBackground,
        appBar: AppBar(
          leading: const Icon(Icons.sports_basketball),
          shadowColor: Colors.redAccent,
          title: const Text("Баскетбольная визитница", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
          actions: const[
            settingsButtonWidget()
          ],

          bottom: TabBar(

            labelStyle: tabbarTextStyle,
            tabs: [
              Tab(
                icon: const Icon(Icons.person_2_sharp),
                text: titles[0],
              ),
              Tab(
                icon: const Icon(Icons.history),
                text: titles[1],
              )
            ],

          ),
        ),

        body: TabBarView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Decorationn(),
                InformationCard(textCard: textCard),
                Decorationn()
              ],
            ),
            StreamBuilder(
              stream: FirebaseFirestore.instance.collection('basket',).snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                if (!snapshot.hasData) return (const Text('пусто'));
                return ListView.builder(
                  itemCount: snapshot.data?.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TrueInformationCardWidget(textCard: textCard, hitsCount: splitString((snapshot.data?.docs[index].get('ponts'))));

                  },
                );
              },
            )
          ],
        ),
    )
    );
  }
}

List<String> splitString(String str) {
  List<String> substrings = str.split(' ');
  return substrings;
}