import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  String _label;
  String _hint;
  TextEditingController controller;
  bool password;
  FormFieldValidator<String> validator;
  TextInputAction textInputAction;
  TextInputType keyboardType;
  FocusNode focusNode;
  FocusNode focusScope;

  AppTextField(
    this._label,
    this._hint, {
    this.controller,
    this.password = false,
    this.validator,
    this.textInputAction,
    this.keyboardType,
    this.focusNode,
    this.focusScope,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      obscureText: password,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        FocusScope.of(context).requestFocus(focusScope);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
        labelStyle: TextStyle(color: Colors.lightBlue, fontSize: 18),
        labelText: _label,
        hintText: _hint,
      ),
    );
  }
}
