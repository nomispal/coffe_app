import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            Expanded(flex:1,
                child:Container(
                  color: Color(0xfff4efdd),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height:  height*0.233,
                        child: Column(
                          children: [
                            Text("NGO",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),),
                            Text("PI",
                            textAlign: TextAlign.start
                              ,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(flex: 3,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }

}