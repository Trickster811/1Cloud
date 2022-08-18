import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icloud/constants.dart';
import 'package:icloud/screens/notifications_screen.dart';

class NotificationViewScreen extends StatelessWidget {
  final NotificationsList notificationsList;

  const NotificationViewScreen({
    Key? key,
    required this.notificationsList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.maybePop(context),
          icon: SvgPicture.asset(
            'assets/icons/arrow-left-2.2.svg',
            color: kPrimaryColor,
          ),
        ),
        title: Text(
          notificationsList.title,
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 15,
            fontFamily: 'Comfortaa_bold',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
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
      body: notificationsList.numberMessage != 0
          ? Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (var i = 0; i < notificationsList.numberMessage; i++)
                      itemBuilder(),
                  ],
                ),
              ),
            )
          : Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/category.4.svg',
                  color: Colors.black26,
                  height: 75,
                  width: 75,
                ),
                Text(
                  'Empty!!!',
                  style: TextStyle(
                    fontFamily: 'Comfortaa_bold',
                    fontSize: 20,
                    color: Colors.black26,
                  ),
                ),
              ],
            ),),
    );
  }

  Column itemBuilder() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            '6/10/2022 8:24 PM',
            style: TextStyle(
              fontFamily: 'Comfortaa_bold',
              fontSize: 9,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.black12))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        notificationsList.icon,
                        color: notificationsList.color,
                      ),
                      Text(
                        notificationsList.title,
                        style: TextStyle(
                          fontFamily: 'Comfortaa_bold',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  'New medal earned',
                  style: TextStyle(
                    fontFamily: 'Comfortaa_bold',
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  'Congratulations! You earned a new medal: 10.000 steps',
                  style: TextStyle(
                    fontFamily: 'Comfortaa_regular',
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
