import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddeliveryapp/core/constants/assets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/dimensions.dart';

class RatingCategory extends StatelessWidget {
  final String title;
  final int rating;
  final Function(int) onRatingChanged;

  const RatingCategory({
    super.key,
    required this.title,
    required this.rating,
    required this.onRatingChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:  GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
           SizedBox(height: AppDimensions.lg),
          Row(
            children: List.generate(
              5,
              (index) => GestureDetector(
                onTap: () => onRatingChanged(index + 1),
                child: SvgPicture.asset(
                  index < rating ? AppAssets.starFilledIcon : AppAssets.starOutlineIcon,
                  width: 33.34.w,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 