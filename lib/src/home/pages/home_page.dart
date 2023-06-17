import 'package:flutter/material.dart';
import 'package:tasks_application/src/common/common.dart' show AppStyle;
import 'package:tasks_application/src/home/home.dart'
    show NavigationBarItemModel, NavigationBarListItem;

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  static final navigationBarItems = [
    NavigationBarItemModel(name: 'Tasks', url: 'tasks'),
    NavigationBarItemModel(name: 'Projects', url: 'projects'),
    NavigationBarItemModel(name: 'Teams', url: 'teams'),
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppStyle.kDarkBlue,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          vertical: 64,
        ),
        itemBuilder: (context, index) => NavigationBarListItem(
          navigationBarItem: navigationBarItems[index],
        ),
        separatorBuilder: (context, index) => const Divider(
          color: AppStyle.kMediumBlue,
          height: 1,
          endIndent: 13,
          indent: 13,
        ),
        itemCount: navigationBarItems.length,
      ),
    );
  }
}
