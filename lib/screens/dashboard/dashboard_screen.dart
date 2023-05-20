// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors,deprecated_member_use,avoid_unnecessary_containers
import 'package:admin_panel/constants.dart';
import 'package:admin_panel/responsive.dart';
import 'package:admin_panel/screens/dashboard/components/header.dart';
import 'package:admin_panel/screens/dashboard/components/my_files.dart';
import 'package:admin_panel/screens/dashboard/components/recent_files.dart';
import 'package:admin_panel/screens/dashboard/components/storage_details.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) StorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // on the Mobile means if the screen is less than 850 we don't want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
