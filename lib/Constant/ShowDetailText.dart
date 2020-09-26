import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ColorGlobal.dart';

class ShowDetailTextWidget extends StatelessWidget {
  final String hintText;
  final String name;
  final TextEditingController controller;
  final Function onChanged;
  final FocusNode focusNode;
  final Color color;
  final String type;
  final bool readOnly;


  ShowDetailTextWidget({
    this.hintText,
    this.name,
    this.onChanged,
    this.focusNode,
    this.color, this.controller, this.type,
    this.readOnly
  });
  bool isValidEmail(input) {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(input);
  }
  String validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    }
    else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }
  String emptyValidation(String value) {
    if (value.trim().length == 0) {
      print("zero");
      return 'This field cannot be empty';
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      cursorColor: ColorGlobal.textColor,
      focusNode:  focusNode,
        controller: controller,
        readOnly: readOnly==null? false : true,
        keyboardType: type=='number'? TextInputType.numberWithOptions(signed: false,decimal: false) : type=='phone' ? TextInputType.phone : TextInputType.text,
        inputFormatters: type=='number' ? [WhitelistingTextInputFormatter.digitsOnly] : null ,
        validator: (value) => emptyValidation(value) ,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10),   //  <- you can it to 0.0 for no space
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          labelText: controller.text!="" ? hintText : hintText+"*",
          labelStyle: TextStyle(color: controller.text!=""? ColorGlobal.blueColor : Colors.red),
        ),
    );
  }
}
