import 'package:flutter/material.dart';

import '../value/all_dynamic_value.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
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
