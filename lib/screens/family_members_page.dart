import 'package:flutter/material.dart';
import 'package:tuko/components/list_item.dart';
import 'package:tuko/models/item.dart';
import 'package:tuko/screens/home_page.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<Item> family_members = const [
    Item(
      enName: 'father',
      jpName: 'Chichioya ',
      image: 'assets/images/family_members/family_father.png',
      sound: 'father.wav',
    ),
    Item(
      enName: 'mother',
      jpName: 'Hahaoya',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'mother.wav',
    ),
    Item(
      enName: 'son',
      jpName: 'Musuko',
      image: 'assets/images/family_members/family_son.png',
      sound: 'son.wav',
    ),
    Item(
      enName: 'daughter',
      jpName: 'Musume',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'daughter.wav',
    ),
    Item(
      enName: 'grand father',
      jpName: 'Ojīsan',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'grand father.wav',
    ),
    Item(
      enName: 'grand mother',
      jpName: 'Sobo',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'grand mother.wav',
    ),
    Item(
      enName: 'older brother',
      jpName: 'Nisan',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'older bother.wav',
    ),
    Item(
      enName: 'younger brother',
      jpName: 'Otōto',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'younger brohter.wav',
    ),
    Item(
      enName: 'older sister',
      jpName: 'Ane',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'older sister.wav',
    ),
    Item(
      enName: 'younger sister',
      jpName: 'Imōto',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'younger sister.wav',
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
        itemCount: family_members.length,
        itemBuilder: (context, index) {
          return ListItem(number: family_members[index], itemType: 'family_members', color: Color(0xFFFF588834),);
        },
      ),
    );
  }
}
