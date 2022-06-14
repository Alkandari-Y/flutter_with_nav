import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/new_post.dart';
import 'package:flutter_playground/widgets/profile_widgets/post_card.dart';
import 'package:flutter_playground/widgets/profile_widgets/profile_header.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    List<String> postContent = ['I like Python', 'Learning Dart & Flutter'];

// Try to separete the Appbar into a re-usable widget
// to avoid redundact code base
// Current issues include passing and receiving title for the
// app bar

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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewPostForm()));
        },
        tooltip: 'Create a new post!',
        child: Icon(Icons.create),
      ),
    );
  }
}
