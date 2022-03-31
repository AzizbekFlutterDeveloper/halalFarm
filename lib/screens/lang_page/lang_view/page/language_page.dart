import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/colors_consts.dart';
import 'package:halol_farm/code/constans/size_config.dart';
import 'package:halol_farm/code/widget/contaiener_buttom.dart';
import 'package:halol_farm/screens/lang_page/lang_bloc/lang_cubit.dart';
import 'package:halol_farm/screens/lang_page/widget/lang_contanier_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LanguagePage extends StatelessWidget {
  const LanguagePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Padding(
        padding:  EdgeInsets.all(getWidth(16)),
        child: Column(
          children: [
            SizedBox(height: getHeight(89),width: getWidth(375)),
            SizedBox(
              height: getHeight(30),
              width: getWidth(100),
              child: Image.asset("assets/image/halaFarmblack.png"),
            ),
            SizedBox(height: getHeight(67)),
            Text('til_tanla'.tr(),
              style: TextStyle(
                fontSize: getHeight(26),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: getHeight(75),
              child: Text('til_t_sub'.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getHeight(14),
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            GestureDetector(
              child:  LangContainer(
                flag: "assets/image/uzbekistan 1.png",
                name: "O'zbek tili",
                topBorder: 30.0,
                border: context.watch<LangBloc>().isIndex == 0 ? ConsColors.green : null,
                color: context.watch<LangBloc>().isIndex == 0 ? Color(0xffDFF8E9) : null,
              ),
              onTap: (){
                context.setLocale(const Locale('uz'));
                context.read<LangBloc>().changeNAvBar(0);
              },
            ),
            GestureDetector(
              child:  LangContainer(
                flag: "assets/image/united-kingdom 1.png",
                name: "English",
                border: context.watch<LangBloc>().isIndex == 1 ? ConsColors.green : null,
                color: context.watch<LangBloc>().isIndex == 1 ? Color(0xffDFF8E9): null,
              ),
              onTap: (){
                context.setLocale(const Locale('en'));
                context.read<LangBloc>().changeNAvBar(1);
              },
            ),
            GestureDetector(
              child:  LangContainer(
                flag: "assets/image/russia 1.png",
                name: "Русский язык",
                bottomBorder: 30.0,
                border: context.watch<LangBloc>().isIndex == 2 ? ConsColors.green : null,
                color: context.watch<LangBloc>().isIndex == 2 ? Color(0xffDFF8E9): null,
              ),
              onTap: (){
                context.setLocale(const Locale('ru'));
                context.read<LangBloc>().changeNAvBar(2);
              },
            ),
            const Spacer(),
            ContainerButton(
              name: "next".tr(),
              onTap: (){
                Navigator.pushNamed(context, '/onboarding');
              },
            ),
          ],
        ),
      ),
    );
  }
}
