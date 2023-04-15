import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello flutter',
      home: MyHomePage(title: 'flutter test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static var _message = 'ok.';
  static var _janken = <String>['グー', 'チョキ', 'パー'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    _message,
                    style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                  ),
                ),
                Container(
                  child: Text(
                    'を出したよ！',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: ButtonPressed,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Push me!',
                  style: TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void ButtonPressed() {
    setState(() {
      _message = (_janken..shuffle()).first;
    });
  }
}
