import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewPostForm extends StatefulWidget {
  const NewPostForm({Key? key}) : super(key: key);

  @override
  State<NewPostForm> createState() => _NewPostFormState();
}

class _NewPostFormState extends State<NewPostForm> {
  // String title =
  // String body =
  //add image picker

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Post'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        shadowColor: Colors.black45,
      ),
      body: Column(
        children: [
          Container(
            child: const Text('SANITY CHECK'),
          )
        ],
      ),
    );
  }
}
