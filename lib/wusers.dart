import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class wusers extends StatelessWidget {
  const wusers({super.key});

  @override
  Widget build(BuildContext context) {
    final users = [
      // Replace with your actual user data
      {
        'name': 'John Doe',
        'email': 'john.doe@example.com',
        'joinedDate': '2024-04-10',
        'isActive': true
      },
      {
        'name': 'Jane Smith',
        'email': 'jane.smith@example.com',
        'joinedDate': '2024-04-15',
        'isActive': false
      },
      // ... add more user data entries
    ];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          SizedBox(
            width: 900,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 3),
                ),
                label: Text(
                  "Search",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: DataTable(
              columns: const [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Email')),
                DataColumn(label: Text('Joined Date')),
                DataColumn(label: Text('Status')),
              ],
              rows: users.map((user) => _createUserDataRow(user)).toList(),
            ),
          ),
        ],
      ),
    );
  }

  DataRow _createUserDataRow(Map<String, dynamic> user) {
    final isActive = user['isActive'] as bool;
    return DataRow(
      cells: [
        DataCell(Text(user['name'] as String)),
        DataCell(Text(user['email'] as String)),
        DataCell(Text(user['joinedDate'] as String)),
        DataCell(
          Text(isActive ? 'Active' : 'Inactive'),
        ),
      ],
    );
  }
}
