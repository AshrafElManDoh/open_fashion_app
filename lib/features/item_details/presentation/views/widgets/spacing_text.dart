import 'package:flutter/material.dart';

class SpacingText extends StatelessWidget {
  const SpacingText({
    super.key,
    required this.text,
    required this.size,
    required this.spacing,
  });
  final String text;
  final double size;
  final double spacing;
  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
        letterSpacing: spacing,
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: size,
      ),
    );
  }
}
