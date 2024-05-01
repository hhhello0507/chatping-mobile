import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  Brightness brightness;

  AppState({required this.brightness});
}
