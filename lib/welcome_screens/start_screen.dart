import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icloud/constants.dart';
import 'package:icloud/screens/account_screen.dart';
import 'package:icloud/screens/chat_screen.dart';
import 'package:icloud/screens/home_screen.dart';
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
    ChatScreen(),
    StorieScreen(),
    SearchScreen(),
    AccountScreen(),
  ];

  final screenName = [
    '1Cloud',
    'Chat',
    'Storie',
    'Search',
    'Profile',
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
              : Container(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/notification.2.svg',
              color: kPrimaryColor,
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
              icon: index == 0
                  ? SvgPicture.asset(
                      'assets/icons/home.3.svg',
                      color: kPrimaryColor,
                    )
                  : SvgPicture.asset(
                      'assets/icons/home.svg',
                      color: kPrimaryColor,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
              icon: index == 1
                  ? SvgPicture.asset(
                      'assets/icons/chat.svg',
                      color: kPrimaryColor,
                    )
                  : SvgPicture.asset(
                      'assets/icons/chat.6.svg',
                      color: kPrimaryColor,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
              icon: index == 2
                  ? SvgPicture.asset(
                      'assets/icons/plus.2.svg',
                      color: kPrimaryColor,
                    )
                  : SvgPicture.asset(
                      'assets/icons/plus.svg',
                      color: kPrimaryColor,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  index = 3;
                });
              },
              icon: index == 3
                  ? SvgPicture.asset(
                      'assets/icons/search.2.svg',
                      color: kPrimaryColor,
                    )
                  : SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: kPrimaryColor,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  index = 4;
                });
              },
              icon: index == 4
                  ? SvgPicture.asset(
                      'assets/icons/profile.5.svg',
                      color: kPrimaryColor,
                    )
                  : SvgPicture.asset(
                      'assets/icons/profile.4.svg',
                      color: kPrimaryColor,
                    ),
            ),
          ],
        ),
      ),
      
    );
  }
}
