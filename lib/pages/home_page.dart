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
    Key? key, // Fix: Add 'Key? key'
    required this.height,
    required this.width,
  }) : super(key: key); // Fix: Call the super constructor with 'key'

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
                  Positioned(
                    right: 0,
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        color: AllDynamicValue().appHomed1,
                        borderRadius: const BorderRadius.only(
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
                          bottomLeft: Radius.circular(300.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.3 * 0.45,
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
                              focusColor: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15.0),
                      ],
                    ),
                  ),
                  Positioned(
                    top: height * 0.3 * 0.65,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Search Result',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 80.0,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(
                                  10,
                                  (index) => const Column(
                                    children: [
                                      SizedBox(
                                        width: 46,
                                        height: 46,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/images/001.jpg'),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 55.0,
                                      ),
                                      const Text(
                                        'Text',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
