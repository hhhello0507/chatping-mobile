import 'package:chatping/color/gradient/gradientable.dart';
import 'package:flutter/material.dart';

enum Primary implements Gradientable {
  p50(LinearGradient(
    begin: Alignment(1.00, 0.00),
    end: Alignment(-1, 0),
    colors: [Color(0xFFF50A7A), Color(0xFFFF450A)],
  ));

  const Primary(this.gradient);

  @override
  final Gradient gradient;

  @override
  Gradient getGradient() {
    return gradient;
  }
}