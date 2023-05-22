import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko/models/item.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({Key? key, required this.phrase, required this.itemType, required this.color}) : super(key: key);
  final Item phrase;
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
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    fontSize: 16,
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
                player.play(phrase.sound);
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
