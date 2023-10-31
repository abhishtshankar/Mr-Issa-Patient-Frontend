import 'package:flutter/material.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/app_colors.dart';

SizedBox buildVSpacer(double height) => SizedBox(height: height);

SizedBox buildHSpacer(double width) => SizedBox(width: width);

Container buildPatientDetailsCard({
  required int patientindex,
  required String fromDate,
  required int pateintAge,
  required String pateintRefId,
  required Size size,
}) {
  return Container(
    height: 145,
    width: size.width * 0.9,
    margin: const EdgeInsets.symmetric(horizontal: 18),
    padding: const EdgeInsets.symmetric(vertical: 18.05, horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          blurRadius: 10,
          offset: const Offset(0, 4),
          color: Colors.black.withOpacity(0.1),
        ),
      ],
    ),
    child: Row(
      children: <Widget>[
        Image.asset('assets/images/patient.png'),
        buildHSpacer(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'PATIENT $patientindex',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                color: AppColors.kTextColor1,
              ),
            ),
            const Spacer(),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/calendar.png',
                ),
                buildHSpacer(10),
                Text(
                  'FROM :',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: AppColors.kItemText1,
                  ),
                ),
                buildHSpacer(2),
                Text(
                  fromDate,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    // color: AppColors.kItemText1,
                  ),
                ),
              ],
            ),
            buildVSpacer(10),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/age.png',
                ),
                buildHSpacer(10),
                Text(
                  'AGE :',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: AppColors.kItemText1,
                  ),
                ),
                buildHSpacer(2),
                Text(
                  '$pateintAge YEARS',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    // color: AppColors.kItemText1,
                  ),
                ),
              ],
            ),
            buildVSpacer(10),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/ref_id.png',
                ),
                buildHSpacer(10),
                Text(
                  'REFERENCE ID : ',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: AppColors.kItemText1,
                  ),
                ),
                buildHSpacer(2),
                Text(
                  pateintRefId,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    // color: AppColors.kItemText1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Container buildAppOptionCards({
  required String image,
  required String title,
  bool? upload,
}) {
  return Container(
    height: 220,
    width: 160,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: const Color.fromARGB(255, 234, 255, 255),
      boxShadow: [
        BoxShadow(
          blurRadius: 10,
          offset: const Offset(0, 4),
          color: Colors.black.withOpacity(0.1),
        ),
      ],
    ),
    child: Container(
      height: 150,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // stops: const [0, 0.2],
          colors: [
            AppColors.kOptionCardBackground.withOpacity(0.16),
            AppColors.kOptionCardBackground.withOpacity(0.4),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // const Spacer(),
            Expanded(
              flex: 4,
              child: Image.asset(image),
            ),
            // const Spacer(),
            Expanded(
              flex: 2,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.black,
                  decoration: TextDecoration.none
                ),
              ),
            ),
            // const Spacer(),
            Expanded(
              flex: (upload == true) ? 1 : 0,
              child: Visibility(
                visible: upload ?? false,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/icons/upload.png'),
                        buildHSpacer(5),
                        const Text(
                          'UPLOAD',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none, // Remove underline
                            fontSize: 12,
                            color: AppColors.kTextColor1,
                          ),
                        ),
                      ],
                    ),
                    // const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Container buildCustomTextField1({
  String? header,
  String? hintText,
  double? hMargin,
  double? vMargin,
  double? headerSize,
  Widget? suffixIcon,
  double? inputContainerHeight,
  bool? expands,
}) {
  return Container(
    margin:
        EdgeInsets.symmetric(horizontal: hMargin ?? 0, vertical: vMargin ?? 20),
    width: double.maxFinite,
    color: Colors.transparent,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          header ?? 'Lorem Ipsum',
          style: TextStyle(
            fontSize: headerSize ?? 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        buildVSpacer(20),
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

Container buildUploader({required Size size, double? margin}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: margin??18),
    height: 120,
    width: size.width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(7),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 15,
          spreadRadius: 5,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: <Widget>[
          Image.asset('assets/images/cloud_upload.png'),
          buildHSpacer(20),
          Column(
            children: <Widget>[
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                    color: AppColors.kTextColor1,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'SAVED AS DRAFT',
                    style: TextStyle(
                      color: AppColors.kTextColor1,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              buildVSpacer(20),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: AppColors.kTextColor1,
                ),
                child: const Center(
                  child: Text(
                    'SAVED AND SIGNED',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Align buildAddButton(){
  return Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: AppColors.kPrimaryColor,
                  ),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Add',
                        style: TextStyle(
                          color: AppColors.kPrimaryColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.kPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
}

Container buildPrintButton() {
  return Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: AppColors.kPrimaryColor,
          ),
          child: const Center(
            child: Text(
              'PRINT REPORT',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
        );
}

Align buildSubmitButton({required Size size}) {
  return  Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // height: 100,
                width: size.width,
                color: Colors.white,
                padding: const EdgeInsets.all(18.0),
                child: AppButtons.primaryButton(
                  text: 'SUBMIT',
                  onPressed: () {},
                ),
              ),
            );
}

Padding buildCheckLists({required String header ,required List<String> optionList, double? hMargin}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: hMargin??0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
       Text(
          header,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        for (var item in optionList)
          Row(
            children: <Widget>[
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              buildHSpacer(0),
              Text(
                item,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ],
          ),
      ],
    ),
  );
}
