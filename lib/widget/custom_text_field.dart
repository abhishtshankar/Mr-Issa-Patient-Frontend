import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient/widget/app_colors.dart';

import 'app_widgets.dart';
Container buildCustomTextField0({
  String? hintText,
  double? hMargin,
  double? vMargin,
  double? headerSize,
  Widget? suffixIcon,
  double? inputContainerHeight,
  bool? expands,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: hMargin ?? 0, vertical: vMargin ?? 20),
    width: double.maxFinite,
    color: Colors.transparent,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 18),
          height: inputContainerHeight ?? 50,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextField(
              expands: expands ?? false,
              maxLines: null,
              minLines: null,
              cursorColor: AppColors.kPrimaryColor,
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: hintText ?? 'Enter your Lorem Ipsum',
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Colors.black.withOpacity(0.6),
                ),
                suffixIcon: suffixIcon,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
