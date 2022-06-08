import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_playground/pages/profile_page.dart';
import 'package:flutter_playground/widgets/profile_list_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    List<String> profileList = ['Yousef', 'A J'];
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Column(
            children: [
              ProfileListItem(title: profileList[0]),
              ProfileListItem(title: profileList[1])
            ],
          ),
        ));
  }
}
//               ProfileView(title: profileList[0]),
//               ProfileView(title: profileList[1])