import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo/view/reusable-widgets/MainButton.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: IconButton(
              color: Colors.black, icon: Icon(Icons.menu), onPressed: () {}),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: IconButton(
                color: Colors.black, icon: Icon(Icons.menu), onPressed: () {}),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Hello, ",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 28,
                      color: Colors.black26,
                      fontFamily: "Nunito"),
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "Shady!",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                  ),
                )
              ],
            ),
            Text("Have a nice day!. ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black26,
                    fontFamily: "Nunito")),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainButton(FontSize: 14 , text: "Work",),
                MainButton(FontSize: 14 ,text: "Appointment",),
                MainButton(FontSize: 14,text: "Assignment",),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Nearby events",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.black,
                  fontFamily: "Nunito"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 210,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.indigo,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Icon(Icons.date_range),
                                      ),
                                      Text("Tuesday,12 feb ,2022",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "Nunito",
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              overflow: TextOverflow.ellipsis)),
                                    ],
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  width: 180,
                                  child: Text("Web development assignment ",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontFamily: "Nunito",
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          overflow: TextOverflow.clip))),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ),
                                    Text("Done",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "Nunito",
                                            color: Colors.white))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "All events",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.black,
                  fontFamily: "Nunito"),
            ),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.note,
                          color: Colors.indigo,
                        ),
                        SizedBox(
                          width: 160,
                          child: Text(
                            "Web development assignment",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                overflow: TextOverflow.fade,
                                color: Colors.black,
                                fontFamily: "Nunito"),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Done",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                  fontFamily: "Nunito"),
                            ))
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
