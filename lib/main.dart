import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  final title = 'FlutterSample';
  final message = 'sample message';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      home: MyhomePage(title: this.title, message: this.message),
    );
  }
}

class MyhomePage extends StatefulWidget {
  final String title;
  final String message;
  const MyhomePage({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text(
        widget.message,
        style: TextStyle(fontSize: 32),
      ),
    );
  }
}
