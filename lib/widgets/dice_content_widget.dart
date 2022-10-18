import 'package:Dice_App/widgets/dice_widget.dart';
import 'package:flutter/material.dart';

class DiceContentWidget extends StatelessWidget {
  final int LeftNumber;
  final int RightNumber;
  final void Function() onTap;

  const DiceContentWidget(
      {Key key, this.LeftNumber, this.RightNumber, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DiceWidget(
              diceNumber: RightNumber.toString(),
              onTap: onTap,
            ),
            const SizedBox(
              width: 15.0,
            ),
            DiceWidget(
              diceNumber: RightNumber.toString(),
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
