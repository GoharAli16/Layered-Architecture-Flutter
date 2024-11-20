import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';


class AppTextField extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final ValueChanged<String>? onChanged;

  const AppTextField({
    required this.hintText,
    this.maxLines,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      style: AppTypography.textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTypography.textTheme.labelLarge?.copyWith(
          color:  AppColors.border.withOpacity(0.49),
          fontWeight: FontWeight.w600
        ),
        filled: true,
        fillColor: AppColors.background,
        border: OutlineInputBorder(
          borderRadius: AppStyles.inputRadius,
          borderSide:  BorderSide(color: AppColors.border.withOpacity(0.33)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppStyles.inputRadius,
          borderSide:  BorderSide(color: AppColors.border.withOpacity(0.33)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppStyles.inputRadius,
          borderSide:  BorderSide(color: AppColors.border.withOpacity(0.33)),
        ),
        contentPadding:  EdgeInsets.all(AppDimensions.md),
      ),
      onChanged: onChanged,
    );
  }
} 