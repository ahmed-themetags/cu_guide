import 'package:cu_guide/data/static_data.dart';
import 'package:flutter/material.dart';

class DepartmentTabScreen extends StatelessWidget {
  const DepartmentTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Chittagong University',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            const Text(
              'Departments',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: staticDepartments.length,
                itemBuilder: (context, index) {
                  final dept = staticDepartments[index];
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.school),
                      title: Text(dept.name),
                      subtitle: dept.description != null
                          ? Text(dept.description!)
                          : null,
                    ),
                  );
                },
              ),
            ),
          ],
        )
    );
  }
}
