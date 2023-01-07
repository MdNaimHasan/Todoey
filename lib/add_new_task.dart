import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'tasks_data.dart';

class Add_New_Task extends StatelessWidget {
  Add_New_Task({
    Key? key,
  }) : super(key: key);

  String new_task_name = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add New Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.blue,
            ),
          ),
          TextField(
            autofocus: true,
            style: TextStyle(
              fontSize: 25.0,
            ),
            onChanged: (task_name) {
              new_task_name = task_name;
            },
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 5.0,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 5.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          TextButton(
            onPressed: () {
              Provider.of<Tasks_Data>(context, listen: false)
                  .add_new_task(new_task_name);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "S a v e",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
