import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddeliveryapp/core/constants/assets.dart';
import 'package:intl/intl.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/dimensions.dart';
import '../../../../core/constants/typography.dart';
import '../../../../core/constants/styles.dart';
import '../cubits/rating/rating_cubit.dart';
import '../cubits/rating/rating_state.dart';

class OrderDetailsCard extends StatelessWidget {
  const OrderDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatingCubit, RatingState>(
      builder: (context, state) {
        final order = state.orderDetails;
        if (order == null) return const SizedBox.shrink();

        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: AppStyles.cardRadius,
          ),
          color: AppColors.surfaceLight,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: AppStyles.cardRadius,
            ),
            child: Padding(
              padding: EdgeInsets.all(AppDimensions.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cingo Foods',
                        style: AppTypography.textTheme.titleLarge?.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Paid Via',
                            style: AppTypography.textTheme.titleSmall?.copyWith(
                              color: AppColors.textPrimary,
                            ),
                          ),
                          SizedBox(height: 8.h,),
                          Image.asset(
                           AppAssets.visaIcon,
                            width: 66.w,
                            height: 20.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                   SizedBox(height: AppDimensions.lg),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order # ${order.id}',
                        style: AppTypography.textTheme.headlineMedium,
                      ),
                      Text(
                        '\$${order.totalAmount.toStringAsFixed(2)}',
                        textAlign: TextAlign.center,
                        style: AppTypography.textTheme.titleMedium?.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppDimensions.sm),

                  Text(
                    DateFormat('dd/MM/yyyy | hh:mm a').format(order.dateTime),
                    style: AppTypography.textTheme.bodyMedium?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                   SizedBox(height: AppDimensions.md),
                  ...List.generate(order.items.length, (index) {
                    final item = order.items[index];
                    final isLastItem = index == order.items.length - 1;
                    
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: AppDimensions.sm),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.name,
                                    style: AppTypography.textTheme.headlineSmall,
                                  ),
                                  Text(
                                    '${item.quantity} quantity',
                                    style: AppTypography.textTheme.labelLarge?.copyWith(
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12.h,),
                              Text(
                                item.description,
                                style: AppTypography.textTheme.displaySmall?.copyWith(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (!isLastItem) 
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: AppDimensions.md),
                            child: const Divider(
                              color: AppColors.divider,
                              thickness: 1,
                            ),
                          ),
                      ],
                    );
                  }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
