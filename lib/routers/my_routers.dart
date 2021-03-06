import 'package:flutter/material.dart';
import 'package:halol_farm/screens/home_page/page/animal_inner_page.dart';
import 'package:halol_farm/screens/home_page/page/buttom_nav_bar.dart';
import 'package:halol_farm/screens/home_page/page/dori_harid_page.dart';
import 'package:halol_farm/screens/home_page/page/harid_page.dart';
import 'package:halol_farm/screens/home_page/page/harid_tastiqlash_page.dart';
import 'package:halol_farm/screens/home_page/page/home_page.dart';
import 'package:halol_farm/screens/lang_page/lang_view/page/splash_page.dart';
import 'package:halol_farm/screens/lang_page/lang_view/view/lang_viewt.dart';
import 'package:halol_farm/screens/lang_page/lang_view/view/onboardeng_view.dart';
import 'package:halol_farm/screens/sing_up_page/sign_view/page/sign_up_royhat.dart';
import 'package:halol_farm/screens/sing_up_page/sign_view/page/sing_up_kirish.dart';


class MyRouter{
  Route? getRoute(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case '/lang':
        return MaterialPageRoute(builder: (_) => const LangPage());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => const OnBoardView());
      case '/sign_up_2':
        return MaterialPageRoute(builder: (_) => const SignUpRoyhat());
      case '/sign_up_1':
        return MaterialPageRoute(builder: (_) => const SignUpKirish());
      case '/home':
        return MaterialPageRoute(builder: (_) => const BattomNavBar());
      case '/harid':
        return MaterialPageRoute(builder: (_) => const HaridPage());
      case '/harid_tas':
        return MaterialPageRoute(builder: (_) =>  HaridTastiqlashPage(name: (args as List),));
      case '/harid_dori':
        return MaterialPageRoute(builder: (_) => const DoriHaridPage());
       case '/animal_in':
        return MaterialPageRoute(builder: (_) => const AnimalInnerPage());
    }
    return null;
  }
}