import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/colors_consts.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: CustomScrollView(
        
        physics: ScrollPhysics(),
        slivers: [
          SliverAppBar(
            toolbarHeight: getHeight(313),
            backgroundColor: ConsColors.green,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: getHeight(77),
              color: ConsColors.green,
              child: Container(
                height: getHeight(77),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                color: Colors.white,

              ),
              ),
              
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            delegate: SliverChildBuilderDelegate(
              (context, index){
                return Container(
                  margin: EdgeInsets.all(8),
                  height: 300,
                  color: Colors.amber,
                );
              }
            ), 
            
          ),
        ],
      ),
    );
  }
}
