import 'package:flutter/material.dart';
import 'package:todo_app_with_bloc/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        
      ),
      onGenerateRoute: AppRouter().generateRoute,

    );
  }
}
