import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Getx App")),
      body: Column(children: []),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.snackbar(
            "Junayed",
            "Learning flutter",
            backgroundColor: Colors.blueGrey,
            colorText: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            mainButton: TextButton(
              onPressed: (() {}),
              child: const Text("jajsd"),
            ),
          );
        },
      ),
    );
  }
}
