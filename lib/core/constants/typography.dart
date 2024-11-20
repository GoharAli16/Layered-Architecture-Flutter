import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static final TextTheme textTheme = TextTheme(
    // Display
    displayLarge: GoogleFonts.poppins(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 45,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: GoogleFonts.montserrat(
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
    
    headlineLarge: GoogleFonts.poppins(
      fontSize: 32.sp,
      fontWeight: FontWeight.w600,
    ),

    headlineMedium: GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
    ),

    headlineSmall: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
    ),
    
    // Title Montserrat

    titleLarge: GoogleFonts.poppins(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: GoogleFonts.montserrat(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: GoogleFonts.montserrat(
      fontSize: 11.sp,
      fontWeight: FontWeight.w300,
    ),
    
    // Label
    labelLarge: GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 11,
      fontWeight: FontWeight.w500,
    ),
    
    // Body
    bodyLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 11.sp,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
} 