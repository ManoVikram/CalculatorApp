import 'package:flutter/material.dart';

import 'calcKey.dart';

class Keypad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      color: Color(0xFFD7F9FB),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalcKey(0xFFFFFBA1, 335, "C"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcKey(0xFF7DFAAF, 77, "7"),
              CalcKey(0xFF7DFAAF, 77, "8"),
              CalcKey(0xFF7DFAAF, 77, "9"),
              CalcKey(0xFFFFFFFF, 77, "/"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcKey(0xFF7DFAAF, 77, "4"),
              CalcKey(0xFF7DFAAF, 77, "5"),
              CalcKey(0xFF7DFAAF, 77, "6"),
              CalcKey(0xFFFFFFFF, 77, "*"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcKey(0xFF7DFAAF, 77, "1"),
              CalcKey(0xFF7DFAAF, 77, "2"),
              CalcKey(0xFF7DFAAF, 77, "3"),
              CalcKey(0xFFFFFFFF, 77, "-"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcKey(0xFF7DFAAF, 77, "0"),
              CalcKey(0xFF7DFAAF, 77, "."),
              CalcKey(0xFFFFFFFF, 77, "="),
              CalcKey(0xFFFFFFFF, 77, "+"),
            ],
          ),
        ],
      ),
    );
  }
}
