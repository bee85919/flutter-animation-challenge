import 'package:flutter/material.dart';

class ChallengeScreen extends StatelessWidget {
  final String title;
  final Widget child;
  final Color backgroundColor;
  const ChallengeScreen({
    required this.title,
    Key? key,
    required this.child,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        toolbarTextStyle: const TextTheme(
          titleLarge: TextStyle(color: Colors.black, fontSize: 20),
        ).bodyMedium,
        titleTextStyle: const TextTheme(
          titleLarge: TextStyle(color: Colors.black, fontSize: 20),
        ).titleLarge,
      ),
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          child: child,
        ),
      ),
    );
  }
}
