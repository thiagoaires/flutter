import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://images.pexels.com/photos/1092644/pexels-photo-1092644.jpeg?auto=compress&cs=tinysrgb&dpr=1&h=350&w=940',
          fit: BoxFit.fitWidth,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'Criação de apps para Android e IOS com Flutter',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          'Thiago Aires',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          'R\$ 22.90',
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
