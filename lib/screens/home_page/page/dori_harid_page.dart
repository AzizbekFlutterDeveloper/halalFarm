import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';
import 'package:halol_farm/code/widget/contaiener_buttom.dart';
import 'package:halol_farm/screens/home_page/widget/harid_appbar.dart';
import 'package:halol_farm/screens/home_page/widget/my_balans_container.dart';

class DoriHaridPage extends StatelessWidget {
  const DoriHaridPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          HaridAppBar(name: "Dori xarid qilish"),
          Container(
            height: getHeight(280),
            width: getHeight(375),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/Rectangle 5630.png")
              ),
            ),
            child: Padding(
              padding:  EdgeInsets.all(getHeight(20)),
              child: MyBalanContainer(),
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(getWidth(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Furosemid (ukol)",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getWidth(20),
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                    Text("23 000 so’m",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getWidth(28),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getHeight(29)),
                Text("Izoh",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: getWidth(16),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: getHeight(10)),
                Text("Quis tellus vitae ligula at. Et in tempus nec sed tincidunt in pretium. Volutpat tempus nec nunc sit fermentum.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getWidth(18),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ContainerButton(
                  top: getHeight(89),
                  name: "Sotib olish",
                  onTap: (){
                    Navigator.pushNamed(context, '/harid_tas', arguments: ["Furosemid (ukol) 23 000 so’mga xarid qilindi","12 soat ichida dori vositasi hayvoningizga yuboriladi. "]);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}