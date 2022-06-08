import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_playground/widgets/post_card.dart';
import 'package:flutter_playground/widgets/profile_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    List<String> postContent = ['I like Python', 'Learning Dart & Flutter'];
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Column(
            children: [
              const ProfileHeader(),
              PostCard(title: postContent[0]),
              PostCard(title: postContent[1])
            ],
          ),
        )
    );
  }
}
