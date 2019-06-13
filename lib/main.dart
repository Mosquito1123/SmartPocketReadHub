import 'package:flutter/material.dart';

import 'package:readhub/app/app.dart';
import 'package:readhub/app/ui/web/WebPage.dart';

final readHubTheme = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
);

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/about_me": (context) =>
          new WebPage("About Me", "https://github.com/Mosquito1123"),
      "/about_app": (context) => new WebPage("About App",
          "https://github.com/Mosquito1123/SmartPocketReadHub/blob/master/README.md"),
      "/code": (context) => new WebPage("Look Project",
          "https://github.com/Mosquito1123/SmartPocketReadHub.git"),
    },
    home: new ReadHubApp(),
    theme: readHubTheme,
  ));
}
