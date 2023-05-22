import 'package:flutter/material.dart';
import 'package:tuko/components/category_item.dart';
import 'package:tuko/screens/colors_page.dart';
import 'package:tuko/screens/family_members_page.dart';
import 'package:tuko/screens/numbers_page.dart';
import 'package:tuko/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFDF4DA),
        appBar: AppBar(
          backgroundColor: Color(0xFFFF45312B),
          title: Text('Toku'),
        ),
        body: Column(
          children: [
            CategoryItem(
              text: 'Numbers',
              color: Color(0xFFFFE99135),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NumbersPage();
                    },
                  ),
                );
              },
            ),
            CategoryItem(
              text: 'Family Members',
              color: Color(0xFFFF588834),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FamilyMembersPage();
                    },
                  ),
                );
              },
            ),
            CategoryItem(
              text: 'Colors',
              color: Color(0xFFFF75369F),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColorsPage();
                    },
                  ),
                );
              },
            ),
            CategoryItem(
              text: 'Phrases',
              color: Color(0xFFFF55ABC9),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PhrasesPage();
                    },
                  ),
                );              },
            ),
          ],
        ),
      ),
    );
  }
}
