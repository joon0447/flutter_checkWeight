import 'package:checkweight/widget/button.dart';
import 'package:checkweight/widget/chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "현재 몸무게",
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        "100kg",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("기록하기"),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(text: "day"),
                  Button(text: "month"),
                  Button(text: "year"),
                ],
              ),
              SafeArea(child: Chart())
            ],
          ),
        ),
      ),
    );
  }
}
