import 'package:flutter/material.dart';
import 'package:todo_app_with_bloc/styleManager/textStyleManager.dart';
class TaskDetailCard extends StatelessWidget {
  const TaskDetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation:0,
        shape: const RoundedRectangleBorder(

          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12) ,bottomRight: Radius.circular(12),topRight: Radius.circular(12))
        ),
        child: SizedBox(
          height: 95,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),

                child: SizedBox(
                    width: MediaQuery.of(context).size.width - 30,
                    child: Text('dsdfgsdgdsgdfgsddgd',textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,style: TextManager.taskTitleStyle,)),
              ),

              Text('13:00PM - 133:00PM')
            ],
          ),
        ),
      ),
    );
  }
}
