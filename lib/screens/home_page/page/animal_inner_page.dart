import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/code/constans/size_config.dart';
import 'package:halol_farm/code/widget/app_bar.dart';
import 'package:halol_farm/screens/home_page/widget/buttom_dori_.dart';
import 'package:halol_farm/screens/home_page/widget/chip_container.dart';

class AnimalInnerPage extends StatelessWidget {
  const AnimalInnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: getHeight(350),
              width: getWidth(375),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/animal pic.png")),
              ),
              child: Column(
                children: [
                  Container(
                    height: getHeight(30),
                    color: Colors.black.withOpacity(0.4),
                  ),
                  MyAppBar(
                    title: "Hisori qo’y (№365)",
                    color: Colors.black.withOpacity(0.4),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: getWidth(18),
                      fontWeight: FontWeight.w600,
                    ),
                    iconColor: Colors.white,
                    trailing: TextButton(
                      child: Icon(
                        Icons.video_call_outlined,
                        size: getWidth(30),
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(getWidth(20)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: getHeight(16),
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: getHeight(74),
                        width: getWidth(287),
                        child: AutoSizeText(
                          "Qo’ylar orasida oq mushak kasalligi tarqayapti. ",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: getWidth(17),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ButtomDori(),
                  Row(
                    children: [
                      ChipContainer(
                        icon: SvgPicture.asset(
                            "assets/icon/Vector.svg"),
                        text: "8 oylik",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
