import 'package:flutter/material.dart';
import 'package:todo/view/HomePage.dart';
import 'package:todo/view/reusable-widgets/Checkbox.dart';
import 'package:todo/view/reusable-widgets/MainButton.dart';
import 'package:todo/view/reusable-widgets/TextInput.dart';
// text controllers
TextEditingController userName = TextEditingController();
TextEditingController password = TextEditingController();
GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
            Expanded(

              child: SingleChildScrollView(
                child: Column(

                  children: [
                    Image(height: 260, image: NetworkImage('https://img.freepik.com/free-vector/bank-login-concept-illustration_114360-7964.jpg?w=2000')),

                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextInput(controller: userName, prefix: Icon(Icons.person), label: 'User name:', isPassword: false,validator:(value){
                            if (value == null || value.isEmpty) {
                              return 'Please enter username';
                            }
                            return null;
                          },),


                          const  SizedBox(
                            height: 80,
                          ),
                          TextInput(controller: password, prefix: Icon(Icons.password_rounded), label: 'Password', isPassword: true,validator: (value){
                            if (value == null || value.isEmpty) {
                                  return 'Please enter password';
                                    }
                            else if(value.length <6){
                              return 'password must exceed 6 characters';
                            }
                                return null;
    },
                          ),



                          Row(
                            children: [
                              CheckboxWidget(),
                              Text("Remember me?")
                            ],
                          ),
                          SizedBox(  width:240,child: MainButton(FontSize: 24,text: "Log-in", onPressed:(){

                            if(_formKey.currentState!.validate()){
                              Navigator.push(context, MaterialPageRoute(builder: (context){return HomePageScreen();}));
                            }

                          }))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),


            

          ],
        ),
      ),
    );
  }
}
