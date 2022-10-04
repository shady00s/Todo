import 'package:flutter/material.dart';


import 'package:todo_app_with_bloc/presentation/pages/homeScreen.dart';

class AppRouter{
    Route? generateRoute(RouteSettings settings){
        switch(settings.name){
            case'/':
                return MaterialPageRoute(builder: (_)=> const HomeScreen());


        }
        return null;
    }
    }