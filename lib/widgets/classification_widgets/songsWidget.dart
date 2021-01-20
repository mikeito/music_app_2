import 'package:flutter/material.dart';
import 'package:music_player_app/styleguides/colors.dart';
import 'package:music_player_app/styleguides/text_styles.dart';
import 'package:music_player_app/utils/image_assets.dart';

class SongsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            height: 120.0,
            margin: EdgeInsets.only(top: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.purple,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.play_arrow),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Play All",
                      style: primarySongTextStyle,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Bob marley',
                      style: secondarySongTextStyle,
                    ),
                    Spacer(),
                    Container(
                      width: 55,
                      height: 30,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: primaryTextColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border:
                      Border.all(width: 1.0, color: secondaryTextColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle_outlined,
                        color: secondaryTextColor,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "ADD SONGS",
                        style: albumPlayTextStyle,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            physics: ScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            itemBuilder: (context, index) {
              return ListTile(
                //contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      ayaNak,
                    ),
                  ),
                  title: Text(
                    'Bob marley $index',
                    style: primarySongTextStyle,
                  ),
                  subtitle: Text(
                    'Bob marley $index',
                    style: secondarySongTextStyle,
                  ),
                  trailing: Container(
                    width: 40.0,
                    height: 40.0,
                    padding: const EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                      color: iconBackgroundColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: secondaryTextColor,
                      ),
                      onPressed: null,
                    ),
                  ),
                  onTap: null);
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
