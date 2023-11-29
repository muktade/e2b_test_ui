import 'package:flutter/material.dart';

import '../classes/navigation_bloc.dart';

class TestPage extends StatelessWidget implements NavigationStates {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text(
          'This is test page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
