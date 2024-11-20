import 'package:flutter/material.dart';
import 'colors.dart';
import 'dimensions.dart';

class AppStyles {
  static BoxShadow get cardShadow => BoxShadow(
    color: AppColors.secondary.withOpacity(0.1),
    blurRadius: 10,
    offset: const Offset(0, 2),
  );

  static BoxShadow get bottomNavShadow => BoxShadow(
    color: AppColors.secondary.withOpacity(0.1),
    blurRadius: 10,
    offset: const Offset(0, -2),
  );

  static BorderRadius get cardRadius => BorderRadius.circular(
    AppDimensions.cardRadius,
  );

  static BorderRadius get buttonRadius => BorderRadius.circular(
    AppDimensions.buttonRadius,
  );

  static BorderRadius get inputRadius => BorderRadius.circular(
    AppDimensions.inputRadius,
  );
} 