import 'package:clean_architecture_todo/core/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'theme_provider.g.dart';

@riverpod
class Theme extends _$Theme {
  @override
  ThemeData build() {
    return ref.watch(lightThemeProvider);
  }

  void swithTheme() {
    if (state.brightness == Brightness.light) {
      state = ThemeData.dark();
    } else {
      state = ThemeData.light();
    }
  }
}
