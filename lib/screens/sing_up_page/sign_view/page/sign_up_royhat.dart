import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';
import 'package:halol_farm/code/widget/app_bar.dart';
import 'package:halol_farm/code/widget/contaiener_buttom.dart';
import 'package:halol_farm/screens/sing_up_page/sign_view/widget/container_apple.dart';
import 'package:halol_farm/screens/sing_up_page/sign_view/widget/textformfild_widget.dart';

class SignUpRoyhat extends StatelessWidget {
  const SignUpRoyhat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(getWidth(16)),
        child: Column(
          children: [
            SizedBox(height: getHeight(30),width: getHeight(375)),
            MyAppBar(
              title: "royhatdan_otish".tr(),
            ),
            SizedBox(height: getHeight(50)),
            const MyCupertinoTextFrom(
              hintText: "To’liq ism-familiyangiz",
            ),
            Divider(endIndent: getHeight(3)),
            SizedBox(height: getHeight(41)),
            const MyCupertinoTextFrom(
              hintText: "Tug’ilgan sanangiz",
            ),
            Divider(endIndent: getHeight(3)),
            SizedBox(height: getHeight(41)),
            const MyCupertinoTextFrom(
              hintText: "Telefon raqamingiz",
            ),
            Divider(endIndent:  getHeight(3)),
            SizedBox(height: getHeight(80)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: getHeight(1),
                  width: getHeight(79),
                  color: Colors.grey,
                ),
                Text("Ijtimoiy tarmoqlar orqali",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: getWidth(13),
                  ),
                ),
                 Container(
                  height: getHeight(1),
                  width: getHeight(79),
                  color: Colors.grey,
                ),
              ],
            ),
            ContainerButton(
              top: getHeight(24),
              color: const Color(0xffF2F1F7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: getHeight(33),width: getWidth(33),child: Image.asset("assets/image/google.png"),),
                  SizedBox(width: getWidth(10)),
                  Text("Google",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getWidth(17)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getHeight(12)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ContainerApple(
                  image: "assets/image/Vector (1).png",
                  name: "Apple",
                ),
                ContainerApple(image: "assets/image/Vector (2).png", name: "Facebook",)
              ],
            ),
            ContainerButton(
              top: getHeight(20),
              name: "next".tr(),
            ),
          ],
        ),
      ),
    );
  }
}