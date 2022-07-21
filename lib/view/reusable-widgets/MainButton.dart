import 'package:flutter/material.dart';
class MainButton extends StatelessWidget {


  const MainButton({Key? key ,required this.FontSize ,required this.text,required this.onPressed}) : super(key: key);
  final double FontSize;
  final String text;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      color: Colors.indigo,
      textColor: Colors.white,
      onPressed: onPressed,
      child: Text(text,style: TextStyle(fontSize: FontSize),),
    );
  }
}
