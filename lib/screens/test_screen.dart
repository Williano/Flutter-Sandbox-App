import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: RaisedButton(
          child: Text('push a route'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(title: Text('Route for ')),
                  body: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: TextField(),
                  ),
                );
              },
            ));
          },
        ));
  }
}
