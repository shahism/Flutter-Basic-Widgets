import 'package:calculator/Constants.dart';
import 'package:calculator/myButton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String result = "";
  String input = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(input, style: kInputStyle),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all( 20.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(result, style: kResultStyle),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                              title: "A/C",
                              onPress: () {
                                input = "";
                                result = "";
                                setState(() {});
                              }),
                          MyButton(title: "+/-", onPress: () {}),
                          MyButton(title: "%", onPress: () {}),
                          MyButton(
                            title: "/",
                            onPress: () {
                              input += "/";
                              setState(() {});
                            },
                            colour: kButtonColorOperators,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                              title: "7",
                              onPress: () {
                                input += "7";
                                setState(() {});
                              }),
                          MyButton(
                              title: "8",
                              onPress: () {
                                input += "8";
                                setState(() {});
                              }),
                          MyButton(
                              title: "9",
                              onPress: () {
                                input += "9";
                                setState(() {});
                              }),
                          MyButton(
                              title: "X",
                              onPress: () {
                                input += "*";
                                setState(() {});
                              },
                              colour: kButtonColorOperators),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                              title: "4",
                              onPress: () {
                                input += "4";
                                setState(() {});
                              }),
                          MyButton(
                              title: "5",
                              onPress: () {
                                input += "5";
                                setState(() {});
                              }),
                          MyButton(
                              title: "6",
                              onPress: () {
                                input += "6";
                                setState(() {});
                              }),
                          MyButton(
                              title: "-",
                              onPress: () {
                                input += "-";
                                setState(() {});
                              },
                              colour: kButtonColorOperators),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                              title: "1",
                              onPress: () {
                                input += "1";
                                setState(() {});
                              }),
                          MyButton(
                              title: "2",
                              onPress: () {
                                input += "2";
                                setState(() {});
                              }),
                          MyButton(
                              title: "3",
                              onPress: () {
                                input += "3";
                                setState(() {});
                              }),
                          MyButton(
                              title: "+",
                              onPress: () {
                                input += "+";
                                setState(() {});
                              },
                              colour: kButtonColorOperators),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                              title: "0",
                              onPress: () {
                                input += "0";
                                setState(() {});
                              }),
                          MyButton(
                              title: ".",
                              onPress: () {
                                input += ".";
                                setState(() {});
                              }),
                          MyButton(
                              title: "DEL",
                              onPress: () {
                                input = input.substring(0, input.length - 1);
                                setState(() {});
                              }),
                          MyButton(
                              title: "=",
                              onPress: () {
                                getResult();
                                setState(() {});
                              },
                              colour: kButtonColorOperators),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void getResult() {
    // Using Maths Expression Package of Flutter!
    Parser parser = Parser();
    Expression exp = parser.parse(input);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    result = eval.toString();
  }
}
