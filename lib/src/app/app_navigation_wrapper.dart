import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/extensions/build_context_extension.dart';

class AppNavigationWrapper extends StatelessWidget {
  const AppNavigationWrapper({
    super.key,
    required this.child,
    required this.currentIndex,
    required this.onTap,
  });

  final Widget child;
  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: context.colors.white,
        unselectedItemColor: context.colors.grayTextColor,
        unselectedLabelStyle: context.typography.outlinesemibold.copyWith(
          color: context.colors.grayTextColor,
        ),
        selectedItemColor: context.colors.mainAccent,
        selectedLabelStyle: context.typography.outlinesemibold.copyWith(
          color: context.colors.mainAccent,
        ),
        onTap: (value) {
          onTap(value);
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              context.assetImages.home,
              colorFilter: ColorFilter.mode(
                currentIndex == 0 ? context.colors.mainAccent : context.colors.grayTextColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              context.assetImages.book,
              colorFilter: ColorFilter.mode(
                currentIndex == 1 ? context.colors.mainAccent : context.colors.grayTextColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              context.assetImages.fav,
              colorFilter: ColorFilter.mode(
                currentIndex == 2 ? context.colors.mainAccent : context.colors.grayTextColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              context.assetImages.person,
              colorFilter: ColorFilter.mode(
                currentIndex == 3 ? context.colors.mainAccent : context.colors.grayTextColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
