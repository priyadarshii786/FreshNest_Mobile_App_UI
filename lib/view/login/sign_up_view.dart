import 'package:FreshNest/common/color_extension.dart';
import 'package:FreshNest/common_widget/dropdown.dart';
import 'package:FreshNest/common_widget/line_textfield.dart';
import 'package:FreshNest/common_widget/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  //! ------------------------------------------------------------
  //! Configuring the buttons of Email, Password, and username.

  TextEditingController txtUserName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  bool isShow =
      false; // ------ this is basically for the password to be hidden while writing it on the screen.

  //! ------------------------------------------------------------

  //! ------------------------------------------------------------
  //! Copying the whole code from the "sign_in_view.dart" file

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(children: [
      Container(
        color: Colors.white,
      ),
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            //? ------------ Working of the back button of the screen ------------
            onPressed: () {
              Navigator.pop(context);
            },
            //? ------------------------------------------------------------
            icon: Image.asset(
              "assets/img/back.png",
              width: 20,
              height: 20,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, //? Doing some needful changes
              children: [
                Row(
                  //? ------- Doing some needful changes -------
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/color_logo.png",
                      width: 40,
                    ),
                  ],
                ),
                //? --------------------------------------------
                SizedBox(
                  height: media.width * 0.15,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Text(
                  "Enter your Credentials to Continue",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: media.width * 0.1,
                ),
                //? ---------- necessary changes to suit the SignUp Screen. ----------
                LineTextField(
                  title: "UserName",
                  placeholder: "Enter your UserName",
                  controller: txtUserName,
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                //? ----------------------------------------
                LineTextField(
                  title: "E-mail",
                  placeholder: "Enter your Email-address",
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                LineTextField(
                  title: "Password",
                  placeholder: "Enter your Password",
                  controller: txtPassword,
                  obscureText: !isShow,
                  right: IconButton(
                      onPressed: () {
                        setState(() {
                          isShow = !isShow;
                        });
                      },
                      icon: Icon(
                        !isShow ? Icons.visibility_off : Icons.visibility,
                        color: TColor.textTittle,
                      )),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        children: [
                      const TextSpan(text: "By Continuing you agree to the "),
                      TextSpan(
                          text: "Terms of Service",
                          style: TextStyle(
                              color: TColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Terms of Service Clicked");
                            }),
                      const TextSpan(
                        text: " and ",
                      ),
                      TextSpan(
                          text: "Privacy & Policy",
                          style: TextStyle(
                              color: TColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Privacy Policy Clicked");
                            }),
                      const TextSpan(
                        text: " of FreshNest. ",
                      ),
                    ])),
                SizedBox(
                  height: media.width * 0.06,
                ),
                SizedBox(
                  height: media.width * 0.007,
                ),
                RoundButton(
                  //? Doing some needful changes
                  title: "Sign Up",
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const SignInView(),
                    //     ));
                  },
                ),
                SizedBox(
                  height: media.width * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      //* ---------------------------------------------------
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      //* ---------------------------------------------------
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Already have an Account?",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Sign In",
                            style: TextStyle(
                                color: TColor.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
  //! ------------------------------------------------------------
}
