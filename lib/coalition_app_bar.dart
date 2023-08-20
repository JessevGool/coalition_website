import 'package:coalition_website/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class CoalitionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CoalitionAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              _launchURL("https://events.coalitiongroup.net/");
            },
            child: const Text('EVENTS'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              context.go('/arma/merch');
            },
            child: const Text('MERCH'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              context.go('/arma/streams');
            },
            child: const Text('STREAMS'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              _launchURL("https://discord.com/invite/HkeTRQ3");
            },
            child: const Text('DISCORD'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              _launchURL("https://discord.com/invite/armacoalition");
            },
            child: Text(
              'JOIN',
              style: TextStyle(color: kDarkThemeData.colorScheme.secondary),
            ),
          ),
        ],
        title: Row(
          children: [
            buildLeading(context),
          ],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  buildLeading(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Image.asset(
              "assets/cropped-site_logo-3.png",
              height: 50,
            )
          ],
        ));
  }

  _launchURL(String uri) async {
    final Uri url = Uri.parse(uri);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
