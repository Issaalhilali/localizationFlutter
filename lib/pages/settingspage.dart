import 'package:flutter/material.dart';

// ignore: camel_case_types
class settingsPage extends StatefulWidget {
  const settingsPage({Key? key}) : super(key: key);

  @override
  State<settingsPage> createState() => _settingsPageState();
}

// ignore: camel_case_types
class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('setting page'),
      ),
    );
  }
}
