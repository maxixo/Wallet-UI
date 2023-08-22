// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace


import 'package:flutter/material.dart';
import 'package:walletui/utils/my_button.dart';
import 'package:walletui/utils/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletui/utils/my_list_tile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [  
            //appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [            
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'My',
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26
                      ),                  
                    ),
                   Text(
                  ' Cards',
                    style: TextStyle(
                    fontSize: 26,
                    ),
                  ),
                ],
              ),
                  
               // plus button
            Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                color: Colors.grey[400],
                shape: BoxShape.circle,
               ),
                child: Icon(Icons.add),              
                ),          
             ],
            ),
          ),

           SizedBox(height: 25),
      
            //CARDS
         Container(
            height: 200,        
            child: PageView(      
              scrollDirection: Axis.horizontal,
              controller: _controller,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                MyCard(
                  balance: 5520.20,
                  cardNumber: 12345638,
                  expiryMonth: 09,
                  expiryYear: 24,
                  color: Colors.deepPurple[300],
                ),
                MyCard(
                 balance: 490.55,
                 cardNumber: 23738928,
                 expiryMonth: 11,
                 expiryYear: 26,
                 color: Color.fromARGB(255, 24, 21, 222),
                ),
                MyCard(
                 balance: 360.00,
                 cardNumber: 93766292,
                 expiryMonth: 03,
                 expiryYear: 19,
                 color: Color.fromARGB(255, 117, 205, 167),
                ),
          
          

            ],
            ),
         ),
         SizedBox(height:25),

        SmoothPageIndicator(
          controller: _controller, 
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.grey.shade700,
          ),
          
          ),
        SizedBox(height:40),
                      
      
            // 3 buttons --> send + pay + bills
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,      
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              //send button
        
             MyButton(
              iconImagePath: '/Users/phamkate/Documents/walletui/lib/images/send.png',
              buttontext: 'Send',
             ),
        
              //pay button 
                 MyButton(
              iconImagePath: '/Users/phamkate/Documents/walletui/lib/images/credit-card.png',
              buttontext: 'Pay',
           ),
        
              //bills button
                 MyButton(
              iconImagePath: '/Users/phamkate/Documents/walletui/lib/images/receipt.png',
              buttontext: 'Bills',
             ),
            
            ],
            ),
        ),

      SizedBox(height:25),
            //column -> stats + transactions
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                //statistivs 

                MyListTile(
                 iconImagePath:'/Users/phamkate/Documents/walletui/lib/images/bar-chart.png' , 
                 tileTile: 'Statistics',
                 tileSubtitle: 'Payments and Income'),

                 //Traansactions 

                  MyListTile(
                 iconImagePath:'/Users/phamkate/Documents/walletui/lib/images/transaction.png' ,
                 tileTile: 'Transactions',
                 tileSubtitle: 'Transactions,History')


    
          
          
            ],),
          )
      
      
      
           
      
      
          ]),
      ),


    );
  }
}