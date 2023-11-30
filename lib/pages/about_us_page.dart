import 'package:flutter/material.dart';

import '../classes/navigation_bloc.dart';

class AboutUsPage extends StatelessWidget implements NavigationStates {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text(
          'This is about us page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
