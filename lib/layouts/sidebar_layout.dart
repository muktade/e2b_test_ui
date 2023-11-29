import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../classes/navigation_bloc.dart';
import '../sceens/side_bar.dart';

class SidebarLayout extends StatelessWidget {
  const SidebarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => NavigationBloc(),
        child: Stack(
          children: <Widget>[
            // HomePage(),
            BlocBuilder<NavigationBloc, NavigationStates>(
                builder: (context, navigationStates) {
              // if(navigationStates is HomeP)
              print('================================');
              print(navigationStates);

              /* if we create custom InitialState 
              then of course use the if else statement
              */

              // if (navigationStates is HomePage) {
              //   return const HomePage();
              // } else if (navigationStates is TestPage) {
              //   return const TestPage();
              // } else {
              //   return const HomePage();
              // }

              return navigationStates as Widget;
            }),
            SideBar(),
          ],
        ),
      ),
    );
  }
}
