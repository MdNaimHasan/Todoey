import 'package:flutter/material.dart';

class Task_Tile extends StatefulWidget {
  String task_name;
  bool is_completed;

  Task_Tile({
    Key? key,
    required this.task_name,
    this.is_completed = false,
  }) : super(key: key);

  @override
  State<Task_Tile> createState() => _Task_TileState();
}

class _Task_TileState extends State<Task_Tile> {
  void flip_state() {
    setState(() {
      widget.is_completed = !widget.is_completed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 25.0,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0.0),
        ),
        onPressed: () {
          flip_state();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${widget.task_name}",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            Checkbox(
              value: widget.is_completed,
              onChanged: (new_state) {
                flip_state();
              },
            ),
          ],
        ),
      ),
    );
  }
}
