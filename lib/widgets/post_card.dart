import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:15, bottom: 15),
      width: 250,
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(234, 248, 247, 247),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Color.fromARGB(255, 185, 184, 184), blurRadius: 5),
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Image.network(
            "https://logos-download.com/wp-content/uploads/2016/10/Python_logo_icon-700x697.png",
            height: 100,
          )
        ],
      )
    );
  }
}
