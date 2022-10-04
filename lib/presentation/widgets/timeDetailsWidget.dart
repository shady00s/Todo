import 'package:flutter/material.dart';
import 'package:todo_app_with_bloc/presentation/widgets/taskDetailCard.dart';

class TimeListWidget extends StatelessWidget {
  const TimeListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {return const TimeWidget();  },
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              // time shape
              SizedBox(
                height: 95,
                width: 90,
                child:  Stack(
                children: [
                 // line
                const  Positioned(
                    top: 4,
                    left: 7,
                    child: DecoratedBox(
                        decoration:
                        BoxDecoration(color: Color.fromRGBO(12, 12, 12, 1)),
                        child: SizedBox(
                          height: 85,
                          width: 2,
                        )),
                  ),

                  // start hour

                  Positioned(
                    top: 0,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text('13:00AM'),
                        )
                      ],
                    ),
                  ),

                  // finish hour
                  Positioned(
                    bottom: 0,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text('13:00AM'),
                        )
                      ],
                    ),
                  ),
                ],
              ),),

              // task card
              const TaskDetailCard()

            ],
          ),

        ],
      ),
    );
  }
}
