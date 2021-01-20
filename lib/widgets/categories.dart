import 'package:flutter/material.dart';
import 'package:music_player_app/styleguides/colors.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses", "Footwear", "Dresses"];
  // List<String> categories = ["Songs", "Playlists", "Artists", "Albums"];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(bottom: 0.0),
            margin: EdgeInsets.only(bottom: 0.0),
            child: buildCategory(index),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: secondaryTextColor
                  )
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 4.0), //top padding 5
              height: 30,
              width: 78,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: selectedIndex == index ? secondaryTextColor : Colors.green,
                  )
                ),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: selectedIndex == index ? primaryTextColor : secondaryTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

