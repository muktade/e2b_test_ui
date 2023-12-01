import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const MenuItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});

  // const MenuItem({Key key, this.icon, this.title, this.onTap}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: Colors.cyan,
        size: 30.0,
      ),
      hoverColor: const Color.fromARGB(248, 1, 13, 48),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 26.0,
        ),
      ),
      // child: Padding(
      //   // padding: const EdgeInsets.all(16.0),
      //   padding: const EdgeInsets.symmetric(
      //     horizontal: 30.0,
      //     vertical: 10.0,
      //   ),
      //   child: Row(
      //     children: [
      //       Icon(
      //         icon,
      //         color: Colors.cyan,
      //         size: 30.0,
      //       ),
      //       const SizedBox(
      //         width: 20.0,
      //       ),
      //       Text(
      //         title,
      //         style: const TextStyle(
      //           fontWeight: FontWeight.w100,
      //           fontSize: 26.0,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ],
      //   ),
      // );
    );
  }
}
