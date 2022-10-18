import 'dart:developer';

import 'package:Dice_App/data/getxData/controller/dice_controller.dart';
import 'package:Dice_App/widgets/dice_appbar_widget.dart';
import 'package:Dice_App/widgets/dice_content_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../constants/colors/app_colors.dart';

class DiceGetXScreen extends StatelessWidget {
  DiceGetXScreen({Key key}) : super(key: key);
  final DiceController _diceController = Get.put(DiceController());
  @override
  Widget build(BuildContext context) {
    log('Build ==> ${_diceController.count.value}');
    return Scaffold(
      backgroundColor: Appcolors.AppBarColor,
      appBar: const DiceAppbarWidget(),
      body: Obx(
        () => DiceContentWidget(
          LeftNumber: _diceController.LeftNumber.value,
          RightNumber: _diceController.LeftNumber.value,
          onTap: () {
            _diceController.getRandomNumber();
          },
        ),
      ),
    );
  }
}
