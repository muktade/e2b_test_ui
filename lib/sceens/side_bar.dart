import 'dart:async';

import 'package:b2e_test_ui/classes/navigation_bloc.dart';
import 'package:b2e_test_ui/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../classes/custom_menu_clipper.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  late AnimationController _animationController;
  late StreamController<bool> isSidebarOpenStreamController;
  late Stream<bool> isSidebarOpenedStream;
  late StreamSink<bool> isSidebarOpenSink;
  final _animationDuration = const Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenStreamController.stream;
    isSidebarOpenSink = isSidebarOpenStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenStreamController.close();
    isSidebarOpenSink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return StreamBuilder<bool>(
      initialData: false,
      stream: isSidebarOpenedStream,
      builder: (context, isSidebarOpenAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0.0,
          bottom: 0.0,
          left: isSidebarOpenAsync.data! ? 0 : -width,
          right: isSidebarOpenAsync.data! ? 0 : width - 40,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Material(
                  // width: width - 135.0,

                  // padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  color: const Color(0xFF262AAA),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100.0,
                      ),
                      const ListTile(
                        title: Text(
                          'E2B Dictionary',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        subtitle: Text(
                          'English To Bangle Dictionary',
                          style: TextStyle(
                            color: Color(0xFF1BB5FD),
                            fontSize: 16.0,
                          ),
                        ),
                        leading: CircleAvatar(
                          radius: 40.0,
                          child: Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Divider(
                        height: 64.0,
                        thickness: 0.5,
                        color: Colors.white.withOpacity(0.8),
                        indent: 32.0,
                        endIndent: 32.0,
                      ),
                      MenuItem(
                        icon: Icons.menu,
                        title: 'Home',
                        onTap: () {
                          onIconPassed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvent.homePageClickEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.search_sharp,
                        title: 'Search',
                        onTap: () {
                          onIconPassed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvent.testPageClickEvent);
                        },
                      ),
                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, right: 35.0, left: 35.0),
                            child: ListTile(
                              onTap: () {
                                onIconPassed();
                                BlocProvider.of<NavigationBloc>(context)
                                    .add(NavigationEvent.aboutUsClickEvent);
                              },
                              // leading: const Icon(
                              //   Icons.settings,
                              //   size: 20.0,
                              //   color: Colors.cyan,
                              // ),
                              title: const Text(
                                'About Me',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -height * 0.00104),
                child: GestureDetector(
                  onTap: () => onIconPassed(),
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      width: 35.0,
                      height: 110.0,
                      color: const Color(0xFF262AAA),
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_arrow,
                        color: const Color(0xFF1BB5FD),
                        size: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void onIconPassed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenSink.add(true);
      _animationController.forward();
    }
  }
}
