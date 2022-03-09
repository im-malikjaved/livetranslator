// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Translatorpage extends StatelessWidget {
  const Translatorpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Translator"),
      ),
      body: RaisedButton(
        child: const Text("Navigate to Home"),
        onPressed: () {
          if (1 == 1) {
            print("Tanslator Page");
          } else {
            print("dummy");
          }
        },
      ),
    );
  }
}
