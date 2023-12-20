import 'package:b2e_test_ui/value/all_dynamic_value.dart';
import 'package:flutter/material.dart';

import '../classes/navigation_bloc.dart';

class HomePage extends StatelessWidget implements NavigationStates {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = AllDynamicValue().getHeight(context);
    var width = AllDynamicValue().getWidth(context);
    return Container(
      color: AllDynamicValue().appHomeColor,
      height: height,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: height * 0.2,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    color: AllDynamicValue().appHomed1,
                    borderRadius: const BorderRadius.only(
                      // topLeft: Radius.circular(100.0),
                      bottomLeft: Radius.circular(300.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: height * 0.14,
                        width: width * 0.28,
                        decoration: BoxDecoration(
                          color: AllDynamicValue().appHomed2,
                          borderRadius: const BorderRadius.only(
                            // topLeft: Radius.circular(100.0),
                            bottomLeft: Radius.circular(300.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
