import 'package:Dice_App/constants/colors/app_colors.dart';
import 'package:Dice_App/widgets/dice_appbar_widget.dart';
import 'package:Dice_App/widgets/dice_content_widget.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import '../data/repositories/math_repos.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _LeftNumber = 2;
  int _RightNumber = 6;
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    dev.log('build ==> ${_count++}');
    return Scaffold(
      backgroundColor: Appcolors.maincolor,
      appBar: const DiceAppbarWidget(),
      body: DiceContentWidget(
        LeftNumber: _LeftNumber,
        RightNumber: _RightNumber,
      ),
    );
  }

  void changeDice() {
    _LeftNumber = MathRepos.getRandomNumber();
    _RightNumber = MathRepos.getRandomNumber();
    setState(() {});
  }
}
