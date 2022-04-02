import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/colors_consts.dart';
import 'package:halol_farm/code/constans/size_config.dart';
import 'package:halol_farm/screens/home_page/widget/animaladd_container.dart';
import 'package:halol_farm/screens/home_page/widget/container_add.dart';
import 'package:halol_farm/screens/home_page/widget/container_myanimal.dart';
import 'package:halol_farm/screens/home_page/widget/farm_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      backgroundColor: ConsColors.green,
      child: CustomScrollView(
        physics: const ScrollPhysics(),
        slivers: [
          SliverAppBar(
            toolbarHeight: getHeight(230),
            backgroundColor: ConsColors.green,
            flexibleSpace: Column(
              children: [
                SizedBox(height: getHeight(48)),
                SizedBox(
                  height: getHeight(29),
                  width: getWidth(100),
                  child: Image.asset("assets/image/halalForm.png"),
                ),
                SizedBox(height: getHeight(32)),
                Text(
                  "Balansingiz",
                  style: TextStyle(
                    fontSize: getWidth(14),
                    color: const Color(0xffCDE9D1),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle_outline_outlined,
                          size: getHeight(24),
                          color: Colors.white,
                        )),
                    Text(
                      "450 000",
                      style: TextStyle(
                        fontSize: getHeight(21),
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " so'm",
                      style: TextStyle(
                        fontSize: getHeight(17),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Hisobni to’ldirish uchun ID: 255 584 789",
                  style: TextStyle(color: Color(0xffCDE9D1)),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              alignment: const Alignment(-0.5, 0.1),
              height: getHeight(77),
              width: getWidth(375),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                color: Color(0xffF2F1F7),
              ),
              child: Text(
                "Mening hayvonlarim (2)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getWidth(24),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisExtent: getHeight(727)),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: const Color(0xffF2F1F7),
                  child: const ContainerMyAnimal(),
                );
              },
              childCount: 2,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: getHeight(160),
              width: getWidth(375),
              color: const Color(0xffF2F1F7),
              child: Padding(
                padding:  EdgeInsets.all(getWidth(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ContainerAdd(
                      name: "+ " "Yangi hayvon sotib olish",
                    ),
                    SizedBox(height: getHeight(64)),
                    Text("Sizga yoqishi mumkin",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getWidth(24),
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              )
            ),

          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisExtent: getHeight(378)),
            delegate: SliverChildBuilderDelegate(
              (context, index){
                return Container(color: const Color(0xffF2F1F7),child: const AnimalAddContainer());
              },
              childCount: 3,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: getHeight(160),
              width: getWidth(375),
              color: const Color(0xffF2F1F7),
              child: Padding(
                padding:  EdgeInsets.all(getWidth(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ContainerAdd(
                      name: "Barcha hayvonlarni ko’rish",
                    ),
                    SizedBox(height: getHeight(64)),
                    Text("Yaqin atrofdagi fermalar",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getWidth(24),
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              )
            ),

          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisExtent: getHeight(314)),
            delegate: SliverChildBuilderDelegate(
              (context, index){
                return Container(color: const Color(0xffF2F1F7),child: const FarmContainer());
              },
              childCount: 3,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: getHeight(160),
              width: getWidth(375),
              color: const Color(0xffF2F1F7),
              child: Padding(
                padding:  EdgeInsets.all(getWidth(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ContainerAdd(
                      name: "Barcha hayvonlarni ko’rish",
                    ),
                   
                  ],
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}
