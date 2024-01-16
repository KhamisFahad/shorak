import 'package:flutter/material.dart';

class RequestWidget extends StatefulWidget {
  const RequestWidget({super.key});

  @override
  State<RequestWidget> createState() => _RequestWidgetState();
}

class _RequestWidgetState extends State<RequestWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}
