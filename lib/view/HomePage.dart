import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo/view/reusable-widgets/MainButton.dart';
import 'package:todo/view/reusable-widgets/TextInput.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

// text controllers
TextEditingController noteTitle = TextEditingController();
TextEditingController noteBody = TextEditingController();
TextEditingController noteCreatedDate = TextEditingController();

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 180,
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Todo.",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      fontFamily: "Nunito",
                      color: Colors.black),
                )
              ],
            )),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 32.0),
              child: MaterialButton(
                onPressed: () {},
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(56, 54, 30, 196),
                            foregroundColor: Colors.white,
                            radius: 15,
                            child: Icon(
                              Icons.person,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Shady",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: "Nunito"))
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
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
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainButton(
                  FontSize: 14,
                  text: "Work",
                ),
                MainButton(
                  FontSize: 14,
                  text: "Appointment",
                ),
                MainButton(
                  FontSize: 14,
                  text: "Assignment",
                ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All events",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: "Nunito"),
                ),
                MaterialButton(
                  elevation: 0,
                  color: Color.fromARGB(176, 63, 61, 181),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text("Add event",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Nunito",
                              color: Colors.white))
                    ],
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: EdgeInsets.only(
                                top: 12.0,
                                left: 12.0,
                                right: 12.0,
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Text(
                                    "Add new note",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontFamily: "Nunito"),
                                  ),
                                ),
                                TextInput(
                                  controller: noteTitle,
                                  prefix: Icon(Icons.drive_file_rename_outline),
                                  label: 'Note title',
                                  isPassword: false,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextInput(
                                  controller: noteBody,
                                  prefix: Icon(Icons.note_alt_outlined),
                                  label: 'Content',
                                  isPassword: false,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextInput(
                                  controller: noteCreatedDate,
                                  prefix: Icon(Icons.date_range_rounded),
                                  label: 'Date',
                                  isPassword: false,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: 240,
                                    child: MainButton(
                                      text: "Add",
                                      FontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          );
                        });
                  },
                )
              ],
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
