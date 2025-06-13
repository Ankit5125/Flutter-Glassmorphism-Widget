import 'package:flutter/material.dart';
import 'package:icurrency_converter/GlassMorphism.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueAccent,
        primaryColorLight: Colors.lightBlueAccent,
        primaryColorDark: Colors.blue,
        highlightColor: const Color.fromARGB(255, 150, 112, 255),
        focusColor: Color.fromRGBO(211, 158, 255, 1),
      ),
      debugShowCheckedModeBanner: true,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Theme.of(context).focusColor,
        title: Center(
          child: Text(
            "iCurrnecy Converter",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).focusColor,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          GlassMorphism(
            blur: 100,
            child: Container(height: double.infinity, width: double.infinity),
          ),
        ],
      ),
    );
  }
