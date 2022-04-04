import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';
import 'package:halol_farm/screens/home_page/widget/animaladd_container.dart';
import 'package:halol_farm/screens/home_page/widget/farm_container.dart';
import 'package:halol_farm/screens/search_page/widget/search_app_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with SingleTickerProviderStateMixin{
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller =TabController(length: 2, vsync: this);
  }
  int index = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(height: getHeight(30)),
          const SearchAppBar(),
          SizedBox(
            height: getHeight(52),
            width: getWidth(375),
            child: TabBar(
              controller: _controller,
              labelStyle: const TextStyle(
                color: Colors.black,
              ),
              onTap: (v){
                setState(() {
                  index = v;
                });
              },
              tabs: [
                Tab(
                  child: Text("Hayvonlar (115)",style: TextStyle(color: Colors.black,fontSize: getWidth(17)),),
                ),
                Tab(
                  child:  Text("Fermalar (12)",style: TextStyle(color: Colors.black,fontSize: getWidth(17)),),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xffEFEFEF),
            height: getHeight(500),
            child: index == 0 ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: getHeight(206)), 
              itemBuilder: (context, index){
                return AnimalAddContainer(
                  imageHeight: getHeight(134),
                  imageWidht: getWidth(172),
                  textSize: getWidth(18),
                  titleSize: getWidth(12),
                );
              }
            ) : ListView.builder(
              itemBuilder: (context,index){
                return FarmContainer();
              }
            ),
          ),
        ],
      ),
    );
  }
}