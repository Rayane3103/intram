import 'package:flutter/material.dart';
import 'package:myapp/Components/tappybar.dart';
import 'package:myapp/Components/tapyicon.dart';
import 'package:myapp/Constants/constants.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(
        left: 50,
        right: 50,
        top: 30,
      ),
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/Sayah.png'),
              )),
          const Text(
            'Sayah Abdel-illah',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          TappyBar(icon: Icons.person, title: 'Profile', onPressed: () {}),
          TappyBar(
              icon: Icons.notifications,
              title: 'Notifications',
              onPressed: () {}),
          TappyBar(icon: Icons.key, title: 'Login Settings', onPressed: () {}),
          TappyBar(icon: Icons.call, title: 'Service Center', onPressed: () {}),
          const SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {},
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      size: 40,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Log Out',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: primaryColor),
                    )
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}
