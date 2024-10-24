import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_coding/config/color/app_colors.dart';

class RoundButton extends StatelessWidget {
  final String btnTitle;
  final double btnHeight;
  final VoidCallback onPress;
  const RoundButton({super.key, required this.btnTitle, this.btnHeight = 40, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: btnHeight,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(child: Text(btnTitle)),
      ),
    );
  }
}

