import 'package:book/pages/homepage.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w800),),
               SizedBox(height:42.0),
        
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey),borderRadius: BorderRadius.circular(12
                  )),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("Email"),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8)
                    ),
                  ),
                ),
                SizedBox(height:42.0),
        
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey),borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("Password"),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8)
                      
                      
                    ),
                  ),
                ),

               
                
                SizedBox(height:42.0),

                Container(
                  height: 45,
                  width: 280,
                  
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                     

    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Homepage()),
  );

                    },
                    child: Text('SIGN IN',style: TextStyle(color: Colors.white),)
                    ),
                ),
                SizedBox(height:45.0),
                Text(
                  'Dont have an account? Sign in',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  )
            ],
          ),
        )
      ),
    );
  }
}