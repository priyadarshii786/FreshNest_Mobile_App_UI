import 'package:delivery_app/common/color_extension.dart';
import 'package:delivery_app/common_widget/line_textfield.dart';
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
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(
      children: [
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/select_location.png",
                    width: media.width * 0.7,
                  ),
                  Text(
                    "Select Your Location",
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
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
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
