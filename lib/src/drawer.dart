import 'package:flutter/material.dart';
import 'package:gamify/src/contact_hotline.dart';
import 'package:gamify/src/dashboard.dart';
import 'package:gamify/src/games.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Text('Drawer Header'),
      ),
      ListTile(
        title: const Text('Dashboard'),
        onTap: () {
          Get.to(Dashboard());
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: const Text('Contacts'),
        onTap: () {
          Get.to(ContactHotline());
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: const Text('Games'),
        onTap: () {
          // Update the state of the app.
          Get.to(GamesPage());

          // ...
        },
      ),
    ],
  ),
);
  }
}