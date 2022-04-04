import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/screens/home_page/page/home_page.dart';
import 'package:halol_farm/screens/search_page/page/search_page.dart';

class BattomNavBar extends StatefulWidget {
  const BattomNavBar({ Key? key }) : super(key: key);

  @override
  State<BattomNavBar> createState() => _BattomNavBarState();
}

class _BattomNavBarState extends State<BattomNavBar> {
  int index = 0;
  List _pages = [HomePage(),SearchPage(),HomePage(),SearchPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[index],
      bottomNavigationBar: BottomNavigationBar(   
        onTap: (v){
          setState(() {
            index = v;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icon/home-2-active.svg"),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icon/search.svg"),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Badge(
              badgeContent: Text("2",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              badgeColor: Colors.red,
              child: SvgPicture.asset("assets/icon/bell.svg")),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icon/user.svg"),
            label: ""
          ),
        ],
      ),
      
    );
  }
}