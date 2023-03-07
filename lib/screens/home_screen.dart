import 'package:calcumate/widgets/calculator.dart';
import 'package:flutter/material.dart';
import '../widgets/modechanger.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(48, 49, 54, 1),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        children: const [
          Calculator(),
          Positioned(
            top: 50,
            left: 100,
            width: 220,
            child: ModeChanger(),
          ),
        ],
      ),
    );
  }
}
