// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:admin_panel/controllers/MenuAppController.dart';
import 'package:admin_panel/responsive.dart';
import 'package:admin_panel/screens/dashboard/dashboard_screen.dart';
import 'package:admin_panel/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
          // safe area is a widget  that sets its child by enough padding to avoid intrusions by the operating system and improve the user
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Desktop when we want this side menu for large screen
          if (Responsive.isDesktop(context))
            Expanded(
              // the white part takes 1/6 of the screen which is default
              child: SideMenu(),
            ),
          Expanded(
            // the blue part takes 5/6 part of the screen
            flex: 5,

            child: DashBoardScreen(),
          ),
        ],
      )),
    );
  }
}
