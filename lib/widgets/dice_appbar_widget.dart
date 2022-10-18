import 'package:Dice_App/constants/colors/app_colors.dart';
import 'package:Dice_App/constants/texts/app_texts.dart';
import 'package:flutter/material.dart';

class DiceAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const DiceAppbarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Appcolors.AppBarColor,
      elevation: 0.0,
      title: Center(
        child: Text(
          AppTexts.homework.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
