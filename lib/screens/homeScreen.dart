import 'package:calculatorApp/models/equation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/resultDisplay.dart';
import '../widgets/keypad.dart';
import '../models/equation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (contxt) => Equation(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Cal-C",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            ResultDisplay(),
            Keypad(),
          ],
        ),
      ),
    );
  }
}
