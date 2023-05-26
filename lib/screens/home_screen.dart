import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_network_app/screens/screens.dart';
import 'package:my_network_app/shared/themes/colors.dart';
import 'package:my_network_app/shared/themes/text.dart';
import 'package:my_network_app/shared/widgets/action_button.dart';
import 'package:my_network_app/shared/widgets/bottom_nav_bar.dart';

import '../shared/methods/naviagtion.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var phoneNumber = TextEditingController();
  // TextEditingController phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        titleSpacing: 16,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: phoneNumber,
                keyboardType: TextInputType.phone,
                cursorColor: white,
                style: title1,
                decoration: InputDecoration(
                  label: Text(
                    'enter the phone number',
                    style: title1.merge(TextStyle(color: grey)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: grey,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: white,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ActionButtonwithIcon(
                title: 'search',
                icon: Icons.search,
                action: () {
                  goto(context: context, screen: MyNetworkScreen());
                  print(phoneNumber.text);
                },
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
