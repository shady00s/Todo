import 'package:flutter/material.dart';

class ChooseColorWidget extends StatelessWidget {
  const ChooseColorWidget({super.key,required this.color}) ;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
        color: color,
          borderRadius: BorderRadius.circular(12)

      ),
        child: SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.20,
          child: InkWell(
            borderRadius: BorderRadius.circular(12),

            onTap: (){


            },),
        ),

      ),
    );
  }
}
