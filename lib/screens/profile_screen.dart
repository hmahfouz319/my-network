import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_network_app/screens/screens.dart';
import 'package:my_network_app/screens/wedgets/social_media_icon.dart';
import 'package:my_network_app/shared/themes/text.dart';
import 'package:my_network_app/shared/widgets/back_button.dart';
import 'package:my_network_app/shared/widgets/bottom_nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../shared/methods/naviagtion.dart';
import '../shared/themes/colors.dart';
import '../shared/widgets/action_button.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  Map<String, String> socialMedia = {
    "facebook.png": "https://www.facebook.com/hisham.mahfouz.39",
    'linkedin.png': 'https://www.linkedin.com/feed/',
    "watsapp.png": "https://wa.me/+96566230370",
  };

  // List<String> socialMedia = [
  //   "facebook.png",
  //   // 'github.png',
  //   // 'Instagram.png',
  //   'linkedin.png',
  //   // 'tiktok.png',
  //   // 'vimeo.png',
  //   "watsapp.png",
  //   // 'youtube.png',
  //   // '33.jpg'
  // ];
  // List<String> socialMediaLink = [
  //   "https://www.facebook.com/hisham.mahfouz.39",
  //   // 'github.png',
  //   // 'Instagram.png',
  //   'https://www.linkedin.com/feed/',
  //   // 'tiktok.png',
  //   // 'vimeo.png',
  //   "https://wa.me/+96566230370",
  //   // 'youtube.png',
  //   // '33.jpg'
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          // style: title1,
        ),
        leading: MyBackButton(),
      ),
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 80,
              // ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/33.jpg"),
                radius: 120,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hisham Mahfouz",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ActionButton(
                    title: 'Edit Profile ',
                    action: () {
                      print('Edit profile');
                    },
                    buttonColor: grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ActionButton(
                    title: 'Delete  profile ',
                    action: () {
                      AwesomeDialog(
                        titleTextStyle: h1Bold.merge(
                          TextStyle(color: black),
                        ),
                        // customHeader: Icon(Icons.warning,color:lightRed,size:60,),
                        context: context,
                        dialogType: DialogType.warning,
                        // dialogType: DialogType.info,
                        animType: AnimType.rightSlide,
                        title: 'Delete profile',
                        desc:
                            'Are you sure that you want to delete your profile?',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {
                          print('Delete my profile');
                        },
                      ).show();
                    },
                    buttonColor: lightRed,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "+965 66230370",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse('tel:+96566230370'));
                    },
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                itemCount: socialMedia.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return SocialMediaIcon(
                    socialMedia: socialMedia.keys.toList()[index],
                    socialMedialink: socialMedia.values.toList()[index],
                  );
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(20),
              ),
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
