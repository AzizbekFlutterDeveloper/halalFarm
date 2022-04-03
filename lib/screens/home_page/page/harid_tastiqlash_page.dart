import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';
import 'package:halol_farm/code/widget/contaiener_buttom.dart';
import 'package:halol_farm/screens/home_page/widget/harid_appbar.dart';

class HaridTastiqlashPage extends StatelessWidget {
  final List? name;
  const HaridTastiqlashPage({ Key? key,required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HaridAppBar(name: "Yemish xarid qilish"),
          SizedBox(height: getHeight(144)),
          SizedBox(
            height: getHeight(80),
            width: getHeight(80),
            child: Image.asset("assets/image/Frame 33939.png",fit: BoxFit.cover,),
          ),
          SizedBox(height: getHeight(24)),
          SizedBox(
            height: getHeight(60),
            width: getWidth(335),
            child: Center(
              child: AutoSizeText(name![0] ?? "",
              textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getWidth(22),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: getHeight(40),
            width: getWidth(335),
            child: Center(
              child: AutoSizeText(name![1] ?? "",
              textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: getWidth(16),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          ContainerButton(
            top: getHeight(165),
            name: "Yopish",
            onTap: (){
              Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}