import 'package:clean_architecture_todo/core/theme/extension/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'light_theme.g.dart';

final _lightTheme = ThemeData(brightness: Brightness.light, extensions: [
  ColorExtension(
      primary: Colors.amberAccent, secondary: Colors.deepPurpleAccent)
]);

@riverpod
ThemeData lightTheme(LightThemeRef ref) {
  return _lightTheme;
}
