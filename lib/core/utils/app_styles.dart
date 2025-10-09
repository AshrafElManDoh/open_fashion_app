import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle getFont14(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
  );
  static TextStyle getFont16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.onSurface,
  );
  static TextStyle getFont18(BuildContext context) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.blueGrey,
  );
}