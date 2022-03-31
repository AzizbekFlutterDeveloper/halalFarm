import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/colors_consts.dart';
import 'package:halol_farm/code/constans/size_config.dart';
import 'package:halol_farm/code/widget/contaiener_buttom.dart';

class SignUpKirish extends StatelessWidget {
  const SignUpKirish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/image/backFon.jpg")),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: ConsColors.green.withOpacity(0.95),
          child: Padding(
            padding: EdgeInsets.all(getWidth(16)),
            child: Column(
              children: [
                SizedBox(height: getHeight(25),width: getWidth(375)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                      }, 
                      child: Text("Skip",
                        style: TextStyle(
                          fontSize: getHeight(17),
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getHeight(60),
                  width: getWidth(200),
                  child: Image.asset("assets/image/halalForm.png",fit: BoxFit.fitWidth,),
                ),
                SizedBox(height: getHeight(81)),
                SizedBox(
                  height: getHeight(92),
                  width: getWidth(343),
                  child: AutoSizeText(
                    "chorva_hayvonlarini_only_boqish".tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getHeight(36),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(72),
                  width: getWidth(343),
                  child: AutoSizeText(
                    "xuddi_my_tom_ga".tr(),
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: getHeight(16),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ContainerButton(
                  top: getHeight(135),
                  bottom: getHeight(30),
                  color: Colors.white,
                  name: "royhatdan_otish".tr(),
                  textColor: Colors.black,
                  onTap: (){
                    Navigator.pushNamed(context, '/sign_up_2');
                  },
                ),
                TextButton(
                  onPressed: (){}, 
                  child: Text("akaunt_orqali".tr(),
                    style: TextStyle(
                      fontSize: getHeight(17),
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
