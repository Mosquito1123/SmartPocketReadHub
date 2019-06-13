import 'package:flutter/material.dart';

class ReadHubDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> drawList = [
      new UserAccountsDrawerHeader(
        accountName: new Text("Winston"),
        accountEmail: new Text("winston.zhangwentong@gmail.com"),
        currentAccountPicture: new CircleAvatar(
          backgroundImage: new NetworkImage(
              "https://avatars1.githubusercontent.com/u/9191053?s=400&u=30609eff4012af352d1b6034a8d9a89a4ee0ae04&v=4"),
        ),
        onDetailsPressed: () {
          Navigator.pop(context);
        },
      ),
      new ListTile(
        leading: new Icon(Icons.person),
        title: new Text("about me"),
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context).pushNamed("/about_me");
        },
      ),
      new ListTile(
        leading: new Icon(Icons.scanner),
        title: new Text("about app"),
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context).pushNamed("/about_app");
        },
      ),
      new ListTile(
        leading: new Icon(Icons.looks),
        title: new Text("look project"),
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context).pushNamed("/code");
        },
      ),
    ];
    return new Drawer(
      child: new ListView(
        children: drawList,
      ),
    );
  }
}
