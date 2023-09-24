import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {
  final String requiredtext;
  final VoidCallback onpressed;
  const DropDownList({
    Key? key,
    required this.requiredtext,
    required this.onpressed,
  }) : super(key: key);

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 244, 242, 242)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    widget.requiredtext,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      size: 25,
                    ),
                    onPressed: widget.onpressed,
                  )
                ],
              ),
            ))
      ],
    );
  }
}
