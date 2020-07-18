import 'package:flutter/material.dart';
import 'package:agri/bloc.navigation_bloc/navigation_bloc.dart';

class FarmsPage extends StatelessWidget with NavigationState {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: Text(
            "Farms",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
        ));
  }
}
