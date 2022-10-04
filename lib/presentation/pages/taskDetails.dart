import 'package:flutter/material.dart';
import 'package:todo_app_with_bloc/presentation/widgets/bottomNavigationBar.dart';
import 'package:todo_app_with_bloc/presentation/widgets/timeDetailsWidget.dart';
import 'package:todo_app_with_bloc/styleManager/textStyleManager.dart';

import '../widgets/calenderWidget.dart';
class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({Key? key,required this.taskName}) : super(key: key);
  final String? taskName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [

          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.black,
                expandedHeight: 100.0,
                title: Text('${taskName!} tasks',style: TextManager.titleStyle,),


                pinned: true,
                floating: true,
                snap: true,

              ),
              //main body
              SliverToBoxAdapter(
                child: Card(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(21),topLeft: Radius.circular(21))),
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            height: 80,
                            width: MediaQuery.of(context).size.width, child: const CalenderWidget()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0,left: 10,right: 10),
                        child: Row(
                          children: const [
                            Text("Tasks ",style: TextManager.titleStyle,)
                          ],
                        ),
                      ),


                      const TimeListWidget(),
                     const SizedBox(height: 90,)
                    ],
                  ),
                ),
              ),

            ],
          )
        ,

         const Positioned(
              bottom:0,
              child:  BottomNavigationBarWidget())
        ],

      ),

    );
  }
}
