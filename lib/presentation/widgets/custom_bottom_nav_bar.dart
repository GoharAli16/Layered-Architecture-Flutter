import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/constants/constants.dart';
import '../cubits/navigation/navigation_cubit.dart';
import '../cubits/navigation/navigation_state.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  AppStyles.bottomNavShadow,
                ],
              ),
              child: BottomNavigationBar(
                currentIndex: state.selectedIndex,
                onTap: (index) => context.read<NavigationCubit>().setTab(index),
                type: BottomNavigationBarType.fixed,
                selectedItemColor: AppColors.primary,
                unselectedItemColor: AppColors.textPrimary,
                selectedLabelStyle: AppTypography.textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w400),
                unselectedLabelStyle: AppTypography.textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w400),
                iconSize: AppDimensions.sm,
                showUnselectedLabels: true,
                items: [
                  _buildNavItem(
                    icon: AppAssets.homeIcon,
                    label: 'Home',
                    isSelected: state.selectedIndex == 0,
                  ),
                  _buildNavItem(
                    icon: AppAssets.favoriteIcon,
                    label: 'Favorite',
                    isSelected: state.selectedIndex == 1,
                  ),
                  const BottomNavigationBarItem(
                    icon: SizedBox.shrink(),
                    label: '',
                  ),
                  _buildNavItem(
                    icon: AppAssets.ordersIcon,
                    label: 'Orders',
                    isSelected: state.selectedIndex == 3,
                  ),
                  _buildNavItem(
                    icon: AppAssets.profileIcon,
                    label: 'Profile',
                    isSelected: state.selectedIndex == 4,
                  ),
                ],
              ),
            ),
            Positioned(
              top: -AppDimensions.xl, // Floating button position
              left: MediaQuery.of(context).size.width / 2 - AppDimensions.xl,
              child: GestureDetector(
                onTap: () => context.read<NavigationCubit>().setTab(2),
                child: Container(
                  width: AppDimensions.iconXl * 2,
                  height: AppDimensions.iconXl * 2,
                  decoration: const BoxDecoration(
                    color: AppColors.surfaceLight,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(AppDimensions.xs),
                    child: CircleAvatar(
                      backgroundColor: AppColors.primary,
                      child: SvgPicture.asset(
                        AppAssets.cartIcon,
                        width: AppDimensions.iconMd,
                        height: AppDimensions.iconMd,
                        colorFilter: const ColorFilter.mode(
                          AppColors.surfaceLight,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  BottomNavigationBarItem _buildNavItem({
    required String icon,
    required String label,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          SvgPicture.asset(
            icon,
            width: AppDimensions.md,
            height: AppDimensions.md,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.primary : AppColors.textSecondary,
              BlendMode.srcIn,
            ),
          ),
          SizedBox(height: AppDimensions.xs),
        ],
      ),
      label: label,
    );
  }
}
