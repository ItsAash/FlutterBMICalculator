import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final bool isMale;
  final double height;
  final int weight;
  final int age;
  const Result({
    Key? key,
    required this.isMale,
    required this.height,
    required this.weight,
    required this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bmiColor;
    String bmiDesc;
    final double bmi = (weight) / (height * height * (1 / 10000));
    if (bmi >= 18.5 && bmi <= 25) {
      bmiColor = Colors.green.shade400;
      bmiDesc = "You are healthy.";
    } else if (bmi < 18.5 && bmi >= 17) {
      bmiColor = Colors.yellow.shade400;
      bmiDesc = "You are underweight.";
    } else if (bmi > 25 && bmi < 29) {
      bmiColor = Colors.yellow.shade400;
      bmiDesc = "You are overweight.";
    } else {
      bmiColor = Colors.red.shade400;
      bmiDesc = "You are unhealthy. Eat apple a day.";
    }

    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          title: const Text("Result"),
        ),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: double.infinity,
                            height: 300,
                            decoration: const BoxDecoration(
                                color: Color(0xff1e1f34),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 60),
                                  const Text("Body Mass Index",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                  const SizedBox(height: 20),
                                  RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 78,
                                            color: bmiColor),
                                        text: bmi.toStringAsFixed(2)),
                                  ),
                                  const SizedBox(height: 20),
                                  RichText(
                                      text: TextSpan(
                                          style: const TextStyle(
                                              color: Colors.white54),
                                          text: bmiDesc))
                                ])),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  onPrimary: Colors.white,
                                  // primary: Colors.grey[300],
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Result(
                                                isMale: isMale,
                                                age: age,
                                                height: height,
                                                weight: weight,
                                              )));
                                },
                                child: const Text('Save Data'),
                              )
                            ],
                          ),
                        )
                      ],
                    )))));
  }
}
