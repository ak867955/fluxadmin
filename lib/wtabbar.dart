import 'package:adminfluxapp/clist.dart';
import 'package:adminfluxapp/cusers.dart';
import 'package:adminfluxapp/drawer.dart';
import 'package:adminfluxapp/wfreelancers.dart';
import 'package:adminfluxapp/wusers.dart';
import 'package:flutter/material.dart';
 
class wtabbar extends StatefulWidget {
  const wtabbar({super.key});

  @override
  State<wtabbar> createState() => _ChannelsState();
}

class _ChannelsState extends State<wtabbar> {
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
                child: Text("Worknow Users"),
              ),
              Tab(
                child: Text("Worknow Freelancers"),
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
            wusers(), // Use the AllChannels widget directly
            wfreelancers(), // Use the MyChannels widget directly
          ],
        ),
      ),
    );
  }
}
