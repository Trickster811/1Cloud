import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icloud/constants.dart';
import 'package:icloud/screens/components/notifications_view.dart';

class NotificationScreen extends StatelessWidget {
  final List notification = [
    NotificationsList(
      icon: 'assets/icons/star.4.svg',
      title: 'Achievements',
      subtitle: 'new data',
      color: Colors.yellow,
      numberMessage: 07,
    ),
    NotificationsList(
      icon: 'assets/icons/activity.2.svg',
      title: 'Activity',
      subtitle: 'view your activity',
      color: Colors.blue,
      numberMessage: 6,
    ),
    NotificationsList(
      icon: 'assets/icons/heart.5.svg',
      title: 'Favorite',
      subtitle: 'subscription',
      color: Colors.red,
      numberMessage: 02,
    ),
    NotificationsList(
      icon: 'assets/icons/arrow-up-square.2.svg',
      title: 'Application',
      subtitle: 'new update available',
      color: Colors.green,
      numberMessage: 00,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
          'Notifications',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 20,
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (final item in notification)
                notifications_element(context, item),
            ],
          ),
        ),
      ),
    );
  }

  Widget notifications_element(
      BuildContext context, NotificationsList element) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NotificationViewScreen(
              notificationsList: element,
            ),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                child: ClipOval(
                  child: SvgPicture.asset(
                    element.icon,
                    color: element.color,
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  // color: Colors.red,
                  height: 70,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            element.title,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'Comfortaa_regular',
                            ),
                          ),
                          Text(
                            element.subtitle,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                              fontFamily: 'Comfortaa_regular',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Badge(
                            animationType: BadgeAnimationType.scale,
                            badgeColor: Colors.blueAccent,
                            position: BadgePosition.center(),
                            badgeContent: Text(
                              element.numberMessage.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/arrow-right-2.4.svg',
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationsList {
  final String icon, title, subtitle;
  final Color color;
  final int numberMessage;
  const NotificationsList({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.numberMessage,
  });
}
