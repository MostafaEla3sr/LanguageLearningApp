import 'package:flutter/material.dart';
import 'package:tuko/components/list_item.dart';
import 'package:tuko/models/item.dart';
import 'package:tuko/screens/home_page.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<Item> numbers = const [
    Item(
      enName: 'one',
      jpName: 'ichi',
      image: 'assets/images/numbers/number_one.png',
      sound: 'number_one_sound.mp3',
    ),
    Item(
      enName: 'two',
      jpName: 'ni',
      image: 'assets/images/numbers/number_two.png',
      sound: 'number_two_sound.mp3',
    ),
    Item(
      enName: 'three',
      jpName: 'san',
      image: 'assets/images/numbers/number_three.png',
      sound: 'number_three_sound.mp3',
    ),
    Item(
      enName: 'four',
      jpName: 'shi',
      image: 'assets/images/numbers/number_four.png',
      sound: 'number_four_sound.mp3',
    ),
    Item(
      enName: 'five',
      jpName: 'go',
      image: 'assets/images/numbers/number_five.png',
      sound: 'number_five_sound.mp3',
    ),
    Item(
      enName: 'six',
      jpName: 'roku',
      image: 'assets/images/numbers/number_six.png',
      sound: 'number_six_sound.mp3',
    ),
    Item(
      enName: 'seven',
      jpName: 'shichi',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'number_seven_sound.mp3',
    ),
    Item(
      enName: 'eight',
      jpName: 'hachi',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'number_eight_sound.mp3',
    ),
    Item(
      enName: 'nine',
      jpName: 'kyuu',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'number_nine_sound.mp3',
    ),
    Item(
      enName: 'ten',
      jpName: 'juu',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'number_ten_sound.mp3',
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
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            itemType: 'numbers',
            color: Color(0xFFFFE99135),
          );
        },
      ),
    );
  }
}
