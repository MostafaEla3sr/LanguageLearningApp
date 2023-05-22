import 'package:flutter/material.dart';
import 'package:tuko/components/list_item.dart';
import 'package:tuko/models/item.dart';
import 'package:tuko/screens/home_page.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<Item> colors = const [
    Item(
      enName: 'black',
      jpName: 'Burakku',
      image: 'assets/images/colors/color_black.png',
      sound: 'black.wav',
    ),
    Item(
      enName: 'white',
      jpName: 'Shiroi',
      image: 'assets/images/colors/color_white.png',
      sound: 'white.wav',
    ),
    Item(
      enName: 'brown',
      jpName: 'Chairo',
      image: 'assets/images/colors/color_brown.png',
      sound: 'brown.wav',
    ),
    Item(
      enName: 'yellow',
      jpName: 'Kiiro',
      image: 'assets/images/colors/yellow.png',
      sound: 'yellow.wav',
    ),
    Item(
      enName: 'dusty yellow',
      jpName: 'Hokori ppoi kiiro',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'dusty yellow.wav',
    ),
    Item(
      enName: 'gray',
      jpName: 'Gurē',
      image: 'assets/images/colors/color_gray.png',
      sound: 'gray.wav',
    ),
    Item(
      enName: 'green',
      jpName: 'Midori',
      image: 'assets/images/colors/color_green.png',
      sound: 'green.wav',
    ),
    Item(
      enName: 'red',
      jpName: 'Aka',
      image: 'assets/images/colors/color_red.png',
      sound: 'red.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            ));
          },
        ),
        backgroundColor: Color(0xFFFF45312B),
        title: Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(number: colors[index], itemType: 'colors', color: Color(0xFFFF75369F),);
        },
      ),
    );
  }
}
