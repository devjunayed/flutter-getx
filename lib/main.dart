import 'package:flutter/material.dart';
import 'package:flutter_getx/home_screen.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
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
    seedColor: Colors.blue,
    brightness: Brightness.light,
  ),
);
final ThemeData darkThemeData = baseTheme.copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.dark,
  ),
);
