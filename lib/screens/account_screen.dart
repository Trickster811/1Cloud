import 'package:flutter/widgets.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/girl_studying_with_music.png',
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
          Text(
            '@julie Queen',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
