import 'package:flutter/material.dart';
import 'package:flutter_getx/home_screen.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}

final ThemeData baseTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
  ),
);

final ThemeData lightThemeData = baseTheme.copyWith(
  colorScheme: ColorScheme.fromSeed(
    surface: Colors.white,
    seedColor: Colors.blue,
    brightness: Brightness.light,
  ),
  scaffoldBackgroundColor: Colors.white,
);
final ThemeData darkThemeData = baseTheme.copyWith(
  colorScheme: ColorScheme.fromSeed(
    surface: Colors.black,
    seedColor: Colors.grey,
    brightness: Brightness.dark,
  ),
  scaffoldBackgroundColor: Colors.black,
);
