import 'package:adminfluxapp/drawer.dart';
import 'package:adminfluxapp/feedback.dart';
import 'package:adminfluxapp/overview.dart';
import 'package:adminfluxapp/performance.dart';
import 'package:adminfluxapp/sproviders.dart';
import 'package:adminfluxapp/susers.dart';
import 'package:adminfluxapp/users.dart';
import 'package:flutter/material.dart';

class stabbar extends StatefulWidget {
  const stabbar({super.key});

  @override
  State<stabbar> createState() => _ChannelsState();
}

class _ChannelsState extends State<stabbar> {
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
                child: Text("Service Users"),
              ),
              Tab(
                child: Text("Service Providers"),
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
            susers(), // Use the AllChannels widget directly
            sproviders(), // Use the MyChannels widget directly
          ],
        ),
      ),
    );
  }
}
