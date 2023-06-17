import 'package:flutter/material.dart';
import 'package:tasks_application/src/common/common.dart';
import 'package:tasks_application/src/home/home.dart'
    show NavigationBarItemModel;

class NavigationBarListItem extends StatelessWidget {
  const NavigationBarListItem({
    super.key,
    required this.navigationBarItem,
  });
  final NavigationBarItemModel navigationBarItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      child: Text(
        navigationBarItem.name,
        style: const TextStyle(
          color: AppStyle.kLightTextColor,
        ),
      ),
    );
  }
}
