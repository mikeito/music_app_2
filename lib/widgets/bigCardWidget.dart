import 'package:flutter/material.dart';
import 'package:music_player_app/screens/player.dart';
import 'package:music_player_app/styleguides/text_styles.dart';
import 'package:music_player_app/utils/image_assets.dart';

class BigCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.0,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Opacity(
              opacity: 0.7,
              child: Image.asset(
                ayaNak,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            margin: EdgeInsets.fromLTRB(16.0, 60.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Music by Julie Gable.', style: secondarySongTextStyle),
                SizedBox(height: 7.0,),
                Text('Music by Julie Gable.', style: headingTextStyle_2,),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.grey,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.play_arrow),
                        color: Colors.white,
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Player())),
                      ),
                    ),
                    SizedBox(width: 2.0,),
                    Text("Play", style: primarySongTextStyle,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
