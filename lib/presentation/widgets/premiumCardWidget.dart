import 'package:flutter/material.dart';

class PremiumCardWidget extends StatelessWidget {
  const PremiumCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: Colors.black,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:   [
               const Expanded(
                child: Padding(
                  padding:EdgeInsets.all(15.0),
                  child: ListTile(
                    leading:CircleAvatar(radius: 18,backgroundColor: Color.fromRGBO(66, 67, 71,1), child: Icon(Icons.star_rounded ,size: 18,),),
                    title:Text('Go Premium!',style: TextStyle(color: Colors.white,fontFamily: 'MontserratBold'),),

                    subtitle: Text('Get unlimited access to all our features!',style: TextStyle(color: Colors.grey,fontFamily: 'MontserratThin'),),


                  ),
                ),
              ),Card(
                margin: EdgeInsets.zero,
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                color: const Color.fromRGBO(96, 148, 247,1),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(Icons.arrow_forward,color: Colors.white,size: 16,),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
