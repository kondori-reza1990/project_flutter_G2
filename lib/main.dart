import 'package:demo_project/add_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    );
  }
}


class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String text = "My First Project in FLUTTER";
  double fontSize = 38;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
                "assets/images/image1.png"
            ),
            Text(
              "Title",
              style: TextStyle(
                  fontSize: fontSize,
                  fontFamily: "titleFont",
                  fontWeight: FontWeight.bold
              ),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(15),
                  child: const SingleChildScrollView(
                    child: Text(
                      "The Flutter logo, in widget form. This widget respects the IconTheme. For guidelines on using the Flutter logo, visit https://flutter.dev/brand. See also: IconTheme, which provides ambient configuration for icons. Icon, for showing icons the Material design icon library. ImageIcon, for showing icons from AssetImages or other ImageProviders. The Flutter logo, in widget form. This widget respects the IconTheme. For guidelines on using the Flutter logo, visit https://flutter.dev/brand. See also: IconTheme, which provides ambient configuration for icons. Icon, for showing icons the Material design icon library. ImageIcon, for showing icons from AssetImages or other ImageProviders.",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  )
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddCard()
                      )
                  );
                },
                child: Text("Add Card"))
          ],
        ),
      ),
    );
  }
}