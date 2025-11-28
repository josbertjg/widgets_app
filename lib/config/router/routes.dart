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
  RouteItem(
      name: AppTutorialScreen.name,
      title: "Introduccion a la aplicación",
      subtitle: "Pequeño tutorial introductorio",
      link: "/tutorial",
      icon: Icons.accessible_rounded,
      screen: AppTutorialScreen()),
  RouteItem(
      name: InfiniteScrollScreen.name,
      title: "Infinite Scroll y Pull",
      subtitle: "Vistas infinitas y pull tu refresh",
      link: "/infinite",
      icon: Icons.list_alt_rounded,
      screen: InfiniteScrollScreen()),
  RouteItem(
      name: CounterScreen.name,
      title: "Riverpod Counter",
      subtitle: "Introducción a riverpod",
      link: "/counter-screen",
      icon: Icons.add,
      screen: CounterScreen()),
  RouteItem(
      name: ThemeChangerScreen.name,
      title: "Cambiar Tema",
      subtitle: "Cambiar tema de la aplicacion",
      link: "/theme-changer",
      icon: Icons.color_lens_outlined,
      screen: ThemeChangerScreen()),
];
