import 'package:flutter/material.dart';

class ScheduleDetails extends StatelessWidget {
  final schedule;

  const ScheduleDetails(this.schedule,{super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue[600],
        title: Row(
          children: [
            Text(
                schedule?.subtitle,
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )
            ),
            SizedBox(width: 10),
            Text('-'),
            const SizedBox(width: 8),
            Text(
              schedule?.title,
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: schedule?.schedules.length,
          itemBuilder: (context, index) {
            final item = schedule?.schedules[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
              elevation: 1,
              child: ListTile(
                title: Text(item),
                // subtitle: Text(schedule?.title),
                trailing: Icon(
                    Icons.train,
                  color: Colors.green,
                ),
              ),
            );
          },
        ),
      )
    );
  }
}
