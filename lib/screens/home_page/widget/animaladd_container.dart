import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class AnimalAddContainer extends StatelessWidget {
  final imageHeight;
  final imageWidht;
  final textSize;
  final titleSize;
  const AnimalAddContainer({Key? key, this.imageHeight, this.imageWidht,this.textSize, this.titleSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(getWidth(8)),
        height: getHeight(172),
        width: getWidth(256),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: imageHeight ?? getHeight( 278),
              width: imageWidht ?? getWidth( 359),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/image 4.png"),
                ),
              ),
            ),
           Padding(
             padding: EdgeInsets.all(getWidth(10)),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                  Text("Qorabayir toy · 3 oylik",
                style: TextStyle(
                  color: Color(0xff3E423F),
                  fontSize: titleSize?? getWidth(16),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: getHeight(10)),
              Row(
                children: [
                  Text("3 250 000",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: textSize?? getWidth(26),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text("so'm",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getWidth(16),
                  fontWeight: FontWeight.w400,
                ),
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
