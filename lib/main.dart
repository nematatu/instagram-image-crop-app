import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ImagePicker _picker = ImagePicker();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () async {
            final XFile? image =
                await _picker.pickImage(source: ImageSource.gallery);
          },
          child: Container(
            width: 300,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: const <Widget>[
                Positioned(
                  child: Align(
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.5,
                      child: Icon(Icons.add, size: 50, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          focusColor: Colors.white,
        ),
      ),
    );
  }
}
