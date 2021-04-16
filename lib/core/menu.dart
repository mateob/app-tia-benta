import 'package:app_tia_benta/core/routes.dart';
import 'package:app_tia_benta/shared/nested_nav_item_key.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigators/nested_navigators.dart';
import 'package:nested_navigators/nested_nav_item.dart';

class Menu extends StatefulWidget {
  @override
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return NestedNavigators(
        items: {
          NestedNavItemKey.home: NestedNavigatorItem(
              initialRoute: Routes.home,
              icon: Icons.account_balance,
              text: 'Home'),
          NestedNavItemKey.client: NestedNavigatorItem(
              initialRoute: Routes.client,
              icon: Icons.account_circle_rounded,
              text: 'Client')
        },
        generateRoute: Routes.generateRoute,
        drawer: (items, selectedItemKey, selectedNavigator) => Drawer(
              child: ListView(
                children: _buildDrawersItems(
                    items, selectedItemKey, selectedNavigator),
              ),
            ),
        endDrawer: (items, selectedItemKey, selectedNavigator) => Drawer(
              child: ListView(
                children: _buildDrawersItems(
                    items, selectedItemKey, selectedNavigator),
              ),
            ),
        buildBottomNavigationItem: (key, item, selected) =>
            BottomNavigationBarItem(icon: Icon(item.icon), label: item.text),
        bottomNavigationBarTheme:
            Theme.of(context).copyWith(splashColor: Colors.blue[100]));
  }

  List<ListTile> _buildDrawersItems(
    Map<NestedNavItemKey, NestedNavigatorItem> items,
    NestedNavItemKey selectedItemKey,
    Function(NestedNavItemKey) selectedNavigator,
  ) {
    return items.entries
        .map((e) => ListTile(
              title: Text(
                e.value.text,
              ),
              trailing: Icon(e.value.icon),
              onTap: () => selectedNavigator(e.key),
            ))
        .toList();
  }
}
