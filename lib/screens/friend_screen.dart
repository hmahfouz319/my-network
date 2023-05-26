import 'package:flutter/material.dart';
import 'package:my_network_app/screens/wedgets/screens_widgets.dart';
import 'package:my_network_app/shared/themes/colors.dart';
import 'package:my_network_app/shared/themes/text.dart';
import 'package:my_network_app/shared/widgets/action_button.dart';
import 'package:my_network_app/shared/widgets/back_button.dart';
import 'package:my_network_app/shared/widgets/bottom_nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class FriendScreen extends StatelessWidget {
  FriendScreen({super.key});

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
              ActionButtonwithIcon(
                title: 'Add to a group ',
                icon: Icons.add,
                action: () {
                  showModalBottomSheet<void>(
                    backgroundColor: transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: blue,
                        ),
                        // color: grey,
                        height: 300,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: grey,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(9),
                                      ),
                                    ),
                                    width: 75,
                                    height: 12,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12, left: 16),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              print('Text button waspressed');
                                            },
                                            child: Text(
                                              '. Work',
                                              style: h3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              print('Text button was pressed');
                                            },
                                            child: Text(
                                              '. Work',
                                              style: h3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              print('Text button waspressed');
                                            },
                                            child: Text(
                                              '. Work',
                                              style: h3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              print('Text button was pressed');
                                            },
                                            child: Text(
                                              '. Work',
                                              style: h3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              print('Text button waspressed');
                                            },
                                            child: Text(
                                              '. Work',
                                              style: h3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                  print('Friend  added to a group');
                },
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
                    crossAxisCount: 3),
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
      bottomNavigationBar: BottomNavBar(
        selectedItemColor: grey,
      ),
      extendBody: true,
    );
  }
}
