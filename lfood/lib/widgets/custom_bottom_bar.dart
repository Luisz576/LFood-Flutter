import 'package:flutter/material.dart';
import 'package:lfood/widgets/custom_bottom_item.dart';

class CustomBottomBar extends StatelessWidget {

  final int index;
  final onTabTap;

  CustomBottomBar({required this.index, required this.onTabTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTabTap,
      unselectedFontSize: 0,
      selectedFontSize: 0,
      items: [
        CustomBottomItem(iconData: Icons.home, active: index == 0).getLikeWidget(),
        CustomBottomItem(iconData: Icons.search, active: index == 1).getLikeWidget(),
        CustomBottomItem(iconData: Icons.my_library_books_outlined, active: index == 2).getLikeWidget(),
        CustomBottomItem(iconData: Icons.person, active: index == 3).getLikeWidget(),
      ],
    );
  }
}