import 'package:flutter/material.dart';

// Primary colors
const primaryColor = Color(0xFFfbab66);
const primaryLight = Color(0xFFFF9F59);
const primaryDark = Color(0xFFE88A4A);

// Secondary colors
const secondaryColor = Color(0xFFf7418c);
const secondaryLight = Color(0xFFF86AA3);
const secondaryDark = Color(0xFFD6367A);

// Gradient colors
const gradientStart = Color(0xFFfbab66);
const gradientEnd = Color(0xFFf7418c);

// Gradients
const primaryGradient = LinearGradient(
  colors: [gradientStart, gradientEnd],
  stops: [0.0, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const chatBubbleGradient = LinearGradient(
  colors: [Color(0xFFFD60A3), Color(0xFFFF8961)],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);

const chatBubbleGradient2 = LinearGradient(
  colors: [Color(0xFFf4e3e3), Color(0xFFf4e3e3)],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);

// Material 3 color scheme
final lightColorScheme = ColorScheme.light(
  primary: primaryColor,
  onPrimary: Colors.white,
  primaryContainer: primaryLight,
  onPrimaryContainer: Colors.black,
  secondary: secondaryColor,
  onSecondary: Colors.white,
  secondaryContainer: secondaryLight,
  onSecondaryContainer: Colors.black,
  error: Colors.red,
  onError: Colors.white,
  background: Colors.white,
  onBackground: Colors.black,
  surface: Colors.white,
  onSurface: Colors.black,
);

final darkColorScheme = ColorScheme.dark(
  primary: primaryLight,
  onPrimary: Colors.black,
  primaryContainer: primaryColor,
  onPrimaryContainer: Colors.white,
  secondary: secondaryLight,
  onSecondary: Colors.black,
  secondaryContainer: secondaryColor,
  onSecondaryContainer: Colors.white,
  error: Colors.redAccent,
  onError: Colors.black,
  background: Colors.black,
  onBackground: Colors.white,
  surface: Colors.grey.shade900,
  onSurface: Colors.white,
);
