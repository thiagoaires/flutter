import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_youtube/controllers/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Get.back(),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${_.user.firstName} ${_.user.lastName}'),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: CupertinoTextField(
                  onChanged: _.onInputTextChange,
                ),
              ),
              CupertinoButton(
                child: Text('Alterar'),
                onPressed: () => _.goBackWithData(),
              )
            ],
          ),
        );
      },
    );
  }
}
