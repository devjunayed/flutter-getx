import 'package:flutter/material.dart';
import 'package:flutter_getx/counter_controller.dart';
import 'package:flutter_getx/screen_one.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Getx App")),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ScreenOne()),
              // );
              Get.to(() => ScreenOne(name: "Junayed"));
            },
            child: Text("Go to next screen"),
          ),
          Card(
            child: ListTile(
              title: Text("Getx Dialog Alert"),
              subtitle: Text('Getx dialog after with getX'),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete Chat",
                  middleText: "Are you sure",
                  textConfirm: "Confrim",
                  textCancel: "Cancel",
                  confirm: TextButton(
                    onPressed: () {},
                    child: Icon(Icons.airplane_ticket),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Getx Bottomsheet"),
              subtitle: Text('Getx bottomsheet  with getX'),
              onTap: () {
                Get.bottomSheet(
                  isDismissible: true,

                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Light Theme"),
                          onTap: () {
                            Get.changeThemeMode(ThemeMode.light);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark Theme"),
                          onTap: () {
                            Get.changeThemeMode(ThemeMode.dark);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            child: Obx(
              () => ListTile(
                title: Center(
                  child: Text(
                    controller.counter.value.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    controller.incrementCounter();
                  },
                  child: Text("Increase"),
                ),
                TextButton(
                  onPressed: () {
                    controller.decrementCounter();
                  },
                  child: Text("Decrease"),
                ),
              ],
            ),
          ),
        ],
      ),
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
