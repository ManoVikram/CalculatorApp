import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/equation.dart';

class CalcKey extends StatelessWidget {
  final int colorCode;
  final double buttonWidth;
  final String keyValue;

  CalcKey(this.colorCode, this.buttonWidth, this.keyValue);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ButtonTheme(
        minWidth: buttonWidth,
        height: 50,
        child: RaisedButton(
          onPressed: () {
            print(keyValue);
            if (keyValue != "=" && keyValue != "C") {
              Provider.of<Equation>(context, listen: false)
                  .joinEquation(keyValue);
            } else if (keyValue == "=") {
              Provider.of<Equation>(context, listen: false).result();
            } else {
              Provider.of<Equation>(context, listen: false).clearEquation();
            }
          },
          color: Color(colorCode),
          elevation: 10,
          padding: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          textColor: Colors.black,
          child: Text(
            keyValue,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 48,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
