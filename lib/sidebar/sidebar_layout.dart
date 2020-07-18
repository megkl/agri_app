import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:agri/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:agri/screens/homescreen.dart';
import 'package:agri/sidebar/sidebar.dart';

class SideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(),
        child: Stack(
          children: <Widget>[
            BlocBuilder<NavigationBloc, NavigationState>(
              builder: (context, navigationState) {
                return navigationState as Widget; // page
              },
            ),
            SideBar(),
          ],
        ),
      ),
    );
  }
}
