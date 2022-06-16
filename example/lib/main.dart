import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:validation_plus/validate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "Email",
                  ),
                  onChanged: (value) {
                    if (Validate.isValidEmail(value)) {
                      log("Email valid");
                    } else {
                      log("Email not valid");
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Mobile",
                    hintText: "Mobile",
                  ),
                  onChanged: (value) {
                    if (Validate.isValidMobile(value)) {
                      log("Mobile valid");
                    } else {
                      log("Mobile not valid");
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [Validate.intValueFormatter()],
                    decoration: const InputDecoration(
                      labelText: "Only int",
                      hintText: "Only int",
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      Validate.decimalValueFormatter(decimalPlaceValue: 3)
                    ],
                    decoration: const InputDecoration(
                      labelText: "Only double",
                      hintText: "Only double",
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
