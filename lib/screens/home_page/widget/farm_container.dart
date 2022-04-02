import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class FarmContainer extends StatelessWidget {
  const FarmContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(getWidth(8)),
        height: getHeight(334),
        width: getWidth(359),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/image/Rectangle 1631.png"),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(getWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: getWidth(20),
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assets/image/Ellipse 1.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getWidth(20)),
                    child: CircleAvatar(
                      radius: getWidth(20),
                      backgroundColor: Colors.transparent,
                      child: ClipRRect(
                        child: Image.asset('assets/image/Ellipse 2.png',fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getWidth(45)),
                    child: CircleAvatar(
                      radius: getWidth(20),
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/image/Ellipse 3.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getWidth(65)),
                    child: CircleAvatar(
                      radius: getWidth(18),
                      backgroundColor: Colors.white,
                      child: Text("+24",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getHeight(13)
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Spacer(),
              Text("Yangi O’zbekiston Fermasi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getWidth(20),
                  fontWeight: FontWeight.w600,
                ),
              ),
              
              Row(
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.white, size: getHeight(16),),
                  Text("Toshkent vil., Chirchiq tumani",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getWidth(14),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
