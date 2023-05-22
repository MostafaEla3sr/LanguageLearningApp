import 'package:flutter/material.dart';
import 'package:tuko/screens/home_page.dart';

void main(){
  runApp(Toku());
}
class Toku extends StatelessWidget {
  const Toku({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
