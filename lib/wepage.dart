
import 'package:flutter/material.dart';

import 'screens/Contain.dart';

class welpage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Container(
          // height: double.infinity,
            decoration: BoxDecoration(
              image:  DecorationImage(
                image: NetworkImage('https://d2pas86kykpvmq.cloudfront.net/images/humans-3.0/pose_26.png'),
                fit:BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.white.withOpacity(.9),BlendMode.modulate)
              )

            ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: MediaQuery.of(context).size.height/3,),
              Expanded(
                child: Row(
                
                  children: [
                    containn(const Icon(Icons.male,size: 100),Colors.amber.withOpacity(.2),"Men"),
                    containn(const Icon(Icons.female,color: Colors.amber,size: 100),Colors.white.withOpacity(.2),"Women"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                    
                  children: [
                    containn(const Icon(Icons.boy,color: Colors.amber,size: 100),Colors.white.withOpacity(.2),"Boy"),
                    containn(const Icon(Icons.girl,color: Colors.white,size: 100),Colors.amber.withOpacity(.2),"Girl"),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
