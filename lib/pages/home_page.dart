import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/home_widgets/profile_list_item.dart';

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
      //Try to remove the drawer and avoid redunant code
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1366341843747827714/Nx4KBMQO_400x400.jpg"),
                  ),
                  accountName: Text('Yousef'),
                  accountEmail: Text('e@mail.com')),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ProfileListItem(title: profileList[0]),
            ProfileListItem(title: profileList[1])
          ],
        ),
      ),
    );
  }
}
