import 'package:flutter/material.dart';

class ConsultWidget extends StatefulWidget {
  const ConsultWidget({super.key});

  @override
  State<ConsultWidget> createState() => _ConsultWidgetState();
}

class _ConsultWidgetState extends State<ConsultWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
    );
  }
}
