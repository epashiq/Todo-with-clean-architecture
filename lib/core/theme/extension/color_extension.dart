import 'package:flutter/material.dart';

class ColorExtension extends ThemeExtension<ColorExtension> {
  final Color primary;
  final Color secondary;
  ColorExtension({required this.primary, required this.secondary});

  @override
  ThemeExtension<ColorExtension> copyWith({
    Color? primary,
    Color? secondary,
  }) {
    return ColorExtension(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary);
  }

  @override
  ThemeExtension<ColorExtension> lerp(
      covariant ThemeExtension<ColorExtension>? other, double t) {
    if (other is! ColorExtension) {
      return this;
    }
    return ColorExtension(
        primary: Color.lerp(
          primary,
          other.primary,
          t,
        )!,
        secondary: Color.lerp(secondary, other.secondary, t)!);
  }
}
