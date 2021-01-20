import 'package:flutter/material.dart';

import 'screens/library.dart';
import 'screens/friends.dart';
import 'screens/home.dart';
import 'screens/search.dart';
import 'screens/settings.dart';
import 'styleguides/colors.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: darkBackgroundColor,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: TabBarView(
        children: <Widget>[
          Library(),
          Search(),
          Home(),
          Friends(),
          Settings(),
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            color: darkBackgroundColor,
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: secondaryTextColor,
              labelStyle: TextStyle(fontSize: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              //For Indicator Show and Customization
              indicatorColor: darkBackgroundColor,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.view_quilt,
                    size: 24.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.search,
                    size: 24.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.library_music,
                    size: 24.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.group_outlined,
                    size: 24.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.account_circle_rounded,
                    size: 24.0,
                  ),
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
