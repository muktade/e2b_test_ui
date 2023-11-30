import 'package:b2e_test_ui/pages/about_us_page.dart';
import 'package:b2e_test_ui/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/test_page.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationStates> {
  /* if ue create custom InitialState class the use the next line */
  // NavigationBloc() : super(InitialState) {

  NavigationBloc() : super(initialState) {
    on<NavigationEvent>((event, emit) {
      // Handle events and emit new states
      switch (event) {
        case NavigationEvent.homePageClickEvent:
          emit(const HomePage());
          break;
        case NavigationEvent.testPageClickEvent:
          emit(const TestPage());
          break;
        case NavigationEvent.aboutUsClickEvent:
          emit(const AboutUsPage());
          break;
        default:
          emit(const HomePage());
          break;
      }
    });
  }

  static NavigationStates get initialState => const HomePage();
}

// class InitialState extends NavigationStates {}

abstract class NavigationStates {}

enum NavigationEvent {
  homePageClickEvent,
  testPageClickEvent,
  aboutUsClickEvent
}
