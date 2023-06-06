import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:web_project/first_page.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(apiKey: "AIzaSyCKqO7_7mk91TZJqj25VRnuFHOBjjtDT6Y",
        appId: "1:391857569126:web:b5cd0d02b1882901709ca7",
        messagingSenderId: "391857569126",
        projectId: "webuniversity-b0393",)
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: const TextTheme(bodySmall: TextStyle(fontSize: 24, color: Colors.white70))
      ),
      home: const FirstPage()
    );
  }
}

