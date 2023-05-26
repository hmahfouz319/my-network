import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_network_app/screens/screens.dart';
import 'package:my_network_app/shared/themes/colors.dart';
import 'package:my_network_app/shared/themes/text.dart';
import 'package:my_network_app/shared/widgets/back_button.dart';
import 'package:my_network_app/shared/widgets/bottom_nav_bar.dart';

import '../shared/methods/naviagtion.dart';
import 'wedgets/contact_card.dart';

class MyNetworkScreen extends StatelessWidget {
  const MyNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Network'),
        leading: MyBackButton(),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              ContactCard(),
              SizedBox(
                height: 20,
              ),
              ContactCard(),
              SizedBox(
                height: 20,
              ),
              ContactCard(),
              SizedBox(
                height: 20,
              ),
              ContactCard(),
              SizedBox(
                height: 20,
              ),
              ContactCard(),
              SizedBox(
                height: 20,
              ),
              ContactCard(),
              SizedBox(
                height: 20,
              ),
              ContactCard(),
              SizedBox(
                height: 20,
              ),
              ContactCard(),
              SizedBox(
                height: 20,
              ),
              ContactCard(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      extendBody: true,
    );
  }
}
