import 'package:flutter/material.dart';

import '../../presentation/screens/screens.dart';

class RouteItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;
  final Widget screen;

  const RouteItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
    required this.screen,
  });
}

const appRoutes = <RouteItem>[
  RouteItem(
      title: "Botones",
      subtitle: "Hola otra vez",
      link: "/buttons",
      icon: Icons.favorite,
      screen: ButtonsScreen()),
  RouteItem(
      title: "Tarjetas",
      subtitle: "Hola otra vez",
      link: "/cards",
      icon: Icons.credit_card,
      screen: CardsScreen()),
  RouteItem(
      title: "Hola",
      subtitle: "Hola otra jejejejej",
      link: "/cards",
      icon: Icons.ac_unit_rounded,
      screen: CardsScreen()),
];
