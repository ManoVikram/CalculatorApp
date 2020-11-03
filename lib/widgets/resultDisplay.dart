import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/equation.dart';

class ResultDisplay extends StatefulWidget {
  @override
  _ResultDisplayState createState() => _ResultDisplayState();
}

class _ResultDisplayState extends State<ResultDisplay> {
  // String _equation = "";

  // String _display() {
  //   setState(() {
  //     _equation = Equation().equation;
  //   });
  //   print(_equation + "...");
  //   return _equation;
  // }

  @override
  Widget build(BuildContext context) {
    final equation = Provider.of<Equation>(context).equation;
    print(equation);
    return Container(
      width: double.infinity,
      height: 170,
      padding: EdgeInsets.all(20),
      // color: Color(0xFFC1DFF0),
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              equation,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 36,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
