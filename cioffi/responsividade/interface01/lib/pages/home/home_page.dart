import 'package:flutter/material.dart';
import 'package:interface01/constants/breakpoints.dart';
import 'package:interface01/pages/home/widgets/appbar/mobile_appbar.dart';
import 'package:interface01/pages/home/widgets/appbar/web_appbar.dart';
import 'package:interface01/pages/home/widgets/section/advantages_section.dart';
import 'package:interface01/pages/home/widgets/section/courses_section.dart';
import 'package:interface01/pages/home/widgets/section/top_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        drawer: constraints.maxWidth < mobileBreakPoint ? Drawer() : null,
        appBar: constraints.maxWidth < mobileBreakPoint
            ? PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppbar(),
              )
            : PreferredSize(
                child: WebAppbar(),
                preferredSize: Size(double.infinity, 72),
              ),
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1400),
            child: ListView(
              children: [
                TopSection(),
                AdvantagesSection(),
                CoursesSection(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
