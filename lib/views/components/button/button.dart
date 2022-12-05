import 'package:flutter/material.dart';
import 'package:testingriverpod/views/constants/size_config.dart';

@immutable
class ButtonModel extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final double _width = SizeConfig.screenW!;

  ButtonModel({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: borderColor ?? Colors.black),
        ),
        elevation: 0,
        padding: (_width <= 550)
            ? const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              )
            : const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 25,
              ),
        textStyle: TextStyle(
          fontSize: (_width <= 550) ? 13 : 17,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }
}