import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, boat, plane, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = false;
  Transportation selectedTransport = Transportation.car;

  String showTransport() {
    if (selectedTransport == Transportation.boat) return "Barco";
    if (selectedTransport == Transportation.plane) return "Avion";
    if (selectedTransport == Transportation.submarine) return "Submarino";
    return "Automobil";
  }

  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Developer mode"),
            subtitle: const Text("Controles adicionales"),
            value: isDeveloper,
            onChanged: (_) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            }),
        ExpansionTile(
            title: const Text("Vehículo de transporte"),
            subtitle: Text("Actual: ${showTransport()}"),
            children: [
              RadioListTile(
                  title: const Text("Buy car"),
                  subtitle: const Text("Viajar por carro"),
                  value: Transportation.car,
                  groupValue: selectedTransport,
                  onChanged: (_) {
                    setState(() {
                      selectedTransport = Transportation.car;
                    });
                  }),
              RadioListTile(
                  title: const Text("Buy boat"),
                  subtitle: const Text("Viajar por boat"),
                  value: Transportation.boat,
                  groupValue: selectedTransport,
                  onChanged: (_) {
                    setState(() {
                      selectedTransport = Transportation.boat;
                    });
                  }),
              RadioListTile(
                  title: const Text("Buy plane"),
                  subtitle: const Text("Viajar por plane"),
                  value: Transportation.plane,
                  groupValue: selectedTransport,
                  onChanged: (_) {
                    setState(() {
                      selectedTransport = Transportation.plane;
                    });
                  }),
              RadioListTile(
                  title: const Text("Buy submarine"),
                  subtitle: const Text("Viajar por submarine"),
                  value: Transportation.submarine,
                  groupValue: selectedTransport,
                  onChanged: (_) {
                    setState(() {
                      selectedTransport = Transportation.submarine;
                    });
                  }),
            ]),

        // TODO: HOLA

        CheckboxListTile(
            title: const Text("Desayuno?"),
            subtitle:
                const Text("Marcalo para indicar que si quieres desayuno"),
            value: wantsBreakfast,
            onChanged: (_) {
              setState(() {
                wantsBreakfast = !wantsBreakfast;
              });
            }),
        CheckboxListTile(
            title: const Text("Almuerzo?"),
            subtitle:
                const Text("Marcalo para indicar que si quieres almuerzo"),
            value: wantsLunch,
            onChanged: (_) {
              setState(() {
                wantsLunch = !wantsLunch;
              });
            }),
        CheckboxListTile(
            title: const Text("Cena?"),
            subtitle: const Text("Marcalo para indicar que si quieres cena"),
            value: wantsDinner,
            onChanged: (_) {
              setState(() {
                wantsDinner = !wantsDinner;
              });
            }),
      ],
    );
  }
}
