import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/colors_consts.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class ContainerMyAnimal extends StatelessWidget {
  const ContainerMyAnimal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(getWidth(8)),
      height: getHeight(727),
      width: getWidth(359),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getHeight(24),
          horizontal: getWidth(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "2. Hisori qo’y (№365)",
              style: TextStyle(
                color: Colors.black,
                fontSize: getHeight(20),
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: getHeight(194),
              width: getWidth(319),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage("assets/image/animal pic.png"),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(74),
              width: getWidth(319),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.info_outline,
                    size: getHeight(20),
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
            ),
            Container(
              height: getHeight(46),
              width: getWidth(319),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  "Dori sotib olish",
                  style: TextStyle(
                    fontSize: getHeight(15),
                    color: const Color(0xff262B27),
                  ),
                ),
              ),
            ),
            SizedBox(height: getHeight(24)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yetilish ko’rsatkichi",
                      style: TextStyle(
                        fontSize: getWidth(18),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: getHeight(12)),
                    Text(
                      "Taxminiy yetilish sanasi: ",
                      style: TextStyle(
                        color: const Color(0xff6E716F),
                        fontSize: getWidth(14),
                      ),
                    ),
                    Text(
                      "22-aprel, 2022-yil",
                      style: TextStyle(
                        color: const Color(0xff6E716F),
                        fontSize: getWidth(14),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "52%",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getWidth(18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: getWidth(15)),
                      height: getHeight(100),
                      width: getHeight(74),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: getHeight(54),
                            width: getHeight(72),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(14)),
                              color: ConsColors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: getHeight(24)),
            Text(
              "Yemishlari (2)",
              style: TextStyle(
                color: Colors.black,
                fontSize: getWidth(18),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: getHeight(158),
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: getHeight(23),
                            backgroundImage:
                                const AssetImage("assets/image/Ellipse 4 (1).png"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Beda (58%)",
                                style: TextStyle(
                                  fontSize: getWidth(16),
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: getHeight(10)),
                                height: getHeight(10),
                                width: getWidth(247),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: getHeight(9),
                                      width: getWidth(152),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            const BorderRadius.all(Radius.circular(10)),
                                        color: ConsColors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
