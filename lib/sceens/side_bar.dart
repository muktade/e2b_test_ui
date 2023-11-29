import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

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
          left: isSidebarOpenAsync.data! ? 0 : 0,
          right: isSidebarOpenAsync.data! ? 0 : width - 40,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: const Color(0xFF262AAA),
                ),
              ),
              Align(
                alignment: Alignment(0, -height * 0.00104),
                child: GestureDetector(
                  onTap: () => onIconPassed(),
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
              )
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
