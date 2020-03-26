import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  String label;
  Function onPressed;
  bool showProgress;

  AppButton(this.label, this.onPressed, {this.showProgress = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.blue,
        child: !showProgress
            ? Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              )
            : Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
        onPressed: onPressed,
      ),
    );
  }
}
