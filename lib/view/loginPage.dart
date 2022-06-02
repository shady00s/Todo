import 'package:flutter/material.dart';
import 'package:todo/view/reusable-widgets/Checkbox.dart';
import 'package:todo/view/reusable-widgets/MainButton.dart';
import 'package:todo/view/reusable-widgets/TextInput.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [

            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Log-in",
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const  SizedBox(
              height: 50,
            ),

            SizedBox(
              height: 260,
              child: Column(
                children: [
                  const  TextInput(),

                  const  SizedBox(
                    height: 50,
                  ),
                  TextInput(),


                  Row(
                    children: [
                      CheckboxWidget(),
                      Text("Remember me?")
                    ],
                  ),

                ],
              ),
            ),

            Expanded(child: MainButton(FontSize: 24,text: "Log-in",))
            

          ],
        ),
      ),
    );
  }
}
