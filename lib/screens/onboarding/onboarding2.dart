import 'package:flutter/material.dart';
import 'package:my_network_app/shared/methods/naviagtion.dart';
import 'package:my_network_app/shared/widgets/action_button.dart';

import '../../shared/themes/text.dart';
import '../screens.dart';

class Onboarding2Screen  extends StatelessWidget {
  const Onboarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(64),
                child: Image(
                    image: AssetImage(
                  'assets/onboarding2.jpeg',
                )),
              ),
              SizedBox(
                height: 47,
              ),
              Text(
                'My networke app is the\n best app for\n conneting people',
                style: h5,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16, right: 24),
        child: ActionButton(title: 'Next',
        action: () {
             goto(context: context, screen: Onboarding3Screen());
          },
          ),
      ),
    );
  }
}
