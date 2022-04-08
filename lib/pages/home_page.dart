// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:livetranslator/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Catalog App";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text("Welcome to enemy is $days of flutter by $name"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
