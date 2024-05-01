import 'package:adminfluxapp/clist.dart';
import 'package:adminfluxapp/cusers.dart';
import 'package:adminfluxapp/drawer.dart';
import 'package:flutter/material.dart';

class ctabbar extends StatefulWidget {
  const ctabbar({super.key});

  @override
  State<ctabbar> createState() => _ChannelsState();
}

class _ChannelsState extends State<ctabbar> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: drawer(),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("Channel List"),
              ),
              Tab(
                child: Text("Channel Users"),
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
            clist(), // Use the AllChannels widget directly
            cusers(), // Use the MyChannels widget directly
          ],
        ),
      ),
    );
  }
}
