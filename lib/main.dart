import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue, primaryColor: const Color(0xff0a0c23)),
      home: const BMI(),
    );
  }
}

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double value = 0;
  int weight = 50;
  int age = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text("BMI Calculator"),
          centerTitle: true,
        ),
        drawer: const Drawer(
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 150,
                            width: 180,
                            color: const Color.fromRGBO(30, 31, 52, 1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 80,
                                  color: Colors.blue.shade300,
                                ),
                                const Text(
                                  "MALE",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 150,
                            width: 180,
                            color: const Color.fromRGBO(30, 31, 52, 1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 80,
                                  color: Colors.pink.shade300,
                                ),
                                const Text(
                                  "FEMALE",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      color: const Color(0xff1e1f34),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Height",
                              style: TextStyle(color: Colors.white)),
                          RichText(
                            text: TextSpan(
                                text: value.toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 45)),
                          ),
                          Slider(
                              min: 0,
                              max: 200,
                              value: value,
                              onChanged: (v) {
                                setState(() {
                                  value = v;
                                });
                              })
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 180,
                          height: 150,
                          color: const Color(0xff1e1f34),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Weight",
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 24)),
                              const Text("74",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                    ),
                                    onPressed: () {},
                                    child: const Icon(Icons.add),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                    ),
                                    onPressed: () {},
                                    child: const Icon(Icons.remove),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 150,
                          color: const Color(0xff1e1f34),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Age",
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 24)),
                              RichText(
                                  text: const TextSpan(
                                      text: "18",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 45,
                                          fontWeight: FontWeight.bold))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                    ),
                                    onPressed: () {},
                                    child: const Icon(Icons.add),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                    ),
                                    onPressed: () {},
                                    child: const Icon(Icons.remove),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ));
  }
}
