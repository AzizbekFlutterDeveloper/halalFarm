import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halol_farm/screens/lang_page/lang_bloc/lang_cubit.dart';
import 'package:halol_farm/screens/lang_page/lang_view/page/on_boarding_page.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LangBloc(),
      child: BlocConsumer<LangBloc, LangState>(
        listener: (context, state) {},
        builder: (context,state){
          return OnBoardingPage();
        },
      ),
    );
  }
}