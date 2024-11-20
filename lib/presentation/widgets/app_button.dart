import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/constants.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final double width;

  const AppButton({
    required this.text,
    this.onPressed,
    this.isLoading = false,

    super.key,
     this.width = double.infinity,

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 58.75.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.background,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: AppStyles.buttonRadius,
          ),
        ),
        child: isLoading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: AppColors.background,
                  strokeWidth: 2,
                ),
              )
            : Text(
                text,
                style: AppTypography.textTheme.titleMedium?.copyWith(
                  color: AppColors.background,
                ),
              ),
      ),
    );
  }
} 