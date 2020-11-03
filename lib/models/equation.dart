import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class Equation with ChangeNotifier {
  String _equation = "";

  String get equation {
    return _equation;
  }

  double _addition(double num1, double num2) {
    return num1 + num2;
  }

  double _subraction(double num1, double num2) {
    return num1 - num2;
  }

  double _multiplication(double num1, double num2) {
    return num1 * num2;
  }

  double _division(double num1, double num2) {
    return num1 / num2;
  }

  void joinEquation(String keyPressed) {
    if ((keyPressed == "+" ||
            keyPressed == "-" ||
            keyPressed == "*" ||
            keyPressed == "/") &&
        (equation.endsWith("+") ||
            equation.endsWith("-") ||
            equation.endsWith("*") ||
            equation.endsWith("/"))) {
      return;
    }
    _equation = "$_equation$keyPressed";
    print(equation);
    notifyListeners();
  }

  void result() {
    double ans = 0;
    String a = "";
    String b = "";
    String operation = "";

    if (equation.endsWith("+") ||
        equation.endsWith("-") ||
        equation.endsWith("*") ||
        equation.endsWith("/")) {
      _equation = _equation.substring(0, equation.length - 1);
    }
    if (equation.isEmpty ||
        (!equation.contains("+") &&
            !equation.contains("-") &&
            !equation.contains("*") &&
            !equation.contains("/"))) {
      return;
    }

    for (var i = 0; i < equation.length; i++) {
      print("a=$a b=$b");
      if (equation[i] != "+" &&
          equation[i] != "-" &&
          equation[i] != "*" &&
          equation[i] != "/") {
        b = "$b${equation[i]}";
      } else {
        if (a == "") {
          a = b;
          b = "";
          operation = equation[i];
        } else {
          if (operation == "+") {
            ans = _addition(double.parse(a), double.parse(b));
          } else if (operation == "-") {
            ans = _subraction(double.parse(a), double.parse(b));
          } else if (operation == "*") {
            ans = _multiplication(double.parse(a), double.parse(b));
          } else if (operation == "/") {
            ans = _division(double.parse(a), double.parse(b));
          }
          a = ans.toString();
          operation = equation[i];
        }
      }
    }

    if (operation == "+") {
      ans = _addition(double.parse(a), double.parse(b));
    } else if (operation == "-") {
      ans = _subraction(double.parse(a), double.parse(b));
    } else if (operation == "*") {
      ans = _multiplication(double.parse(a), double.parse(b));
    } else if (operation == "/") {
      ans = _division(double.parse(a), double.parse(b));
    }

    _equation = ans.toString();

    notifyListeners();
  }

  void clearEquation() {
    _equation = "";
    notifyListeners();
  }
}
