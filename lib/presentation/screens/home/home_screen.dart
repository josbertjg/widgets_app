import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String name = "home_screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text("Flutter + Material 3"),
        ),
        body: const _HomeView(),
        drawer: SideMenu(
          scaffoldKey: scaffoldKey,
        ));
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: appRoutes.length,
        itemBuilder: (context, index) {
          final routeItem = appRoutes[index];
          if (routeItem.name == HomeScreen.name) return const SizedBox();
          return _CustomListTile(routeItem: routeItem);
        });
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.routeItem,
  });

  final RouteItem routeItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(routeItem.title),
      subtitle: Text(routeItem.subtitle),
      leading: Icon(routeItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      onTap: () {
        context.pushNamed(routeItem.name);
      },
    );
  }
}
