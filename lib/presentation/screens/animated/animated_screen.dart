import "dart:math" show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const String name = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.blue;
  double borderRadius = 10;

  void changeShape() {
    final random = Random();
    setState(() {
      width = random.nextInt(300) + 120;
      height = random.nextInt(300) + 120;
      borderRadius = random.nextDouble() * 100;

      color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated container"),
      ),
      body: GestureDetector(
        onTap: changeShape,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.elasticOut,
            width: width <= 0 ? 0 : width,
            height: height <= 0 ? 0 : height,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(borderRadius <= 0 ? 0 : borderRadius),
              color: color,
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.play_arrow_rounded),
      // ),
    );
  }
}
