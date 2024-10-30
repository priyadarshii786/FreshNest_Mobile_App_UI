import 'package:FreshNest/common/color_extension.dart';
import 'package:FreshNest/common_widget/dropdown.dart';
import 'package:FreshNest/common_widget/line_textfield.dart';
import 'package:FreshNest/common_widget/round_button.dart';
import 'package:FreshNest/view/login/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectLocationView extends StatefulWidget {
  const SelectLocationView({super.key});

  @override
  State<SelectLocationView> createState() => _SelectLocationViewState();
}

class _SelectLocationViewState extends State<SelectLocationView> {
  @override
  //
  TextEditingController txtOTP = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(children: [
      Container(
        color: Colors.white,
        child: Image.asset(
          "assets/img/bottom_bg.png",
          height: media.height,
          width: media.width,
          fit: BoxFit.cover,
        ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/select_location.png",
                  width: media.width * 0.6,
                ),
                SizedBox(
                  height: media.width * 0.1,
                ),
                Text(
                  "Select Your Location",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Text(
                  "Switch on your location to stay in tune with\nwhat's happening in your area",
                  textAlign: TextAlign.center,
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

                // ! ----------------------------------------------------------
                // ! Important (Importing the Drop-down button from the common widget)
                Dropdown(
                    title: "Your Zone",
                    placeholder: "Select your zone",
                    valueList: const ["Zone 1", "Zone 2"],
                    didChange: (sObj) {}),
                // ! ----------------------------------------------------------
                SizedBox(
                  height: media.width * 0.06,
                ),
                Dropdown(
                    title: "Your Area",
                    placeholder: "Your area type",
                    valueList: const ["Area 1", "Area 2"],
                    didChange: (sObj) {}),

                SizedBox(
                  height: media.width * 0.1,
                ),
                //*----------------------------------------------------------
                //* Copying this round button from the "welcome_view.dart" file. There this round button was used for the "Get Started" purpose.
                RoundButton(
                  title: "Submit",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInView(),
                        ));
                  },
                ),
                //*-------------------------------------------------------
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
