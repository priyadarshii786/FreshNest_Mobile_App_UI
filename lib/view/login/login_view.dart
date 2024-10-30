import 'package:FreshNest/common/color_extension.dart';
import 'package:FreshNest/common_widget/dropdown.dart';
import 'package:FreshNest/common_widget/line_textfield.dart';
import 'package:FreshNest/common_widget/round_button.dart';
import 'package:FreshNest/view/login/sign_up_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  //! ------------------------------------------------------------
  //! Configuring the buttons of Email and Password

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  bool isShow =
      false; // ------ this is basically for the password to be hidden while writing it on the screen.

  //! ------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    //* ------------------------------------------------------------
    //* Copying from the "select_location_view.dart" file.
    var media = MediaQuery.sizeOf(context);
    return Stack(children: [
      Container(
        color: Colors.white,
        // child: Image.asset(
        //   "assets/img/color_logo.png", //? Doing some needful changes in the location screen to change it to desired login screen.
        //   height: media.height,
        //   width: media.width,
        //   fit: BoxFit.cover,
        // ),
      ),
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            //! --------------------------------------------------
            onPressed: () {
              Navigator.pop(context);
            },
            //! --------------------------------------------------
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
                  "Login", //? Doing some needful changes
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Text(
                  "Enter your E-mail and Password", //? Doing some needful changes

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
                //! ------------------------------------------------------------
                //! copied from the verification_view.dart file, and did changes to suit email and password.
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

                //? --------------
                //? copying from the above logo and removed the logo from it.
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .end, //? changed the alignment from center to end.
                  children: [
                    //*  --------------------------Designed and written this part by self.
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    //*  --------------------------
                  ],
                ),
                //? ----------------------------

                //! ------------------------------------------------------------
                SizedBox(
                  height: media.width * 0.06,
                ),
                SizedBox(
                  height: media.width * 0.007,
                ),
                RoundButton(
                  //? Doing some needful changes
                  title: "Log In",
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
                //* ----------------------------------------------------------
                //* copying from just above the Row()
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpView()));
                      },
                      child: Row(
                        //? wrapped the text here with row.
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Don't have an Account?",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          //? --------------------------------------------------
                          //? copying the above Text()
                          Text(
                            "Signup",
                            style: TextStyle(
                                color: TColor.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          //? --------------------------------------------------
                        ],
                      ),
                    ),
                  ],
                ),
                //* ----------------------------------------------------------
              ],
            ),
          ),
        ),
      ),
    ]);
  }
  //* ------------------------------------------------------------
}
