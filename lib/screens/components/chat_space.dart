import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icloud/constants.dart';
import 'package:icloud/screens/chat_screen.dart';

class ChatSpace extends StatefulWidget {
  final ConversationInfo conversationInfo;

  const ChatSpace({
    Key? key,
    required this.conversationInfo,
  }) : super(key: key);

  @override
  State<ChatSpace> createState() => _ChatSpaceState();
}

class _ChatSpaceState extends State<ChatSpace> {
  int index = 0;
  List<Message> messages = [
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: true,
    ),
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: true,
    ),
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: true,
    ),
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Yes sure',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: true,
    ),
  ].reversed.toList();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Colors.amberAccent,
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
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                widget.conversationInfo.image,
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Text(
                widget.conversationInfo.username,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 15,
                ),
              ),
            ),
          ],
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
      body: Column(
        children: [
          Expanded(child: Container(
          
          )),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/edit-square.5.svg',
                    color: kPrimaryColor,
                  ),
                ),
                Flexible(
                  child: TextField(
                    onChanged: (String value) {
                      setState(() {
                        if (value != '') {
                          index = 1;
                        } else {
                          index = 0;
                        }
                      });
                      print(value);
                    },
                    onSubmitted: (String value) {},
                    cursorWidth: 1.0,
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(2.0),
                        hintText: 'type a message'),
                  ),
                ),
                index == 0
                    ? IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/camera.2.svg',
                          color: kPrimaryColor,
                        ),
                      )
                    : IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/send.3.svg',
                          color: kPrimaryColor,
                        ),
                      ),
                index == 0
                    ? IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/voice.svg',
                          color: kPrimaryColor,
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;
  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}
