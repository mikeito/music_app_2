import 'package:flutter/material.dart';
import 'package:music_player_app/styleguides/colors.dart';
import 'package:music_player_app/styleguides/text_styles.dart';
import 'package:music_player_app/utils/image_assets.dart';

class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: darkBackgroundColor,
      appBar: AppBar(
          backgroundColor: darkBackgroundColor,
          elevation: 0,
          leading: Container(
            margin: EdgeInsets.only(top: 4.0, left: 12.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryTextColor,
            ),
            child: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
              ),
              onPressed: () {Navigator.pop(context);},
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(top: 4.0, right: 12.0),
              padding: const EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: secondaryTextColor),
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
          ],
          title: Container(
            margin: EdgeInsets.only(top: 4.0),
            width: 120,
            height: 45,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: primaryTextColor,
                ),
                SizedBox(width: 5.0,),
                Text("SAVED", style: albumPlayTextStyle,)
              ],
            ),
          ),
          centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 7.0),
              // height: screenSize.height / 2,
              width: screenSize.width,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(ayaNak, height: 230.0,),
                  ),
                  SizedBox(height: 20.0,),
                  Text("Pookie", style: playerTextStyle_1,),
                  Text("Aya Nakamura", style: secondarySongTextStyle,),
                ],
              ),
            ),
            // slider section
            Column(
              children: [
                Slider(value: 4, min: 0, max: 4, onChanged: null),
                Container(
                  // width: 290.0,
                  margin: EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("2:05", style: albumPlayTextStyle,),
                      Text("3:12", style: albumPlayTextStyle,),
                    ],
                  ),
                ),
              ],
            ),
            //  Controls buttons
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Ink(
                        decoration: const ShapeDecoration(
                            shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.shuffle_rounded),
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                      ),
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0XFF656365),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.skip_previous),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.purple,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.pause),
                          color: Colors.white,
                          iconSize: 50.0,
                          onPressed: () {},
                        ),
                      ),
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0XFF656365),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.skip_next),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      Ink(
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.repeat),
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bluetooth,
                        color: Colors.green,
                        size: 18.0,
                      ),
                      SizedBox(width: 5.0,),
                      Text("Airpod Pro", style: playerTinyTextStyle,)
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(top: 24.0),
                padding: EdgeInsets.all(7.0),
                height: 60.0,
                width: screenSize.width *0.9,
                decoration: BoxDecoration(
                    color: primaryTextColor,
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(ayaNak,),
                    ),
                    SizedBox(width: 7.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Airpod Pro", style: playerTinyTextStyle,),
                        Text("Airpod Pro", style: playerTinyTextStyle,),
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: secondaryTextColor),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.skip_next_outlined,
                          color: secondaryTextColor,
                        ),
                        onPressed: null,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: secondaryTextColor),
                          shape: BoxShape.circle,
                          color: Colors.black12
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.playlist_play,
                          color: secondaryTextColor,
                        ),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
