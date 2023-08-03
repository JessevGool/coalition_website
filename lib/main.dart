import 'package:coalition_website/coalition_app_bar.dart';
import 'package:coalition_website/constants.dart';
import 'package:coalition_website/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coalition Group',
      theme: kDarkThemeData,
      home: const CoalitionHomePage(title: 'Coalition Group'),
    );
  }
}

class CoalitionHomePage extends StatefulWidget {
  const CoalitionHomePage({super.key, required this.title});

  final String title;

  @override
  State<CoalitionHomePage> createState() => _CoalitionHomePageState();
}

class _CoalitionHomePageState extends State<CoalitionHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: const CoalitionAppBar(),
        body: const Center(
          child: CoalitionDashboard()
        ));
  }
}
