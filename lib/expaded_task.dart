import 'package:flutter/material.dart';

class ExpandedTask extends StatefulWidget {
  const ExpandedTask({super.key});

  @override
  State<ExpandedTask> createState() => _ExpandedTaskState();
}

class _ExpandedTaskState extends State<ExpandedTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              height: 150,
              width: 50,
            ),
          ),
          Spacer(flex: 2),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
