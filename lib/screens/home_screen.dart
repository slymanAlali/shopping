
import 'package:flutter/material.dart';

import '../widgets/grid_items.dart';
  class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Color> clrs = [
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 63, 208, 143),
    ];
    var imageList = [
          'images/slide1.png',
          'images/slide3.png',
          'images/slide4.png',
    ];
    var iconImageList = [
      'images/icon1.png',
      'images/icon2.png',
      'images/icon3.png',
      'images/icon4.png',
      'images/icon5.png',
      'images/icon6.png',
      'images/icon7.png',
    ];
    return SingleChildScrollView(

        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Padding(
            padding:EdgeInsets.only(top:30,left:15,right:15),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Container(
                    padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color:Colors.white12,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                       BoxShadow(
                         color:Colors.black12,
                         blurRadius: 4,
                         spreadRadius: 2
                       )
                     ]
                   ),
                   child: Icon(
                       Icons.person,size:28,),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color:Colors.white12,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color:Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2,
                          )
                        ]
                    ),
                    child: Icon(
                      Icons.search,size:28,),


                  ),
               ]

            )
          ),
         Padding(
           padding:EdgeInsets.symmetric(vertical:25,horizontal:15),
           child:Column(
             children: [
               Text(
                 'Hello dear',
                 style:TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                 )
               ),
               SizedBox(height:5),
               Text('Lets shop something',
               style:TextStyle(
                 fontSize: 18,
                 color:Colors.black45,
               )
               )
             ]
           )
         ),
          SingleChildScrollView(
             scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left:15),
              child:Row(
            children:[
              for(int i =0; i<3; i++)
              Container(
                padding: EdgeInsets.only(left:10),
                margin: EdgeInsets.only(right:10),
                width:MediaQuery.of(context).size.width /1.5,
                height:MediaQuery.of(context).size.height /5.5,
               decoration:BoxDecoration(
                 color:clrs[i],
                 borderRadius: BorderRadius.circular(10),
               ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Expanded(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          '30% off on winter collection',
                        style:TextStyle(
                          fontSize: 22,
                          color:Colors.white,
                        )
                        ),
                        Container(
                          width:90,
                          padding:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          child:Center(
                            child:Text(
                              'shop now',
                              style:TextStyle(
                                color:Colors.redAccent,
                                fontWeight: FontWeight.bold,
                              )
                            )
                          )
                        )
                      ]
                    ),
                      ),
                    Image.asset(
                       imageList[i],
                       height: 140,
                       width:100,
                     )
                  ]
                )
              )
            ]
          )
          ),
          SizedBox(height:20),
          Padding(
            padding:EdgeInsets.symmetric(horizontal:15),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(
                  'Top Categories',
                  style:TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )
                ),
                  Text(
                  'See All',
                    style:TextStyle(
                 color:Colors.black45,
                    )
                  )
               ]
            )
          ),
          SizedBox(height:20),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
         child:Padding(
           padding:EdgeInsets.only(left:10),
           child:Row(
             children: [
              for(var i=0; i<6; i++)
                Container(
                  width:50,
                  height: 50,
                  margin:EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                    BoxShadow(
                    color:Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2,
                 )
              ]
         ),
           child: Padding(
              padding:EdgeInsets.all(6),
              child:Image.asset(iconImageList[i]),
          )
         )
        ]
            )
            )
          ),
          SizedBox(height:10),
          GridItems(),



         ]
    )
    );

  }
}
















