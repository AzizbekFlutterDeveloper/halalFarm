import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halol_farm/screens/lang_page/lang_bloc/lang_cubit.dart';
import 'package:halol_farm/screens/lang_page/lang_view/page/language_page.dart';
import 'package:halol_farm/screens/lang_page/lang_view/page/splash_page.dart';

class LangPage extends StatelessWidget {
  const LangPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LangBloc(),
      child: BlocConsumer<LangBloc,LangState>(
        listener: (context, state) {
          if(state is LangInitial){
             const SplashPage();
          }
        },
        builder: (context,state){
          return const LanguagePage();
        },
      ),
    );
  }
}
