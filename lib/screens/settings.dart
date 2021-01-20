import 'package:flutter/material.dart';
import 'package:music_player_app/styleguides/text_styles.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Settings screen", style: secondarySongTextStyle,),
      ),
    );
  }
}
