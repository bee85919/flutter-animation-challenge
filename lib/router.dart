import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_animation_challenge/screen/menu_screen.dart';
import 'package:flutter_animation_challenge/challenge/implicit_animations.dart';

final router = GoRouter(
  initialLocation: "/${const MenuScreen()}",
  routes: [
    _getRoute(const MenuScreen()),
    _getRoute(const ImplicitAnimation()),
  ],
);

GoRoute _getRoute(Widget screen) => GoRoute(
      name: screen.toString(),
      builder: (context, state) => screen,
      path: "/$screen",
    );
