import 'package:delivery_app/common/color_extension.dart';
import 'package:delivery_app/common_widget/dropdown.dart';
import 'package:delivery_app/common_widget/line_textfield.dart';
import 'package:delivery_app/common_widget/round_button.dart';
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
            onPressed: () {
              Navigator.pop(context);
            },
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
                  "Loging", //? Doing some needful changes
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

                //! ------------------------------------------------------------
                SizedBox(
                  height: media.width * 0.06,
                ),
                SizedBox(
                  height: media.width * 0.1,
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
              ],
            ),
          ),
        ),
      ),
    ]);
  }
  //* ------------------------------------------------------------
}
