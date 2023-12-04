import 'package:flutter/material.dart';
import 'package:newprojectt/screens/file_picker_page.dart';
import 'package:newprojectt/screens/flutter_map_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pages = [
    FilePickerPage(),
    FlutterMapPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: DefaultTabController(
        initialIndex: 0,
        length: pages.length,
        child: Scaffold(
          appBar: AppBar(

            backgroundColor: Colors.blue,
            title: const Text('new Project'),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Icon(Icons.file_copy),
              Icon(Icons.pin_drop_rounded),
            ]),
          ),
          body: TabBarView(children: pages),
        ),
      ),
    );
  }
}
