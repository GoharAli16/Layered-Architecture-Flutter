import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimensions {
  // Padding and margin sizes
  static double get xs => 4.0.w;
  static double get sm => 8.0.w;
  static double get md => 16.0.w;
  static double get lg => 24.0.w;
  static double get xl => 32.0.w;

  // Icon sizes
  static double get iconSm => 16.0.w;
  static double get iconMd => 24.0.w;
  static double get iconLg => 32.0.w;
  static double get iconXl => 35.0.w;


  // Border radius
  static double get cardRadius => 12.0.r;
  static double get inputRadius => 12.0.r;
  static double get buttonRadius => 30.0.r;

  // Heights
  static double get buttonHeight => 56.0.h;

  // Custom spacing helpers
  static double sp(double fontSize) => fontSize.sp;
} 