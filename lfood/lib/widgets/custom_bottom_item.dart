import 'package:flutter/material.dart';

class CustomBottomItem{

  final bool active;
  final IconData iconData;

  CustomBottomItem({required this.active, required this.iconData});

  BottomNavigationBarItem getLikeWidget() {
    return BottomNavigationBarItem(
      icon: Icon(iconData, color: active ? Colors.black : Colors.black54, size: 35,),
      label: "",
    );
  }

}