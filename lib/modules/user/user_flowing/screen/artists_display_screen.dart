import 'package:flutter/material.dart';

class MyFlowing extends StatefulWidget {
  const MyFlowing({Key? key}) : super(key: key);

  @override
  State<MyFlowing> createState() => _MyFlowingState();
}

class _MyFlowingState extends State<MyFlowing> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("MyFlowing")),
    );
  }
}
