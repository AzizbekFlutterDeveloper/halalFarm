import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class ErrorBuyContainer extends StatelessWidget {
  const ErrorBuyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: Positioned(
        child: Container(
          height: getHeight(154),
          width: getWidth(354),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            color: Color(0xffE33B3B),
          ),
          child: Padding(
            padding: EdgeInsets.all(getHeight(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: getHeight(48),
                      width: getWidth(255),
                      child: Text(
                        "84 kg bug’doy sotib olish uchun sizga yana 1 800 so’m yetmayapti",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getWidth(16),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.cancel_outlined,
                        size: getWidth(27),
                        color: Colors.white,
                      ),
                      onTap: () {},
                    )
                  ],
                ),
                Container(
                  height: getHeight(46),
                  width: getWidth(190),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      "Hisobni to’ldirish",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getWidth(15),
                      ),
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
