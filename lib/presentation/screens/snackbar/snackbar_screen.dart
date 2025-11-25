import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text("Hola mundo"),
      action: SnackBarAction(label: "Ok!", onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
                title: const Text("Titulo"),
                content: const Text("Contenido"),
                actions: [
                  TextButton(
                      onPressed: () => context.pop(),
                      child: const Text("Cancelar")),
                  FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text("Aceptar"))
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y Dialogs"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text("Informacion de la app"),
                  ]);
                },
                child: const Text("Licencias usadas")),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text("Mostrar Alerta"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text("Mostrar Snakcbar"),
          icon: const Icon(Icons.remove_red_eye),
          onPressed: () => showCustomSnackbar(context)),
    );
  }
}
