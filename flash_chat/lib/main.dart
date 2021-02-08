import 'package:flash_chat/injection.dart';
import 'package:flash_chat/presentation/core/app_screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  // Change debugPrint to an empty function in release mode
  bool isInRelease = true;
  // assert is ignored when in production mode which keeps isInRelease as true
  assert(() {
    isInRelease = false;
    return true;
  }());
  if (isInRelease) {
    debugPrint = (String message, {int wrapWidth}) {};
  }

  configureInjection(Environment.prod);
  runApp(AppScreen());
}
