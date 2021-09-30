import 'package:flutter/material.dart';

class NothingPage extends StatefulWidget {
  const NothingPage({Key? key}) : super(key: key);

  @override
  State<NothingPage> createState() => _NothingPageState();
}

class _NothingPageState extends State<NothingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('homepage'),
      ),
    );
  }
}
