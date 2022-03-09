// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'Translatorpage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(

          // child: RaisedButton(
          //   child: const Text("Navigate to B"),
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const Translatorpage()));
          //   },
          // ),
          ),
    );
  }
}
