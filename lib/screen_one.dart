import 'package:flutter/material.dart';
import 'package:flutter_getx/screen_two.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  final String name;

  const ScreenOne({super.key, this.name = ''});


  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Getx App (${widget.name})")),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.name),
          Center(
            child: TextButton(
              onPressed: () {
                // Navigator.pop(context);
                Get.to(() => ScreenTwo());
              },
              child: Text("Screen Two"),
            ),
          ),
        ],
      ),
    );
  }
}
