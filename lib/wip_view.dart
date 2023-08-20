import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WIP_View extends StatelessWidget {
  const WIP_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Work in Progress"),
        TextButton(onPressed: () => context.go("/"), child: Text("Go back"))
      ]),
    );
  }
}
