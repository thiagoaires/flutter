import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_youtube/models/user_model.dart';

class ProfileController extends GetxController {
  UserModel _user;
  UserModel get user => _user;

  String _inputText = '';

  @override
  void onInit() {
    super.onInit();

    this._user = Get.arguments as UserModel;
  }

  void onInputTextChange(String text) => this._inputText = text;

  void goBackWithData() {
    if (this._inputText.trim().length > 0) {
      Get.back();
    } else {
      showCupertinoModalPopup(
        context: Get.overlayContext,
        builder: (_) => CupertinoActionSheet(
          title: Text('Error'),
          message: Text('Insira um valor valido'),
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Get.back();
            },
            child: Text('Fechar'),
          ),
        ),
      );
    }
  }
}
