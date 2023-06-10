import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_ripple_workers/my_controller.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
   MyApp({super.key});
   MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getx Workers',
      theme: ThemeData(primarySwatch: Colors.green,),
      home: Scaffold(
        appBar: AppBar(title: const Text("Getx Workers")),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()=> myController.increment(), child: const Text("Increment")),
            Padding(padding: const EdgeInsets.all(16), child: TextField(onChanged: (value)=> myController.increment(),))
          ],


        ),)

      )
    );
  }
}
