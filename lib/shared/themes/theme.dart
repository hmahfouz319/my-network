import 'package:flutter/material.dart';
import 'package:my_network_app/shared/themes/text.dart';

import 'colors.dart';

var appTheme = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: transparent, titleTextStyle: h5Bold, titleSpacing: 0),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        // backgroundColor: Colors.red,
        backgroundColor: orange),
    scaffoldBackgroundColor: navy,
    
    textTheme: TextTheme(
        displayLarge: h1,
        displayMedium: h2,
        displaySmall: h3,
        headlineMedium: h4,
        headlineSmall: h5,
        titleLarge: title1,
        titleMedium: title2,
        bodyLarge: body,
        bodySmall: caption));
