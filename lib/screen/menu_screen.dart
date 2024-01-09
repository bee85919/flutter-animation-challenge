import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_animation_challenge/challenge/implicit_animations.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChallengeButton(widget: ImplicitAnimation()),
          ],
        ),
      ),
    );
  }
}

class ChallengeButton extends StatelessWidget {
  final Widget widget;
  const ChallengeButton({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.pushNamed(widget.toString()),
      child: Text(widget.toString()),
    );
  }
}
