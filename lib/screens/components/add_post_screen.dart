import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icloud/constants.dart';

class AddPostScreen extends StatelessWidget {
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
            'assets/icons/arrow-left.svg',
            color: kPrimaryColor,
          ),
        ),
        title: Text(
          'New post',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 15,
            fontFamily: 'Comfortaa_bold',
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 8.0,
              ),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10000.0),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'Publish',
                      style: TextStyle(
                        fontFamily: 'Comfortaa_bold',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/send.2.svg',
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}
