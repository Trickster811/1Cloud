import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icloud/constants.dart';
import 'package:icloud/functions.dart';
import 'package:icloud/screens/account_screen.dart';
import 'package:icloud/screens/chat_screen.dart';
import 'package:icloud/screens/home_screen.dart';
import 'package:icloud/screens/notifications_screen.dart';
import 'package:icloud/screens/search_screen.dart';
import 'package:icloud/screens/storie_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      // _counter++;
    });
  }

  int index = 0;
  double appBarHeightSize = 0;

  final screens = [
    HomeScreen(),
    NotificationScreen(),
    StorieScreen(),
    SearchScreen(),
    AccountScreen(),
    ChatScreen(),
  ];

  final screenName = [
    'One Cloud',
    'Notifications',
    'My Post',
    'Search',
    'Account',
    'Chat',
  ];

  List<List<String>> menuItemList = [
    [
      'assets/icons/setting.2.svg',
      'Settings',
    ],
    [
      'assets/icons/info-square.4.svg',
      'About',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        screenName[index],
        style: TextStyle(
          color: kPrimaryColor,
          fontSize: 25,
          fontFamily: 'Comfortaa_bold',
        ),
      ),
      actions: [
        index == 1
            ? IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: kPrimaryColor,
                ),
              )
            : index == 1
                ? Container()
                : IconButton(
                    onPressed: () {
                      setState(() {
                        index = 5;
                      });
                    },
                    icon: Badge(
                      animationType: BadgeAnimationType.scale,
                      badgeColor: Colors.blueAccent,
                      // position: BadgePosition.center(),
                      badgeContent: Text(
                        '99+',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/chat.6.svg',
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
        IconButton(
          onPressed: () {
            UsualFunctions.openDialog(context, menuItemList, appBarHeightSize);
          },
          icon: SvgPicture.asset(
            'assets/icons/more-circle.1.svg',
            color: kPrimaryColor,
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: index != 4
          ? screens[index]
          : index != 5
              ? screens[index]
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: screens[index],
                ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // color: kSecondaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  appBarHeightSize = appBar.preferredSize.height;
                  index = 0;
                });
              },
              icon: Center(
                child: Column(
                  children: [
                    index == 0
                        ? SvgPicture.asset(
                            'assets/icons/home.3.svg',
                            color: kPrimaryColor,
                          )
                        : SvgPicture.asset(
                            'assets/icons/home.svg',
                            color: kPrimaryColor,
                          ),
                    Spacer(),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 7,
                        fontFamily: 'Comfortaa_bold',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  appBarHeightSize = appBar.preferredSize.height;
                  index = 1;
                });
              },
              icon: Column(
                children: [
                  Badge(
                    animationType: BadgeAnimationType.scale,
                    badgeColor: Colors.blueAccent,
                    // position: BadgePosition.center(),
                    badgeContent: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    child: index == 1
                        ? SvgPicture.asset(
                            'assets/icons/notification.5.svg',
                            color: kPrimaryColor,
                          )
                        : SvgPicture.asset(
                            'assets/icons/notification.2.svg',
                            color: kPrimaryColor,
                          ),
                  ),
                  Spacer(),
                  Text(
                    'Updates',
                    style: TextStyle(
                      fontSize: 7,
                      fontFamily: 'Comfortaa_bold',
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  appBarHeightSize = appBar.preferredSize.height;
                  index = 2;
                });
              },
              icon: Column(
                children: [
                  index == 2
                      ? SvgPicture.asset(
                          'assets/icons/plus.3.svg',
                          color: kPrimaryColor,
                        )
                      : SvgPicture.asset(
                          'assets/icons/plus.1.svg',
                          color: kPrimaryColor,
                        ),
                  Spacer(),
                  Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 7,
                      fontFamily: 'Comfortaa_bold',
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  appBarHeightSize = appBar.preferredSize.height;
                  index = 3;
                });
              },
              icon: Column(
                children: [
                  index == 3
                      ? SvgPicture.asset(
                          'assets/icons/search.6.svg',
                          color: kPrimaryColor,
                        )
                      : SvgPicture.asset(
                          'assets/icons/search.svg',
                          color: kPrimaryColor,
                        ),
                  Spacer(),
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 7,
                      fontFamily: 'Comfortaa_bold',
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  appBarHeightSize = appBar.preferredSize.height;
                  index = 4;
                });
              },
              icon: Column(
                children: [
                  index == 4
                      ? SvgPicture.asset(
                          'assets/icons/profile.3.svg',
                          color: kPrimaryColor,
                        )
                      : SvgPicture.asset(
                          'assets/icons/profile.4.svg',
                          color: kPrimaryColor,
                        ),
                  Spacer(),
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 7,
                      fontFamily: 'Comfortaa_bold',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
