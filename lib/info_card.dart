import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  const InfoCard(
      {super.key,
      required this.leadingIcon,
      required this.title,
      required this.description});
  final Icon leadingIcon;
  final String title;
  final String description;
  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 20 / 4,
      child: Card(
          child: Row(
        children: [
          widget.leadingIcon,
          Column(
            children: [Text(widget.title), Text(widget.description)],
          )
        ],
      )),
    );
  }
}
