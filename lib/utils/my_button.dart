import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
    
    final String iconImagePath;
    final String buttontext;



const MyButton({
    Key? key,
   required  this.iconImagePath,
   required  this.buttontext,
      
    }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
              children: [           
                //icon    
                Container(
                  height: 90,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 40,
                        color: Colors.grey.shade400,
                        spreadRadius: 10,
                    ),
                    ],

                    
                  ),
                  child: Center
                  (child: Image.asset(iconImagePath)
                  ),
                  ),
                  //text
                       SizedBox(height:10),
                  Text(
                    buttontext,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
              ],
            

    );
  }
}