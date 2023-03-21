import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function() onTapButton;
  final Color backgroundColor;
  const ButtonWidget({
    super.key,
    required this.onTapButton,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapButton,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
