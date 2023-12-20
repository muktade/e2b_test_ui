import 'package:flutter/material.dart';

import '../classes/navigation_bloc.dart';
import '../value/all_dynamic_value.dart';

class HomePage extends StatelessWidget implements NavigationStates {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = AllDynamicValue().getHeight(context);
    var width = AllDynamicValue().getWidth(context);
    return SizedBox(
      // height: height * 0.3,
      child: Container(
        color: AllDynamicValue().appHomeColor,
        child: HomeHeader(height: height, width: width),
      ),
    );
  }
}

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
            child: Container(
              color: AllDynamicValue().appHomeColor,
              child: Stack(
                children: [
                  // Positioned(
                  //   top: 0,
                  //   child: HomeHeader(
                  //     height: height,
                  //     width: width,
                  //   ),
                  // ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        color: AllDynamicValue().appHomed1,
                        borderRadius: const BorderRadius.only(
                          // topLeft: Radius.circular(100.0),
                          bottomLeft: Radius.circular(300.0),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
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
                  ),

                  Positioned(
                    top: height * 0.3 * 0.6,
                    child: Row(
                      children: [
                        const SizedBox(width: 15.0),
                        Container(
                          width: width - 30.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  left: 20.0, bottom: 10.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: const BorderSide(width: 0.8),
                              ),
                              hintText: 'Search Text...',
                              prefixIcon: const Icon(Icons.search),
                              //  IconButton(
                              //   onPressed: () {
                              //     print('object');
                              //   },
                              //   icon: const Icon(Icons.search),
                              // ),
                              focusColor: Colors.black,
                            ),

                            // child: Row(
                            //   children: [
                            //     const SizedBox(
                            //       width: 10.0,
                            //     ),
                            //     const Icon(
                            //       Icons.search,
                            //       color: Colors.grey,
                            //     ),
                            //     const SizedBox(
                            //       width: 10.0,
                            //     ),
                            //     Text(
                            //       'Search Text',
                            //       style: Theme.of(context).textTheme.bodyMedium,
                            //     ),
                            //   ],
                            // ),
                          ),
                        ),
                        const SizedBox(width: 15.0),
                      ],
                    ),
                  ),
                ],
              ),
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
