import 'package:flutter/material.dart';
import 'package:todo_app_with_bloc/presentation/widgets/widgetLogic.dart';
import 'package:todo_app_with_bloc/styleManager/textStyleManager.dart';


List<String> _days = ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'];


class CalenderWidget extends StatefulWidget {
  const CalenderWidget({Key? key}) : super(key: key);

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  List<int> numbers = [];
  @override
  void initState() {
      numbers = calender();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: _days.length,
        itemBuilder: (context,index){
      return  CalenderDaysWidget(week: _days[index],monthDay:numbers[index].toString(),bkColor:dayOfTheWeek  == index ? const Color.fromRGBO(246, 246, 246,1) : const Color.fromRGBO(255, 255, 255,1));
    });
  }
}



class CalenderDaysWidget extends StatefulWidget {
  const CalenderDaysWidget({Key? key,required this.week,required this.monthDay,required this.bkColor}) : super(key: key);
  final String week;
  final String monthDay;
  final Color bkColor;

  @override
  State<CalenderDaysWidget> createState() => _CalenderDaysWidgetState();
}

class _CalenderDaysWidgetState extends State<CalenderDaysWidget> {
  late Color backGround;
  @override
  void initState() {
     backGround = widget.bkColor;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: MediaQuery.of(context).size.width /7.50,

      child: Card(
        elevation: 0,
        color: backGround,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: (){
            setState(() {

              backGround =   const Color.fromRGBO(246, 246, 246,1) ;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.week,style: TextManager.calenderDayStyle,),
                Text( widget.monthDay.toString() ,style: TextManager.calenderNumberStyle,)
              ],
          ),
        ),
      ),
    );
  }
}



