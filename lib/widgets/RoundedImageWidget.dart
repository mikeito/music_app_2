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
      children: <Widget>[
        Container(
          // color: Colors.red,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: imageSize + 8,
          child: Stack(
            children: <Widget>[
              Container(
                width: imageSize,
                height: imageSize,
                child: ClipOval(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (name != null) Text(name, style: secondarySongTextStyle,)
      ],
    );
  }
}
