import 'package:coalition_website/coalition_home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(
          child: const CoalitionHomePage(title: 'Coalition Group'))),
]);
