import 'package:adminfluxapp/drawer.dart';
import 'package:adminfluxapp/feedback.dart';
import 'package:adminfluxapp/overview.dart';
import 'package:adminfluxapp/performance.dart';
import 'package:adminfluxapp/users.dart';
import 'package:flutter/material.dart';

class dtabbar extends StatefulWidget {
  const dtabbar({super.key});

  @override 
  State<dtabbar> createState() => _ChannelsState();
}

class _ChannelsState extends State<dtabbar> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: drawer(),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("Overview"),
              ),
              Tab(
                child: Text("Users"),
              ),
              Tab(
                child: Text("Fedback"),
              ),
              Tab(
                child: Text("Performance"),
              ),
            ],
          ),
          title: Text("FLUX"),
          backgroundColor: Color.fromRGBO(8, 38, 76, 1),
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu),
            ),
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            overview(), // Use the AllChannels widget directly
            users(), // Use the MyChannels widget directly
            feedback(),
            performance(),
          ],
        ),
      ),
    );
  }
}
