import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('20',style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.w700
                    ),),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text('Thu'),
                        Text('Feb 2020')
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.qr_code,size: 30,),
                    SizedBox(width: 10,),
                    ClipRRect(
                      borderRadius:BorderRadius.circular(12),
                      
                      child: Image.asset('assets/images/profile.jpg',height: 65,width: 40,),
                    )
                  ],
                ),
                SizedBox(height: 35,),
                Row(
                  children: [
                    Text('New Arrivals',style: TextStyle(
                      fontSize: 25
                    ),),
                    Spacer(),
                    Text('View all',style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18
                    ),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                SizedBox(height: 30,),
                SingleChildScrollView(
                  
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for(int i=1;i<=4;i++)
                      ClipRRect(
                         borderRadius: BorderRadius.circular(12),
                         
                        child: Column(
                          
                          children: [
                            Image.asset('assets/images/img$i.webp',height: 230,width: 160,),
                            SizedBox(height: 5,),
                            Text('Book name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                            Text('Author')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
               
                 SizedBox(height: 30,),
                   Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black12,
                    ),
                   padding: EdgeInsets.all(20),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Icon(Icons.line_axis),
                         SizedBox(height: 40,),
                         Text('My books',style: TextStyle(
                           fontSize: 25,
                           fontWeight: FontWeight.w600
                         ),),
                         SizedBox(height: 30,),
                         Row(
                           
                           children: [
                             Image.asset('assets/images/encanto.jpeg',height:180 ,width: 120,),
                             SizedBox(width: 30,),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Text('BOOK NAME',style: TextStyle(
                                   fontSize: 20,fontWeight: FontWeight.w600
                                 ),),
                                 SizedBox(height: 15,),
                                 Text('Author '),
                                 SizedBox(height: 25,),
                                  Text('Return until 25.03.2020',style: TextStyle(color: Colors.amber),),
                                    
                               ],
                             )
                           ],
                         )
                       ],
                     ),
                   ),
      
                  
              ],
            ),
          )
        ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        color: Colors.black,
        child: Padding(padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home,color: Colors.white,size: 30,),
             Icon(Icons.search,color: Colors.white,size: 30,),
              Icon(Icons.library_add,color: Colors.white,size: 30,),
               Icon(Icons.shop,color: Colors.white,size: 30,)
          ],
        ),
        ),
      ),
    );
  }
}