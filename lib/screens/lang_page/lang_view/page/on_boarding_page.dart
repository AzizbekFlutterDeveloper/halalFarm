import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halol_farm/code/constans/size_config.dart';
import 'package:halol_farm/code/data/data.dart';
import 'package:halol_farm/code/widget/contaiener_buttom.dart';
import 'package:halol_farm/screens/lang_page/lang_bloc/lang_cubit.dart';
import 'package:halol_farm/screens/lang_page/widget/image_contanier.dart';


class OnBoardingPage  extends StatelessWidget{
  OnBoardingPage({ Key? key }) : super(key: key);
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: getHeight(400),
            child: PageView(
              controller: _pageController,
              onPageChanged: (v){
                context.read<LangBloc>().pageView(v);
              },
              children: [
                for(var item in onBoarding) 
                ImageContainer(
                  image: item['img'],
                  leftBorder: context.read<LangBloc>().tapIndex == 0? 50.0 : 0,
                  rightBorder: context.read<LangBloc>().tapIndex == 2? 50.0 : 0,
                ),
              ],
            ),
          ),
          SizedBox(height: getHeight(32)),
          SizedBox(
            height: getHeight(68),
            width: getWidth(343),
            child: AutoSizeText(
              "${onBoarding[context.watch<LangBloc>().tapIndex]['name']}".tr(),
              style: TextStyle(
                color: Colors.black,
                fontSize: getHeight(26),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: getHeight(32)),
          Center(
            child: SizedBox(
              height: getHeight(8),
              width: getWidth(40),
              child: Image.asset(onBoarding[BlocProvider.of<LangBloc>(context, listen: false).tapIndex]['circle']),
            )
          ),
          SizedBox(height: getHeight(55)),
          ContainerButton(
            name: "next".tr(),
            color: context.watch<LangBloc>().tapIndex < 2 ? Color(0xffCFD0CF) : null,
            onTap: context.watch<LangBloc>().tapIndex < 2 ? null : () {
              Navigator.pushNamedAndRemoveUntil(context, '/sign_up_1', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
