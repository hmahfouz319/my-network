import 'package:flutter/material.dart';
import 'package:my_network_app/screens/single_group_screen.dart';
import 'package:my_network_app/shared/themes/colors.dart';
import 'package:my_network_app/shared/themes/text.dart';

import '../../shared/methods/naviagtion.dart';

class GroupItem extends StatelessWidget {
  const GroupItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goto(context: context, screen: SingleGroupScreen());
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(grey, BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage('assets/work.jpg'),
              ),
              color: orange,
              borderRadius: BorderRadius.circular(39),
            ),
          ),
          Center(
            child: Text(
              'Work',
              style: h3Bold,
            ),
          ),
        ],
      ),
    );
  }
}
