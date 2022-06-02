import 'package:flutter/material.dart';
class MainButton extends StatelessWidget {
  const MainButton({Key? key ,required this.FontSize}) : super(key: key);
  final double FontSize;
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      color: Colors.deepPurple,
      textColor: Colors.white,
      onPressed: (){},
      child: Text("Log-in",style: TextStyle(fontSize: FontSize),),
    );
  }
}
