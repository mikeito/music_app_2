import 'package:flutter/material.dart';
import 'package:music_player_app/styleguides/text_styles.dart';

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Library screen", style: secondarySongTextStyle,),
      ),
    );
  }
}
