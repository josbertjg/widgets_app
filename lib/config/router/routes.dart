import 'package:flutter/material.dart';
import '../../presentation/screens/screens.dart';

class RouteItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;
  final Widget screen;
  final String name;

  const RouteItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
    required this.screen,
    required this.name,
  });
}

const appRoutes = <RouteItem>[
  RouteItem(
      name: HomeScreen.name,
      title: "Home",
      subtitle: "Pantalla de inicio",
      link: "/",
      icon: Icons.home,
      screen: HomeScreen()),
  RouteItem(
      name: ButtonsScreen.name,
      title: "Botones",
      subtitle: "Hola otra vez",
      link: "/buttons",
      icon: Icons.favorite,
      screen: ButtonsScreen()),
  RouteItem(
      name: CardsScreen.name,
      title: "Tarjetas",
      subtitle: "Hola otra vez",
      link: "/cards",
      icon: Icons.credit_card,
      screen: CardsScreen()),
  RouteItem(
      name: ProgressScreen.name,
      title: "Progress Indicators",
      subtitle: "Hola otra vez",
      link: "/progress",
      icon: Icons.refresh_rounded,
      screen: ProgressScreen()),
  RouteItem(
      name: SnackbarScreen.name,
      title: "Snackbars Y Dialogs",
      subtitle: "Hola otra vez",
      link: "/snackbars",
      icon: Icons.info_outline,
      screen: SnackbarScreen()),
  RouteItem(
      name: AnimatedScreen.name,
      title: "Animated container",
      subtitle: "statefull widget animado",
      link: "/animated",
      icon: Icons.check_box_outline_blank_rounded,
      screen: AnimatedScreen()),
  RouteItem(
      name: UiControlsScreen.name,
      title: "UI Controls + Tiles",
      subtitle: "Una serie de controles de flutter",
      link: "/ui-controls",
      icon: Icons.car_rental_outlined,
      screen: UiControlsScreen()),
];
