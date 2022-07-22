import 'package:fluent_back_home/fluent_back_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: const Center(
            child: Text("Back to home screen"),
          ),
        ),
        onWillPop: () async {
          FluentBackHome.back();
          //important
          return false;
        },
      ),
    );
  }
}
