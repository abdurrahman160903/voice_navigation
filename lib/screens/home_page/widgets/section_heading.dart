import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  SectionHeading({
    required this.title,
    super.key,
  });

  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.apply(
            color: Colors.grey[600],
          ),
    );
  }
}
