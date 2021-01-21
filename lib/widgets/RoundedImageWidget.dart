import 'package:flutter/material.dart';
import 'package:music_player_app/styleguides/text_styles.dart';

class RoundedImageWidget extends StatelessWidget {
  final String name;
  final String imagePath;
  final imageSize = 80.0;

  RoundedImageWidget({Key key, @required this.name, @required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          margin: EdgeInsets.only(bottom: 7.0),
          height: imageSize + 8,
          child: Container(
            width: imageSize,
            height: imageSize,
            child: CircleAvatar(
              backgroundImage: AssetImage(imagePath),
            ),
          ),
        ),
        Text(name, style: secondarySongTextStyle,)
      ],
    );
  }
}
