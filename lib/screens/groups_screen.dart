import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_network_app/screens/screens.dart';
import 'package:my_network_app/shared/themes/text.dart';
import 'package:my_network_app/shared/widgets/back_button.dart';
import 'package:my_network_app/shared/widgets/bottom_nav_bar.dart';

import '../shared/methods/naviagtion.dart';
import '../shared/themes/colors.dart';
import 'wedgets/group_item.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyBackButton(),
        title: Text(
          'Groups',
          // style: h5Bold,
        ),
      ),
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // mainAxisSpacing: 10,
          // crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GroupItem();
        },
        // shrinkWrap: true,
        // primary: false,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
      ),
      bottomNavigationBar: BottomNavBar(),
      extendBody: true,
    );
     
  }
}
