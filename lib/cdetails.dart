import 'package:flutter/material.dart';


class cdetails extends StatelessWidget {
  cdetails({super.key});

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
      body: Column(
        children: [
          Text("Channel details",
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("assets/11369.jpg"),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: Text("View Users")),
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {}, child: Text("Remove Channel")),
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {}, child: Text("Block Channel")),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Technology and science"),
              SizedBox(height: 20),
              Text("Technology • 1.4K members • 1.2K online"),
              SizedBox(height: 20),
              Text("Created on 2023-05-19 ID: 1234567890"),
              SizedBox(height: 20),
            ],
          ),
          Spacer(),
          ElevatedButton(onPressed: () {}, child: Text("Save")),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
