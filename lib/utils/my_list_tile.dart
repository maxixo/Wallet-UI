import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {

  final String iconImagePath;
  final String tileTile;
  final String tileSubtitle;


  const MyListTile({
     Key? key,
     required this.iconImagePath,
     required this.tileTile,
     required this.tileSubtitle,
     
     
     }) :  super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(bottom:25.0),
      child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [            
               Row(
                 children: [                  
                   Container(
                     padding: EdgeInsets.all(12),
                     decoration: BoxDecoration(
                     color: Colors.grey[100],
                     borderRadius: BorderRadius.circular(12)
                      ),
                    height: 80,
                    child: Image.asset(iconImagePath),
                    ),
                 SizedBox(width: 20),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                       // ignore: prefer_const_constructors
                       Text(
                         tileTile,
                         // ignore: prefer_const_constructors
                         style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       SizedBox(height: 12),
                        Text(
                         tileSubtitle,
                         style: TextStyle(
                           fontSize: 16,
                           color: Colors.grey[600],
                         ),
                         ),
                     ],
                   ),
                 ],
               ),                                                                                        
             Icon(Icons.arrow_forward_ios),
         
               ],
               ),
    );
       
       
       
  }
}