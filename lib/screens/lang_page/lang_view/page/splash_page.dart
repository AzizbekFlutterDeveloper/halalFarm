import 'package:flutter/cupertino.dart';
import 'package:halol_farm/code/constans/colors_consts.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: ConsColors.green,
        child: Center(
          child: SizedBox(
            height: getHeight(39),
            width: getWidth(126),
            child: Image.asset("assets/image/halalForm.png"),
          ),
        ),
      ),
    );
  }
}