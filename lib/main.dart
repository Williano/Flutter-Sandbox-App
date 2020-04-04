import 'package:flutter/material.dart';
import 'package:flutter_sandbox/screens/sliver_screen.dart';

void main() => runApp(SandboxApp());

class SandboxApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SliverScreen(),
    );
  }
}
