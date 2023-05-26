import 'package:flutter/material.dart';
import 'package:my_network_app/screens/screens.dart';

import '../../shared/themes/colors.dart';
import '../../shared/themes/text.dart';
import '../../shared/widgets/action_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  var email = TextEditingController();

  var password = TextEditingController();

  var confirmPassword = TextEditingController();

  var formKey = GlobalKey<FormState>();

  var passwordNode = FocusNode();

  var confirmPasswordNode = FocusNode();

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
          title: Text('SignUp'),
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
                      onFieldSubmitted: (value) {
                        FocusScope.of(context)
                            .requestFocus(confirmPasswordNode);
                      },
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
                  // confirm password
                  StatefulBuilder(
                    builder: (context, setState) => TextFormField(
                      focusNode: confirmPasswordNode,
                      validator: (value) {
                        if (password.text.isEmpty) {
                          return "Password can't be empty";
                        }
                        if (value != password.text)
                          return "passwords doesn't match";
                        return null;
                      },
                      controller: confirmPassword,
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
                          'Confirm password',
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
                    title: 'SignUp',
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Or',
                    style: h5Bold.merge(
                      TextStyle(color: grey),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ActionButton(
                    buttonWidth: double.infinity,
                    title: 'SignUp with google',
                    buttonHeight: 60,
                    titleStyle: h5Bold,
                    action: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ActionButton(
                    buttonWidth: double.infinity,
                    title: 'SignUp with facebook',
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
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Already have an account",
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
