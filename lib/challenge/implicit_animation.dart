import 'package:flutter_animation_challenge/screen/main_screen.dart';
import 'package:flutter/material.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({super.key});

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation> {
  bool rewind = false;

  @override
  Widget build(BuildContext context) {
    var containerSize = MediaQuery.of(context).size.width;

    return ChallengeScreen(
      title: 'Implicit Animation',
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: buildAnimatedContainer(containerSize),
      ),
    );
  }

  Widget buildAnimatedContainer(double size) {
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 1000),
      tween: Tween<double>(begin: rewind ? 1.0 : 0.0, end: rewind ? 0.0 : 1.0),
      onEnd: () => setState(() => rewind = !rewind),
      builder: (context, double value, child) {
        return Container(
          height: size,
          width: size,
          color: rewind ? Colors.black12 : Colors.black87,
          child: Stack(
            children: [
              buildShape(size),
              buildBar(size, value),
            ],
          ),
        );
      },
    );
  }

  Widget buildShape(double size) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: size / 2,
        width: size / 2,
        color: Colors.transparent,
        child: Center(
          child: Container(
            width: size / 2,
            height: size / 2,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: rewind ? BoxShape.circle : BoxShape.rectangle,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBar(double size, double value) {
    var movementRange = size / 2 - 12;
    return Positioned(
      top: size / 4,
      left: size / 5 + movementRange * value,
      child: Container(
        height: size / 2,
        width: 12,
        color: rewind ? Colors.black87 : Colors.white70,
      ),
    );
  }
}
