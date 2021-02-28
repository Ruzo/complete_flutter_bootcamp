import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/injection.dart';
import 'package:flash_chat/presentation/core/app_screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

// ignore: avoid_void_async
void main() async {
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

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  runApp(AppScreen());
}
