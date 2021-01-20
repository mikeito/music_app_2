import 'package:flutter/material.dart';
import 'package:music_player_app/screens/player.dart';
import 'package:music_player_app/styleguides/text_styles.dart';
import 'package:music_player_app/utils/image_assets.dart';

class BigCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)
        ),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.9,
              child: Image.asset(
                largeImg,
                fit: BoxFit.fill,
              ),
            ),
            Container(
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
                          color: Colors.black,
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
          ],
        ),
      ),
    );
  }
}
