import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.icon,
    this.onPressed,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50.0,
      ),
      child: Row(
        children: [
          Text(
            title,
            style:  TextStyle(
              color: Colors.red[900],
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
              letterSpacing: 2,

            ),
          ),
          const Spacer(),
          CustomIcon(
            onPressed: onPressed,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
