import 'package:flutter/material.dart';
import 'package:my_network_app/screens/screens.dart';
import 'package:my_network_app/shared/methods/naviagtion.dart';

import '../../shared/themes/colors.dart';
import '../../shared/themes/text.dart';

class ContactCard extends StatelessWidget {
  ContactCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goto(context: context, screen: FriendScreen());
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 38.5,
            backgroundImage: AssetImage('assets/33.jpg'),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hisham Mahfouz',
                style: title1,
              ),
              Text('+9656620370', style: title1.merge(TextStyle(color: grey))),
            ],
          ),
        ],
      ),
    );
  }
}
