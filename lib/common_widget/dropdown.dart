import 'package:FreshNest/common/color_extension.dart';
import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  //*-------------------------------------------------
  final String title;
  final String placeholder;
  final List valueList;
  final Function(Object?) didChange;
  const Dropdown(
      {super.key,
      required this.title,
      required this.placeholder,
      required this.valueList,
      required this.didChange});

  //*-------------------------------------------------

  @override
  Widget build(BuildContext context) {
    // ? -------------------------------------------------------------
    // ? copied from the common file(ie; line_textfield.dart)
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
              color: TColor.textTittle,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        //!----------------------------------------------------------
        //! Important (Making the Drop-down button)
        SizedBox(
          height: 55,
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
                onChanged:
                    didChange, //? Doing some necessary changes to be a common widget.
                icon: Icon(
                  Icons.expand_more,
                  color: TColor.textTittle,
                ),
                hint: Text(
                  placeholder, //? Doing some necessary changes to be a common widget.
                  style: TextStyle(
                      color: TColor
                          .placeholder, //? Doing some necessary changes to be a common widget.
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                isExpanded: true,
                items: valueList.map((obj) {
                  //? Doing some necessary changes to be a common widget.
                  return DropdownMenuItem(
                      value: obj,
                      child: Text(
                        obj.toString(),
                        style: TextStyle(
                            color: TColor
                                .primaryText, //? Doing some necessary changes to be a common widget.
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ));
                }).toList()),
          ),
        ),
        //!---------------------------------------------------------
        Container(
          width: double.maxFinite,
          height: 1,
          color: const Color(0xffE2E2E2),
        ),
      ],
    );
    // ? ------------------------------------------------------------
  }
}
