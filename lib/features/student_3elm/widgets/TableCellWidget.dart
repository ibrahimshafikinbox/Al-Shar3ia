import 'package:flutter/material.dart';

class TableCellWidget extends StatelessWidget {
  final String text;
  final Color reqiredColor;

  const TableCellWidget({required this.text, required this.reqiredColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40,
        width: 100,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          // borderRadius: ,
          color: reqiredColor,
          border: Border.all(color: Color.fromARGB(255, 199, 193, 193)),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class TableCellNetworkWidget extends StatelessWidget {
  final String text;
  final Color reqiredColor;

  const TableCellNetworkWidget(
      {required this.text, required this.reqiredColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40,
        width: 100,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          // borderRadius: ,
          color: reqiredColor,
          border: Border.all(color: Color.fromARGB(255, 199, 193, 193)),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.green, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
