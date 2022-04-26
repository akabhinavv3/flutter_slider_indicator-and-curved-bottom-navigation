import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:slider_indicator_flutter/Pages/add_page.dart';
import 'package:slider_indicator_flutter/Pages/home.dart';
import 'package:slider_indicator_flutter/Pages/menu_page.dart';
import 'package:slider_indicator_flutter/Pages/profile_page.dart';
import 'package:slider_indicator_flutter/Widget/drawer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final List<Widget> _tabItems = [Home(),AddPage(),MenuPage(),ProfilePage()];

  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Indicator",
        style: TextStyle(
          color: Colors.white,
        ),
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.teal,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.red,
        height: 50,
        items: <Widget>[
          Icon(Icons.home,size: 20,color: Colors.black,),
          Icon(Icons.add,size: 20,color: Colors.black,),
          Icon(Icons.list,size: 20,color: Colors.black,),
          Icon(Icons.person,size: 20,color: Colors.black,),
        ],
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        onTap: (index){
          setState(() {
            _page = index;
          });
          debugPrint("current index is $index");
        },
      ),


      body: _tabItems[_page],



      drawer: MyDrawer(),
    );
  }

}
