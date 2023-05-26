import 'package:flutter/material.dart';
import 'package:my_network_app/shared/themes/colors.dart';
import 'package:my_network_app/shared/themes/text.dart';
import 'package:my_network_app/shared/widgets/back_button.dart';
import 'package:my_network_app/shared/widgets/bottom_nav_bar.dart';

import 'wedgets/contact_card.dart';

class SingleGroupScreen extends StatelessWidget {
  const SingleGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyBackButton(),
        title: Text(
          'Work',
          // style: h5Bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                image: AssetImage('assets/group.jpg'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Group Members',
              style: h3Bold,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedItemColor: grey,),
      extendBody: true,
    );
  }
}
