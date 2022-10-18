import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  final String diceNumber;
  final void Function() onTap;
  const DiceWidget({
    @required this.diceNumber,
    @required this.onTap,
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Image.asset('assets/images/Dice$diceNumber.png'),
      ),
    );
  }
}
