import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_network_app/screens/screens.dart';

import '../../screens/groups_screen.dart';
import '../../screens/my_network_screen.dart';
import '../methods/naviagtion.dart';
import '../themes/colors.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key, this.selectedItemColor});
  Color? selectedItemColor;
  static int index = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BottomNavigationBar(
        backgroundColor: bottomNvBarColor,
        selectedItemColor: selectedItemColor ?? orange,
        unselectedItemColor: grey,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: ''),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.globe), label: ''),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userGroup), label: ''),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: ''),
        ],
        onTap: (value) {
          if (value == 0) {
            index = 0;
            goto(
              context: context,
              screen: HomeScreen(),
            );
          } else if (value == 1) {
            index = value;
            goto(context: context, screen: MyNetworkScreen());
          } else if (value == 2) {
            index = value;
            goto(context: context, screen: GroupsScreen());
          } else if (value == 3) {
            index = value;
            goto(context: context, screen: ProfileScreen());
          }
        },
      ),
    );
  }
}
