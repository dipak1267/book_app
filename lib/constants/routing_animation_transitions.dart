import 'package:flutter/material.dart';

class BouncyPageRoute extends PageRouteBuilder {
  final Widget? child;

  BouncyPageRoute({@required this.child})
      : super(
          pageBuilder: (context, animation, secAnimation) => child!,
          transitionDuration: Duration(seconds: 1),
          transitionsBuilder: (context, animation, secAnimation, child) {
            animation = CurvedAnimation(
              parent: animation,
              curve: Curves.easeInToLinear,
            );
            return SlideTransition(
              position: Tween<Offset>(
                begin: Offset(1.0, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}

class FadePageRoute extends PageRouteBuilder {
  final Widget child;

  FadePageRoute({required this.child})
      : super(
          pageBuilder: (context, animation, secAnimation) => child,
          transitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (context, animation, secAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
