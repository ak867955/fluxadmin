import 'package:adminfluxapp/chatuser.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final List<Map<String, dynamic>> orders = [
    {
      'date': '2024-04-12',
      'orderId': 'ORD1234',
      'earnings': '1000.00',
      'rating': 5,
    },
    {
      'date': '2024-04-18',
      'orderId': 'ORD5678',
      'earnings': '2500.50',
      'rating': 4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Flux Admin"),
        backgroundColor: Color.fromRGBO(8, 38, 76, 1),
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_outlined)),
        actions: [Text("FLUX")],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("User Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets\Ellipse 22.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Watson",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("watson@gmail.com"),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () => _showRemoveConfirmationDialog(context),
                             child: Text("Remove User")),
                        SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: () => _showSuspendConfirmationDialog(context),
                            child: Text("Suspend User")),
                        SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => cpage()));
                            }, child: Text("Chat With User")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Email"),
                    SizedBox(height: 10),
                    Text("watson@gmail.com"),
                  ],
                ),
                Column(
                  children: [
                    Text("Phone"),
                    SizedBox(height: 10),
                    Text("+91 6758532898"),
                  ],
                ),
                Column(
                  children: [
                    Text("Earnings"),
                    SizedBox(height: 10),
                    Text("545678 Rs"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text("Profile Description",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                    "This user is a regular customer who has placed three orders and has a positive rating.")
              ],
            ),
            SizedBox(height: 20),
            Text("Order History",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            DataTable(
              columns: const [
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Order ID')),
                DataColumn(label: Text('Earnings')),
                DataColumn(label: Text('Rating')),
              ],
              rows: orders.map((order) => _createOrderDataRow(order)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  DataRow _createOrderDataRow(Map<String, dynamic> order) {
    return DataRow(
      cells: [
        DataCell(Text(order['date'] as String)),
        DataCell(Text(order['orderId'] as String)),
        DataCell(Text(order['earnings'] as String)),
        DataCell(Text(order['rating'].toString())), // Convert rating to string
      ],
    );
  }

  void _showSuspendConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Suspend User Confirmation'),
        content: Text('Are you sure you want to suspend this user?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Handle user suspension logic here (e.g., API call)
              print('Suspending user...');
              Navigator.pop(context); // Close the dialog
            },
            child: Text('Suspend'),
          ),
        ],
      ),
    );
  }

  void _showRemoveConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Remove User Confirmation'),
        content: Text('Are you sure you want to remove this user?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Handle user suspension logic here (e.g., API call)
              print('Removing user...');
              Navigator.pop(context); // Close the dialog
            },
            child: Text('Remove'),
          ),
        ],
      ),
    );
  }
}
