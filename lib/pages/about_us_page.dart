import 'package:flutter/material.dart';

import '../classes/navigation_bloc.dart';

class AboutUsPage extends StatelessWidget implements NavigationStates {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 120.0,
            height: 120.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                image: AssetImage('assets/images/bbbb.jpg'),
              ),
            ),
          ),
          Text(
            'M A MUKTADEER',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'muktadeer.ru@gmail.com',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Divider(
            height: 32,
            color: Colors.cyan.shade600,
            endIndent: 32,
            indent: 32,
          ),
          const Text(
            'Junior Software Developer,',
            style: TextStyle(
              color: Colors.cyan,
              fontSize: 23,
            ),
          ),
          const Text(
            'Softcafe IT Solution',
            style: TextStyle(
              color: Color.fromARGB(255, 3, 110, 124),
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
