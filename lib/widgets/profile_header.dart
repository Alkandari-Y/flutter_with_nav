import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.network("https://pbs.twimg.com/profile_banners/1039672864780308482/1587398710/600x200"),
          Positioned(
            left: 15,
            bottom: 25,
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1366341843747827714/Nx4KBMQO_400x400.jpg"),
              backgroundColor: Colors.transparent,
              radius: 35,
            ),
          ),
        ],
      ),
    );
  }
}
