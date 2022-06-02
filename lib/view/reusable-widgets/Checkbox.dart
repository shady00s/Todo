import 'package:flutter/material.dart';
class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({Key? key}) : super(key: key);

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Checkbox(
        activeColor:  Colors.deepPurple,
        
        value: true,
        onChanged: (bool? val){
          setState(() {

          });
        },
      ),
    );
  }
}
