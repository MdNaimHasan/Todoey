import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'task_tile.dart';
import 'tasks_data.dart';

class Task_List extends StatelessWidget {
  Task_List({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks_Data>(
      builder: (context, provider, child) {
        return ListView.builder(
          itemCount: provider.tasks.length,
          itemBuilder: (context, index) {
            return Task_Tile(
              task_name: provider.tasks[index],
            );
          },
        );
      },
    );
  }
}
