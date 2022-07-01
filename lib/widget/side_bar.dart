import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:medical_consulttancy/controller/preference_controller.dart';
import 'package:medical_consulttancy/view/page_one.dart';

import '../models/user.dart';
import '../view/user_type_selection.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = User();
    String detail =
        PreferenceController.getString(PreferenceController.prefKeyUserDetail);
    if (detail.isNotEmpty) {
      user = User.fromJson(json.decode(detail));
    }

    return SafeArea(
        child: Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: Image.network(user.profileImage!).image,
            ),
            accountName: Text(user.firstName),
            accountEmail: Text(user.email),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Page one'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const PageOne()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () {
              PreferenceController.clear();
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const UserSelection()));
            },
          )
        ],
      ),
    ));
  }
}
