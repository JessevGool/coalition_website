import 'package:coalition_website/coalition_home_page.dart';
import 'package:coalition_website/error_view.dart';
import 'package:coalition_website/merch_view.dart';
import 'package:coalition_website/streams_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage(
            child: const CoalitionHomePage(title: 'Coalition Group'))),
    GoRoute(
        path: '/arma/merch',
        pageBuilder: (context, state) =>
            MaterialPage(child: const MerchView())),
    GoRoute(
        path: '/arma/streams',
        pageBuilder: (context, state) =>
            MaterialPage(child: const StreamsView())),
  ],
  errorBuilder: (context, state) =>
      ErrorView(exception: state.error.toString()),
);
