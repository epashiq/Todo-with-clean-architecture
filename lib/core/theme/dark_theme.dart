import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dark_theme.g.dart';

final _darkTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
);

@riverpod
ThemeData darkTheme(DarkThemeRef ref){
  return _darkTheme;
}