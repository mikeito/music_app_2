import 'package:flutter/material.dart';
import 'package:music_player_app/models/musicClassifications.dart';
import 'package:music_player_app/styleguides/colors.dart';
import 'package:music_player_app/widgets/classification_widgets/songsWidget.dart';

class Classifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: musicClass.length,
        child: Scaffold(
          backgroundColor: darkBackgroundColor,
          appBar: AppBar(
            backgroundColor: darkBackgroundColor,
            flexibleSpace: SafeArea(
              child: Container(
                  margin: EdgeInsets.only(left: 12.0),
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: secondaryTextColor,
                    indicatorWeight: 2.0,
                    tabs: musicClass.map<Widget>(
                        (MusicClassifications musicClassifications) {
                      return Tab(
                        text: musicClassifications.title,
                      );
                    }).toList(),
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black87)))),
            ),
          ),
          body: TabBarView(
            children: [
              SongsWidget(),
              Icon(Icons.directions_transit, color: primaryTextColor,),
              Icon(Icons.directions_bike, color: primaryTextColor,),
              Icon(Icons.directions_bike, color: primaryTextColor,),
              Icon(Icons.directions_bike, color: primaryTextColor,),
            ],
          ),
        ),
      ),
    );
  }
}
