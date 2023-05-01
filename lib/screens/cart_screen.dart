import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  var pNames = [
    'Apple Watch -M2',
    'White Tshirt',
    'Nike Shoe',
    'Ear Headphone',
  ];

  var pSizes = [
    '36',
    'M',
    'S',
    '40',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Padding(
        padding:EdgeInsets.only(right:20,left:20,top:30),
        child:Column(
          children:[
           Align(
             child:Text(
               'My Cart',
               style:TextStyle(
                 fontSize: 22,
                 fontWeight:FontWeight.bold,
               )
             )
           ),
            SizedBox(height:8),
                for(int i = 0; i < 4; i++)
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.only(right:10 ),
                    height:120,
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 248, 248, 243),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Row(
                      children: [
                        Container(
                          height:100,
                          width:MediaQuery.of(context).size.width/4,
                          margin: EdgeInsets.only(left: 8),
                          padding:EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color:Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        ),
                          child:Image.asset(
                            'images/${pNames[i]}.png',
                            height: 70,
                            width:70,
                          )
                          ),
                      Container(
                        //width:MediaQuery.of(context).size.width/1.8,
                        child:Padding(
                          padding:EdgeInsets.only(
                              bottom:25,left:15,top:20,),
                          child:Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children:[
                             Text(
                               pNames[i],
                               style:TextStyle(
                                 color:Colors.black,
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                               )
                             ),
                             Row(
                               children:[
                             Text(
                                 'Size:',
                                 style:TextStyle(
                                   color:Colors.black,
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold,
                                 )
                             ),
                                 SizedBox(width:5),
                                 Text(
                                     pSizes[i],
                                     style:TextStyle(
                                       color:Colors.black54,
                                       fontSize: 16,
                                       fontWeight: FontWeight.bold,
                                     )
                                 ),
                               ]
                             ),
                             Row(
                                 children:[
                                 Text(
                                       '\$50.55',
                                       style:TextStyle(
                                         color:Colors.redAccent,
                                         fontSize: 18,
                                         fontWeight: FontWeight.bold,
                                       )
                                   ),
                                  SizedBox(height: 5),
                                   Container(
                                     height: 25,
                                     width:70,
                                     decoration: BoxDecoration(
                                      color:Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                     child:Row(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children:[
                                           Icon(CupertinoIcons.minus),
                                         //  Text('01'),
                                      //     Icon(CupertinoIcons.plus),
                                         ]
                                     )
                                   )
                                    ]
                                   ),
                            ]
                      )
                      )
                      ),
             Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Text(
                      '\$50.55',
                      style:TextStyle(
                        color:Colors.redAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )
                  ),

                  Container(
                      height: 25,
                      width:70,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child:Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Icon(CupertinoIcons.minus),
                            Text('01'),
                            Icon(CupertinoIcons.plus),
                          ]
                      )
                  )
                ]
            ),
                     ]
                   ),
                 ),
            SizedBox(height:8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(
                  'total:',
                  style:TextStyle(
                    color:Colors.black,
                    fontSize: 18,
                  )
                ),
                Text(
                    '\$300',
                    style:TextStyle(
                      color:Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ]
            ),
            SizedBox(height:8),
            Container(
              height:50,
              width: MediaQuery.of(context).size.width/2*2,
              decoration:BoxDecoration(
                color:Colors.redAccent,
              ),
              child:Center(
                child:Text(
                  'Order Now',
                 style:TextStyle(
                color:Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,

                )
              )
            )
            )
                 ]
                )
                )
               );
             }
           }










