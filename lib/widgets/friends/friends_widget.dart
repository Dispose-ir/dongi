import 'package:flutter/material.dart';

import '../../constants/font_config.dart';
import 'circle.dart';

class FriendsWidget extends Column {
  final Function onTap;
  final Widget? child;
  final String title;
  FriendsWidget({
    required this.onTap,
    this.child,
    required this.title, 
    super.key,
  });

  @override
  List<Widget> get children => [
        InkWell(
          onTap: () {
            onTap();
          },
          child: Circle(
            width: 84,
            height: 84,
            child: child,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: FontConfig.body2(),
        ),
      ];
}