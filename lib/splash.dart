import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
    void initState(){
    startTimer();
    super.initState();
  }
  startTimer(){
    var  duration = Duration(seconds: 2);
    return Timer(duration, route);
  }
  route(){
    Navigator.of(context).pushReplacementNamed('/login');
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Center(
          
          
            child: 
            Image.network("https://th.bing.com/th/id/OIP.QHODby_bS81-x2of8vCIhgAAAA?rs=1&pid=ImgDetMain",
            height: 100,
            width: 100,
            ),
              
        
          
        
            ),
            Positioned(
              bottom: 50,
              left: 160,
              child: Column(children: [
                Text('from'),
                Row(
                  children: [
                    Image.asset('assets/images/meta.png',
                    width: 25 ,height: 25,),
                    SizedBox(width: 2,),
                    Text('Meta', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),)
                    
                  ],
                )
              ]),            )
        ]
      ),
      
          
      

      );
      
      
    
  }
}