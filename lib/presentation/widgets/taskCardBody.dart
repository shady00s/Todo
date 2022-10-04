import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_with_bloc/presentation/pages/taskDetails.dart';
import 'package:todo_app_with_bloc/styleManager/textStyleManager.dart';

import '../../data/models/taskModel.dart';

class TaskCardBody extends StatelessWidget {
  const TaskCardBody({Key? key,required this.title,required this.left,required this.done, required this.bkColor,required this.cardIcon}) : super(key: key);

  final String?title;
  final int?left;
  final int?done;
  final Color?bkColor;
  final IconData?cardIcon;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),

        color:  bkColor,
      child:  InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TaskDetailsScreen(taskName: title)));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  Icon(cardIcon) ,
                 Text(title!,style: TextManager.titleStyle,),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child:  Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text("$left left"),
                    ),),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Padding(
                      padding: const EdgeInsets.all(9.0),

                      child: Text('$done done'),
                    ),)

                  ],
                )
              ],
            ),
        ),
      )
      ),
    );
  }
}

class NewTaskWidget extends StatelessWidget {
  const NewTaskWidget({Key? key,  this.title,this. cardIcon}) : super(key: key);
  final String? title;
  final IconData? cardIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(14),
        dashPattern:const[10,10],
        color: Colors.grey,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: (){},
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(cardIcon,size: 21,),
                Text(title!,style: TextManager.titleStyle,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


List<TaskCardModel> _list = [
  TaskCardModel(title: 'Personal', left: 21, done: 2, cardIcon:  Icons.account_circle_outlined, bkColor: const Color.fromRGBO(255, 247, 236,1), isLast: false, ),
  TaskCardModel(title: 'Work', left: 21, done: 2, cardIcon:  Icons.work_outline_rounded, bkColor: const Color.fromRGBO(237, 244, 254,1), isLast: false, ),
  TaskCardModel(title: 'Health', left: 21, done: 2, cardIcon:  Icons.favorite_border, bkColor: const Color.fromRGBO(249, 237, 237,1), isLast: false,),
  TaskCardModel(title: 'Add', left: 0, done: 0, cardIcon: Icons.add, bkColor: const Color.fromRGBO(255, 255, 255,1), isLast: true,)
];

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing:15 ,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
        ),
        itemCount: _list.length,
        itemBuilder: (context,index){
          return !_list[index].isLast!? TaskCardBody(title: _list[index].title, left: _list[index].left, done: _list[index].done, bkColor: _list[index].bkColor, cardIcon: _list[index].cardIcon,):NewTaskWidget(title: _list[index].title,cardIcon: _list[index].cardIcon,);
        });
  }
}
