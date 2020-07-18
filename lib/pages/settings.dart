import 'package:flutter/material.dart';
import 'package:agri/bloc.navigation_bloc/navigation_bloc.dart';

class Settings extends StatelessWidget with NavigationState {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: Text(
            "Settings",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
        ));
  }
}
