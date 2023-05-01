  import 'package:flutter/material.dart';

import '../screens/item_screen.dart';

class GridItems extends StatelessWidget {
  var pNames = [
    'Apple Watch -M2',
    'White Tshirt',
    'Nike Shoe',
    'Ear Headphone',
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pNames.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.7,
          crossAxisCount: 2,
        ),
        itemBuilder:(context, index){
          return Container(
              margin:EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:Colors.white,
                boxShadow: [
                BoxShadow(
                color:Colors.black26,
                blurRadius: 4,
                spreadRadius: 2,
              ),
              ]
            ),
              child:Padding(
                padding:EdgeInsets.all(12),
                child:Column(
                  children:[
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text(
                        '30% off',
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:12,
                        )
                      ),
                      Icon(Icons.favorite,
                      color:Colors.redAccent,
                      ),

                    ]
                   ),
                    SizedBox(height:10),
                    Padding(
                      padding:EdgeInsets.all(10),
                      child:InkWell(
                        onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>ItemScreen()));
                        },
                        child:Image.asset('images/${pNames[index]}.png',
                        width:100,
                        height:100,
                      ),
                    ),
                    ),
                    SizedBox(height:15),
                    Padding(
                      padding:EdgeInsets.all(8),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text(pNames[index],
                          style:TextStyle(
                            fontSize:17,
                            color:Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.bold,
                          )
                          ),
                          SizedBox(height:15),
                          Row(
                            children:[
                              Text('\$100', style:TextStyle(
                               fontSize: 15,
                               color:Colors.redAccent,
                               fontWeight: FontWeight.w500,
                              )),
                              SizedBox(width:5),
                              Text('130% off', style:TextStyle(
                                fontSize: 13,
                                decoration: TextDecoration.lineThrough,
                                color:Colors.black.withOpacity(0.8),
                              )),
                            ]
                          )
                        ]
                      )
                    )
                  ]
                )
              )
          );
    }
    );
  }
}




