import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';
import 'package:halol_farm/code/widget/contaiener_buttom.dart';
import 'package:halol_farm/screens/home_page/widget/error_buy_container.dart';
import 'package:halol_farm/screens/home_page/widget/harid_appbar.dart';
import 'package:halol_farm/screens/home_page/widget/my_balans_container.dart';

class HaridPage extends StatelessWidget {
  const HaridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          HaridAppBar(name: "Yemish xarid qilish"),
          Container(
            height: getHeight(280),
            width: getWidth(375),
            padding: EdgeInsets.all(getWidth(20)),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/bugdoy.png")),
            ),
            child: const MyBalanContainer(),
          ),
          Padding(
            padding: EdgeInsets.all(getWidth(20)),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Bug’doy",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getWidth(20),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "1 800 so’m",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getWidth(24),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: getHeight(28)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myContainer(
                          name: Icon(
                            Icons.remove,
                            size: getWidth(30),
                            color: Colors.black,
                          ),
                          width: 70.0,
                        ),
                        myContainer(
                            name: Text(
                              "5 kg",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: getWidth(18),
                              ),
                            ),
                            width: 163.0),
                        myContainer(
                          name: Icon(
                            Icons.add,
                            size: getWidth(30),
                            color: Colors.black,
                          ),
                          width: 70.0,
                        ),
                      ],
                    ),
                    SizedBox(height: getHeight(12)),
                    Text(
                      "1 kg bug’doy 4 kunga yetadi",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: getWidth(14),
                      ),
                    ),
                    SizedBox(height: getHeight(16)),
                    Row(
                      children: [
                        Text(
                          "Umumiy narx",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: getWidth(15),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "9 000 so’m",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getWidth(20),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    ContainerButton(
                      top: getHeight(50),
                      name: "Sotib olish",
                      onTap: (){
                        Navigator.pushNamed(context, '/harid_tas',arguments: ["5 kg bug’doy 9 000 so’mga muvaffaqiyatli xarid qilindi","Buncha bug’doy hayvoningiz uchun 4 kunga yetadi"]);
                      },
                    ),
                  ],
                ),
                const ErrorBuyContainer(),
              ],
              alignment: AlignmentDirectional.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }

  Container myContainer({required name, required width}) {
    return Container(
      height: getHeight(50),
      width: getWidth(width),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: name,
      ),
    );
  }
}
