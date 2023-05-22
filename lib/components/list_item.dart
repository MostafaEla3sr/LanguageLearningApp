import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.number, required this.itemType, required this.color}) : super(key: key);
  final Item number;
  final String itemType ;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: color,
      child: Row(
        children: [
          Container(
            height: 100,
            color: Color(0xFFFFFFF5DE),
            child: Image.asset(
              number.image!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: (){
              try {
                AudioCache player = AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(number.sound);
              } on Exception catch (e) {
                print(e);
              }
            },
            icon: Icon( Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),),
        ],
      ),
    );
  }
}
