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
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),)
                        ),
                        child: Image(image: AssetImage("assets/shopimg.png")),
                        width: 60,
                          height:60,
                      ),

                    ],
                  ),
                )
            ),
            Expanded(flex: 3,
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start ,
                    children: <Widget>[
                      Row(
                        children: [
                          Text("Coffee",
                          style: TextStyle(
                            fontSize:30,
                            fontWeight: FontWeight.bold,
                          ),),
                          Spacer(),
                          Image.asset("assets/search.png"),
                          SizedBox(width: 15,),
                          Image.asset("assets/filter.png")
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 50,bottom: 100),
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                             width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                              color: Color(0xffF5F0E3),
                              borderRadius: BorderRadius.only(topRight: Radius.circular(30))
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Monthly\nCoffe",
                                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Text("/month",
                                    style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}