import 'package:adminfluxapp/chats.dart';
import 'package:adminfluxapp/ctabbar.dart';
import 'package:adminfluxapp/dtabbar.dart';
import 'package:adminfluxapp/login.dart';
import 'package:adminfluxapp/stabbar.dart';
import 'package:adminfluxapp/wtabbar.dart';
import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16,
      child: ListView(
        children: [
          ListTile(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => dtabbar())),
            leading: IconButton(
              onPressed: null, // Remove the redundant onPressed from IconButton
              icon: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Dashboard",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.black,
          ),
          ListTile(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => chats())),
            leading: IconButton(
              onPressed: null, // Remove the redundant onPressed from IconButton
              icon: Icon(
                Icons.chat_sharp,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Chats",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.black,
          ),
          ListTile(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => ctabbar())),
            leading: IconButton(
              onPressed: null, // Remove the redundant onPressed from IconButton
              icon: Icon(
                Icons.people_alt_sharp,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Channels",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.black,
          ),
          ListTile(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => wtabbar())),
            leading: IconButton(
              onPressed: null, // Remove the redundant onPressed from IconButton
              icon: Icon(
                Icons.work,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Worknow",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.black,
          ),
          ListTile(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => stabbar())),
            leading: IconButton(
              onPressed: null, // Remove the redundant onPressed from IconButton
              icon: Icon(
                Icons.cleaning_services,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Services",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.black,
          ),
          ListTile(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login())),
            leading: IconButton(
              onPressed: null, // Remove the redundant onPressed from IconButton
              icon: Icon(
                Icons.logout_outlined,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Log Out",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
