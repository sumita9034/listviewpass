import 'package:flutter/material.dart';

class ListPassValue extends StatefulWidget {
  List<dynamic> MainData = [];
  ListPassValue({required this.MainData, Key? key}) : super(key: key);

  @override
  State<ListPassValue> createState() => _ListPassValueState();
}

class _ListPassValueState extends State<ListPassValue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(widget.MainData.toString())),
    );
  }
}
