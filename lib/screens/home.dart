import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/models/artists.dart';
import 'package:music_player_app/screens/classifications.dart';
import 'package:music_player_app/styleguides/colors.dart';
import 'package:music_player_app/styleguides/text_styles.dart';
import 'package:music_player_app/utils/image_assets.dart';
import 'package:music_player_app/widgets/RoundedImageWidget.dart';
import 'package:music_player_app/widgets/bigCardWidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBackgroundColor,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(top: 4.0, left: 12.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: secondaryTextColor),
          ),
          child: IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 4.0, right: 12.0),
            decoration: BoxDecoration(
              color: iconBackgroundColor,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(
                Icons.notifications_none_sharp,
                color: secondaryTextColor,
              ),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Classifications())),
            ),
          ),
        ],
        title: Text(
          'Discover',
          style: appBarTextStyle,
        ),
        centerTitle: true,
      ),
      backgroundColor: darkBackgroundColor,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 24.0, 0.0, 10.0),
              child: Text(
                'Recently Played',
                textAlign: TextAlign.left,
                style: headingTextStyle_1
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 14.0),
              height: 200,
              color: Colors.green,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 160.0,
                        width: 160.0,
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(ayaNak),
                        ),
                      ),
                      Text("Labyrinth", style: primarySongTextStyle, textAlign: TextAlign.left,),
                      Text("Lorendana", style: secondarySongTextStyle,)
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 24.0, 0.0, 10.0),
              child: Text(
                  'Your Favorite Artists',
                  textAlign: TextAlign.left,
                  style: headingTextStyle_2
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    for (var i = 0; i < artists.length; i++) RoundedImageWidget(
                      imagePath: artists[i].imagePath,
                      name: artists[i].name,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            for (var i = 0; i < 2; i++)
            BigCardWidget(),
          ],
        ),
      ),
    );
  }
}
