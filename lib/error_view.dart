import 'package:flutter/material.dart';

class ErrorView extends StatefulWidget {
  const ErrorView({super.key, required this.exception});
  final String exception;
  @override
  State<ErrorView> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.exception),
    );
  }
}
