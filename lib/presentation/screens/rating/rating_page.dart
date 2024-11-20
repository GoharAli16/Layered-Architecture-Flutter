import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/constants.dart';
import '../../../core/di/service_locator.dart';
import '../../cubits/rating/rating_cubit.dart';
import '../../cubits/rating/rating_state.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/order_details.dart';
import 'widgets/rating_category.dart';

class RatingPage extends StatelessWidget {
   RatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RatingCubit>(
    create: (_) => getIt<RatingCubit>(),
      child:  RatingView(),
    );
  }
}



class RatingView extends StatelessWidget {
   RatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        toolbarHeight: 80.h,
        backgroundColor: AppColors.surfaceLight,
        elevation: 0.5,
        leading: Container(
          //padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
          margin:  EdgeInsets.only(left: 16.0.w),
          child: InkWell(
           // onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(
              AppAssets.backIcon,
              width: AppDimensions.iconSm,
              height:  AppDimensions.iconSm,
            ),
          ),
        ),

        title: Text(
          'Rate Your Experience',
          style: AppTypography.textTheme.headlineSmall?.copyWith(
            color: AppColors.textPrimary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding:  EdgeInsets.all(AppDimensions.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const OrderDetailsCard(),
             SizedBox(height: AppDimensions.xl),
            BlocBuilder<RatingCubit, RatingState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...RatingCategories.categories.map((category) {
                      return Padding(
                        padding:  EdgeInsets.symmetric(horizontal: AppDimensions.md),
                        child: RatingCategory(
                          title: category['title']!,
                          rating: state.ratings[category['key']] ?? 0,
                          onRatingChanged: (rating) => context
                              .read<RatingCubit>()
                              .updateRating(category['key']!, rating),
                        ),
                      );
                    }).toList(),
                     SizedBox(height: AppDimensions.md),
                    AppTextField(
                      hintText: 'Your comments (optional)',
                      maxLines: 4,
                      onChanged: (value) => context
                          .read<RatingCubit>()
                          .updateComment(value),
                    ),
                     SizedBox(height: AppDimensions.xl),
                    Center(
                      child: AppButton(
                        text: 'Submit',
                        width: 319.w,
                        onPressed: () => context
                            .read<RatingCubit>()
                            .submitRating(),
                        isLoading: state.status == RatingStatus.submitting,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}