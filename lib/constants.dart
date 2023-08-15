import 'dart:ui';
import 'package:flex_color_scheme/flex_color_scheme.dart';

Color backgroundColor = const Color(0xff262626);

final kDarkThemeData = FlexThemeData.dark(
  colors: const FlexSchemeColor(
    primary: Color(0xff60748a),
    primaryContainer: Color(0xff1a2c42),
    secondary: Color(0xFFE59A18),
    secondaryContainer: Color(0xFFE0BD80),
    tertiary: Color(0xff869ab0),
    tertiaryContainer: Color(0xff394858),
    error: Color(0xffcf6679),
    errorContainer: Color(0xffb1384e),
  ),
  scheme: FlexScheme.bigStone,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 15,
  tabBarStyle: null,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useM2StyleDividerInM3: true,
    filledButtonSchemeColor: SchemeColor.secondary,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
);
