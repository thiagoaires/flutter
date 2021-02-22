import 'package:flutter/material.dart';
import 'package:interface01/constants/breakpoints.dart';
import 'package:interface01/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: constraints.maxWidth > tabletBreakPoint ? 0 : 16,
        ),
        itemCount: 20,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CourseItem();
        },
      ),
    );
  }
}
