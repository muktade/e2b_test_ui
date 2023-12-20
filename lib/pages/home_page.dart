import 'package:b2e_test_ui/value/all_dynamic_value.dart';
import 'package:flutter/material.dart';

import '../classes/navigation_bloc.dart';

class HomePage extends StatelessWidget implements NavigationStates {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = AllDynamicValue().getHeight(context);
    return Container(
      color: Colors.blue[500],
      height: height,
      child: Column(
        children: [
          Container(
            height: height * 0.3,
          ),
          Container(
            height: height * 0.7,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AllDynamicValue().tLeft),
                topRight: Radius.circular(AllDynamicValue().tRight),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
