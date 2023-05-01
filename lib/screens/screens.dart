import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'cart_screen.dart';
import 'home_screen.dart';

class Screens extends StatefulWidget{
  @override
  State<Screens> createState() => _ScreensState();
}
class _ScreensState extends State<Screens>{
  int _selectedIndex = 0;
  static  List<Widget> _widgetoptions =<Widget>[
   HomeScreen(),
    CartScreen(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      body:_widgetoptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color:Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color:Colors.black.withOpacity(0.1),
            )
          ]
        ),
        child:SafeArea(
          child:Padding(
            padding:EdgeInsets.symmetric(horizontal: 15,vertical:8),
            child:GNav(
              rippleColor: Colors.grey,
                hoverColor: Colors.teal,
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
              padding:EdgeInsets.symmetric(horizontal: 20,vertical:12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.redAccent,
                color:Colors.black,
                tabs: [
              GButton(icon: LineIcons.home,text:'home'),
                  GButton(icon: LineIcons.shoppingBag,text:'Cart'),
                  GButton(icon: LineIcons.heart,text:'Wishlist'),
                  GButton(icon: LineIcons.user,text:'Account'),
            ],
              selectedIndex: _selectedIndex,
              onTabChange: (index){
                  setState((){
                    _selectedIndex= index;
                  });
              },


            )
          ),

        )
      ),

    );
  }
}