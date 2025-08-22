import 'package:cu_guide/data/static_data.dart';
import 'package:cu_guide/features/departments/model/department_model.dart';
import 'package:flutter/material.dart';
class DepartmentScreen extends StatelessWidget {
  const DepartmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🚀 CU Guide – Chittagong University Companion'),
      ),
      body: Padding(
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
                      // leading: dept.iconUrl != null
                      //     ? Image.asset(dept.iconUrl!, width: 40, height: 40)
                      //     : const Icon(Icons.school),
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
      ),
    );
  }

  static Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, height: 1.4),
      ),
    );
  }
}

