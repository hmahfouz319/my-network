import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_network_app/screens/login/signup_screen.dart';
import 'package:my_network_app/shared/themes/text.dart';
import 'package:my_network_app/shared/widgets/action_button.dart';

import '../../shared/themes/colors.dart';

class LoginScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  LoginScreen({super.key});

  var email = TextEditingController();

  var password = TextEditingController();

  var formKey = GlobalKey<FormState>();

  var passwordNode = FocusNode();

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(
          FocusNode(),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          // leading: ,
          title: Text(
            'Login',
            style: h5Bold,
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //email text field
                  TextFormField(
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).requestFocus(passwordNode);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email can't be empty";
                      }
                      return null;
                    },
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: white,
                    style: title1,
                    decoration: InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: grey,
                          width: 2,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: lightRed,
                          width: 2,
                        ),
                      ),
                      label: Text(
                        'enter a valid email',
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
                  //password text field
                  StatefulBuilder(
                    builder: (context, setState) => TextFormField(
                      focusNode: passwordNode,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password can't be empty";
                        }
                        return null;
                      },
                      controller: password,
                      obscureText: isHidden,
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: white,
                      style: title1,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            isHidden = !isHidden;
                            setState(() {});
                          },
                          icon: isHidden == true
                              ? Icon(
                                  Icons.lock,
                                  color: grey,
                                )
                              : Icon(
                                  Icons.lock_open,
                                  color: lightRed,
                                ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: grey,
                            width: 2,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: lightRed,
                            width: 2,
                          ),
                        ),
                        label: Text(
                          'enter a password',
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
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ActionButton(
                    buttonWidth: double.infinity,
                    title: 'Login',
                    buttonHeight: 60,
                    titleStyle: h5Bold,
                    action: () {
                      if (formKey.currentState!.validate()) {
                        print('====================');
                        print(email.text);
                        print(password.text);
                        print('====================');
                      }
                    },
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget my password',
                        style: title2.merge(TextStyle(color: grey)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ActionButton(
                    buttonWidth: double.infinity,
                    title: 'Login with google',
                    buttonHeight: 60,
                    titleStyle: h5Bold,
                    action: () {},
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ActionButton(
                    buttonWidth: double.infinity,
                    title: 'Login with facebook',
                    buttonHeight: 60,
                    titleStyle: h5Bold,
                    action: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Don't have account",
                        style: title2.merge(TextStyle(color: grey)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
