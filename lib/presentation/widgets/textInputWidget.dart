import 'package:flutter/material.dart';
class TextInputWidget extends StatefulWidget {
  const TextInputWidget({Key? key,required this.hintText,required this.keyboardType}) : super(key: key);
  final String hintText;

  final TextInputType keyboardType;
  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 10),child: TextFormField(
     keyboardType: widget.keyboardType,

      decoration: InputDecoration(

        hintText: widget.hintText,
        border:UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey[500]!))
      ),

    ),);
  }
}
