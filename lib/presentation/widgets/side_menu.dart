import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/routes.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (newIndex) {
          setState(() {
            navDrawerIndex = newIndex;
          });
          context.push(appRoutes[newIndex].link);
          widget.scaffoldKey.currentState?.closeDrawer();
        },
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
              child: const Text("Drawer Header")),
          ...appRoutes.sublist(0, 3).map(
                (route) => NavigationDrawerDestination(
                    icon: Icon(route.icon), label: Text(route.title)),
              ),
          const Padding(
              padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
              child: Divider(thickness: 2)),
          const Padding(
              padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
              child: Text("More Options")),
          ...appRoutes.sublist(3).map(
                (route) => NavigationDrawerDestination(
                    icon: Icon(route.icon), label: Text(route.title)),
              ),
        ]);
  }
}
