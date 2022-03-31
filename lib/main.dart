import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:halol_farm/code/constans/colors_consts.dart';
import 'package:halol_farm/routers/my_routers.dart';
import 'package:halol_farm/screens/lang_page/lang_view/view/lang_viewt.dart';
import 'package:halol_farm/screens/sing_up_page/sign_view/page/sing_up_kirish.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale("en"),Locale("ru"),Locale("uz")],
      path: "assets/lang",
      fallbackLocale: const Locale('uz'),
      startLocale: const Locale('uz'),
      child:  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  
  final _forRouter = MyRouter();

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Halol Farm',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: CupertinoThemeData(primaryColor: ConsColors.green),
      initialRoute: '/lang',
      onGenerateRoute: _forRouter.getRoute,
      // home: SignUpKirish(),
    );
  }
}

