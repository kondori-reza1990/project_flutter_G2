import 'package:flutter/material.dart';

void main() => runApp(const SecondPage());

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String text = "My First Project in FLUTTER";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlutterLogo(
                size: 250,
              ),
              Text(
                "Title",
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(15),
                      child: SingleChildScrollView(
                        child: Text(
                          "The Flutter logo, in widget form. This widget respects the IconTheme. For guidelines on using the Flutter logo, visit https://flutter.dev/brand. See also: IconTheme, which provides ambient configuration for icons. Icon, for showing icons the Material design icon library. ImageIcon, for showing icons from AssetImages or other ImageProviders. The Flutter logo, in widget form. This widget respects the IconTheme. For guidelines on using the Flutter logo, visit https://flutter.dev/brand. See also: IconTheme, which provides ambient configuration for icons. Icon, for showing icons the Material design icon library. ImageIcon, for showing icons from AssetImages or other ImageProviders.",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      )
                  ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Save"))
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
