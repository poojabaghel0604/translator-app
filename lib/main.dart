import 'package:flutter/material.dart';
import 'home.dart';
import 'loading.dart';

void main(){
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
      title: "tranlator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,),
      home: Homepage(),
    );
  }
}

