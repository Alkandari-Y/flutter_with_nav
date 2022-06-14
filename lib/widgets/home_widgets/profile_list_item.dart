import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/profile_page.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProfileView(title: title)));
      },
      child: Container(
        width: 250,
        color: const Color.fromARGB(234, 247, 245, 245),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1366341843747827714/Nx4KBMQO_400x400.jpg"),
              backgroundColor: Colors.transparent,
              radius: 35,
            ),
            Text('Yousef')
          ],
        )
      ),
    );
  }
}
