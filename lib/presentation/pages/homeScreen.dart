import 'package:flutter/material.dart';
import '../../styleManager/textStyleManager.dart';
import '../widgets/appBar.dart';
import '../widgets/bottomNavigationBar.dart';
import '../widgets/premiumCardWidget.dart';
import '../widgets/taskCardBody.dart';


  const appBar =  AppBarWidget();
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar  ,
      body: TweenAnimationBuilder(
          duration: const Duration(milliseconds: 300),

          tween:Tween<double>(begin: 0,end: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  const [

            PremiumCardWidget(),

            Padding(
              padding:EdgeInsets.all(15.0),
              child: Text('Tasks',style: TextManager.titleStyle),

            ),

            Expanded(child: TaskList()),
            BottomNavigationBarWidget()
          ],
        ),
        builder: ( BuildContext context, double _val, Widget? child){
            return Opacity(opacity: _val , child:  child,);
        },
      ),
    );
  }
}
