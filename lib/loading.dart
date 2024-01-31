import 'dart:async';
import 'package:flutter/material.dart';
import 'anguage_translator_view.dart';
import 'home.dart';

class Loadingpage extends StatefulWidget {
  const Loadingpage({super.key});

  @override
  State<Loadingpage> createState() => _LoadingpageState();
}

class _LoadingpageState extends State<Loadingpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),()=>
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()))
    );
  }
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Icon(Icons.translate_sharp,size: 100,color: Colors.purple,shadows: [],),
    );
  }
}