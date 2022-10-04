import 'package:flutter/material.dart';
import 'package:todo_app_with_bloc/presentation/pages/addTaskPage.dart';
import 'package:todo_app_with_bloc/presentation/pages/homeScreen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {

  bool isSelected1 = true;
  bool isSelected2 = false;

 static const activeColor = Color.fromRGBO(96, 148, 247,1);
 static const notActiveColor = Color.fromRGBO(217, 217, 217,1);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Stack(
        children: [
          Positioned(
              bottom:0,
              left: 0,
              right: 0,

              child: Card(
                margin: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 24),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));

                        setState(() {
                          isSelected1 = true;
                          isSelected2 = false;
                        });
                      },

                      icon:  Icon(Icons.home_filled,color: !isSelected1  ? notActiveColor:activeColor ,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 24),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            isSelected1 = false;
                            isSelected2 = true;
                          });
                        },
                        icon:  Icon(Icons.account_circle,color: !isSelected2  ? notActiveColor:activeColor ,)),
                  ),
                ],
              ))),

          // add new task button
          Positioned(
              left:MediaQuery.of(context).size.width *0.41,
              top: 0,
              child:  Card(
                color: Colors.black,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddTaskPage()));

                  },
                  child:const Padding(
                    padding: EdgeInsets.all(18),
                    child: Icon(Icons.add,color: Colors.white,size: 25,),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
