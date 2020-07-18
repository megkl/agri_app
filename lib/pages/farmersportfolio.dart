import 'package:flutter/material.dart';
import 'package:agri/bloc.navigation_bloc/navigation_bloc.dart';

class FarmersPortfolio extends StatelessWidget with NavigationState {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: Text(
            "Farmer Portfolio",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
        ));
  }
}
