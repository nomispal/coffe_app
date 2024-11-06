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
                        color: Color(0xffe6c038),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                      Container(
                        width: double.infinity,
                        height: 150,
                        child: Stack(
                          children: [
                            Center(
                              child: RotatedBox(quarterTurns: 3,
                              child: Text("TOP PICK",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),),
                            ),
                            Align(alignment: Alignment.centerRight,
                            child: Container(
                              width: 5,
                                height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xffe6c038),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)
                                )
                              ),
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: Stack(
                          children: [
                            Center(
                              child: RotatedBox(quarterTurns: 3,
                                child: Text("Trending",
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),),
                            )
                          ],
                        ),

                      ),
                      Container(
                        width: double.infinity,
                        height: 150,
                        child: Stack(
                          children: [
                            Center(
                              child: RotatedBox(quarterTurns: 3,
                                child: Text("Latest",
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),),
                            )
                          ],
                        ),

                      )
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