import 'package:flutter/material.dart';

import '../../../featureds/splash/presentation/views/splash_view.dart';

class AppRoutes {

    static Route<dynamic>? onGenerateRoute(RouteSettings setting){
   
switch(setting.name){

    case SplashView.routeName : 
    return MaterialPageRoute(builder: (context) => const SplashView());


    default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    
}
    }
}