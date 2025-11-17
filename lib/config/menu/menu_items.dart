import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: "Hola mundo",
      subtitle: "Un subtitulo",
      link: "/",
      icon: Icons.home),
  MenuItem(
      title: "Botones",
      subtitle: "Hola otra vez",
      link: "/buttons",
      icon: Icons.favorite),
  MenuItem(
      title: "Tarjetas",
      subtitle: "Hola otra vez",
      link: "/cards",
      icon: Icons.credit_card),
];
