import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icloud/constants.dart';
import 'package:icloud/screens/account_screen.dart';
import 'package:icloud/screens/chat_screen.dart';
import 'package:icloud/screens/home_screen.dart';
import 'package:icloud/screens/my_cloud_screen.dart';
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

  final screens = [
    HomeScreen(),
    MyCloudScreen(),
    StorieScreen(),
    SearchScreen(),
    AccountScreen(),
    ChatScreen(),
  ];

  final screenName = [
    'One Cloud',
    'My Cloud',
    'Storie',
    'Search',
    'Account',
    'Chat',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
            icon: Badge(
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
              child: SvgPicture.asset(
                'assets/icons/notification.2.svg',
                color: kPrimaryColor,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/more-circle.1.svg',
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      body: screens[index],
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // color: kSecondaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
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
                  index = 1;
                });
              },
              icon: Column(
                children: [
                  index == 1
                      ? SvgPicture.asset(
                          'assets/icons/chart.2.svg',
                          color: kPrimaryColor,
                        )
                      : SvgPicture.asset(
                          'assets/icons/chart.4.svg',
                          color: kPrimaryColor,
                        ),
                  Spacer(),
                  Text(
                    'Cloud',
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
