import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final List<List> accountItem_1 = [
      [
        'assets/icons/star.4.svg',
        'My Achievements',
        Colors.yellow,
      ],
      [
        'assets/icons/activity.2.svg',
        'My Data',
        Colors.green,
      ],
      [
        'assets/icons/heart.5.svg',
        'My Favorite',
        Colors.red,
      ],
      [
        'assets/icons/profile.3.svg',
        'My Profile',
        Colors.blueAccent,
      ],
    ];
    final List<List> accountItem_2 = [
      [
        'assets/icons/setting.6.svg',
        'Settings',
        Colors.blueGrey,
      ],
      [
        'assets/icons/shield-done.4.svg',
        'Privacy Management',
        Colors.lightBlue,
      ],
      [
        'assets/icons/bookmark.5.svg',
        'Help',
        Colors.purple,
      ],
      [
        'assets/icons/arrow-up-square.2.svg',
        'Check for updates',
        Colors.green,
      ],
      [
        'assets/icons/info-square.3.svg',
        'About',
        Colors.blue,
      ],
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipOval(
              child: Image.asset(
                'assets/images/girl_studying_with_music.png',
                fit: BoxFit.cover,
                height: 75,
                width: 75,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 20,
            ),
          ),
          Center(
            child: Text(
              '@julie_Queen',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Comfortaa_bold',
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'One Cloud Data',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Comfortaa_bold',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    // height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: [
                        for (final element in accountItem_1)
                          settings_element(element, accountItem_1),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Others',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Comfortaa_bold',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    // height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        for (final element in accountItem_2)
                          settings_element(element, accountItem_2),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget settings_element(List element, List<List> accountItem) {
    return InkWell(
      onTap: () {},
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            child: SvgPicture.asset(
              element[0],
              color: element[2],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              // color: Colors.red,
              height: 50,
              decoration: element != accountItem.last
                  ? BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black12,
                        ),
                      ),
                    )
                  : BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    element[1],
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: 'Comfortaa_regular',
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/arrow-right-2.4.svg',
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
