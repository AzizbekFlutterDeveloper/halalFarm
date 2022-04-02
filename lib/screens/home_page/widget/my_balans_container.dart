import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class MyBalanContainer extends StatelessWidget {
  const MyBalanContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(getHeight(12)),
          height: getHeight(70),
          width: getWidth(335),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.black.withOpacity(0.8),
          ),
          child: Row(
            children: [
              Icon(
                Icons.credit_card_outlined,
                size: getWidth(30),
                color: Colors.white,
              ),
              SizedBox(width: getWidth(20)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mening balansim",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getWidth(13),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "150 000 so’m",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getWidth(22),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
