import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_youtube/controllers/home_controller.dart';
import 'package:getx_youtube/models/user_model.dart';

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'users',
      builder: (_) {
        return ListView.builder(
          itemCount: _.users.length,
          itemBuilder: (context, index) {
            final UserModel user = _.users[index];
            return ListTile(
              title: Text(user.firstName),
              subtitle: Text(user.email),
              onTap: () => _.showUserProfile(user: user),
            );
          },
        );
      },
    );
  }
}
