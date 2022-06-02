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
        leading: Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed:(){}
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: IconButton(
                icon: Icon(Icons.menu),
                onPressed:(){}
            ),
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
                Text("Hello, ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 28 ,color: Colors.black26 ,fontFamily: "Nunito"),),
                SizedBox(width: 9,),
                Text("Shady!",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 32 ,),)
              ],
            ),
              Text("Have a nice day!. ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18 ,color: Colors.black26 ,fontFamily: "Nunito"))

            ,SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainButton(FontSize:14),

                MainButton(FontSize:14),
                MainButton(FontSize:14),
              ],
            )
          ],
        ),
      ),
    );
  }
}
