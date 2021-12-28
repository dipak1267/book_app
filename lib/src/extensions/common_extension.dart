import 'package:flutter/material.dart';

extension WidgetConstraintExtensions on Widget {
  Container setMargins(EdgeInsets edgeInsets) {
    return Container(
      margin: edgeInsets,
      child: this,
    );
  }

  Container setMarginSymmetric({
    double horizontal = 0.0,
    double vertical = 0.0,
  }) =>
      setMargins(EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ));

  Container setMarginOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      setMargins(EdgeInsets.only(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
      ));

  Container setMarginAll({
    double value = 0.0,
  }) =>
      setMargins(EdgeInsets.all(value));

  Padding setPadding(EdgeInsets edgeInsets) => Padding(
        padding: edgeInsets,
        child: this,
      );

  Padding setPaddingSymmetric({
    double horizontal = 0.0,
    double vertical = 0.0,
  }) =>
      setPadding(EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ));

  Padding setPaddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      setPadding(EdgeInsets.only(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
      ));

  Padding setPaddingAll({
    double value = 0.0,
  }) =>
      setPadding(EdgeInsets.all(value));

  Center centered() => Center(
        child: this,
      );

  SafeArea safely() => SafeArea(
        child: this,
      );
}

extension IntConstraints on int {
  int get intAlt => (this == 0) ? 1 : 0;
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
