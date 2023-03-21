import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:my_first_app_flutter/ui/screens/page_2.dart';

int counter = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Column(
            children: const [
              Text("Hola Mundo"),
            ],
          ),
          actions: const [
            Icon(Icons.ac_unit),
          ]),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Esta es mi APP"),
            const Text("Esta es la descripcion de mi APPasdfadsfasdfsadf"),
            Text(
              "$counter",
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: _widgetButtons(),
            )
          ],
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: const [
          Icon(Icons.ac_unit),
          Icon(Icons.ac_unit),
        ],
      )),
    );
  }

  _widgetButtons() {
    return Column(
      children: [
        ButtonWidget(
          onTapButton: () {
            setState(() {
              counter++;
              log("$counter");
            });
          },
          backgroundColor: Colors.orange,
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonWidget(
          onTapButton: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Page2(
                          counter: counter,
                        )));
          },
          backgroundColor: Colors.orange,
        ),
      ],
    );
  }
}
