import 'package:flutter/material.dart';

import '../themes/colors.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        size: 40,
        color: orange,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
