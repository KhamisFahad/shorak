// ignore_for_file: camel_case_types, empty_statements, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
    );
  }
}
