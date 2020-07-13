import 'dart:math';
import 'package:flip_card/flip_card.dart';
import 'package:sliding_card/sliding_card.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'class_builder.dart';
import 'package:animated_card/animated_card.dart';

void main() {
  ClassBuilder.registerClasses();
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    home: new landingPage(),
    routes: <String, WidgetBuilder>{
      '/homePage': (BuildContext context) => new landingPage(),
    },
  ));
}

class landingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return landingPageState();
  }
}

class landingPageState extends State<landingPage> {

  SlidingCardController controller ;
  @override
  void initState() {

    super.initState();
    controller = SlidingCardController();
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController _homeController = ScrollController();

    return new Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          controller: _homeController,
          slivers: [
            SliverAppBar(
                backgroundColor: Color.fromARGB(100, 43, 43, 43),
                shadowColor: Color.fromARGB(100, 43, 43, 43),
                pinned: true,
                expandedHeight: 600.0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.access_alarm,
                      size: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: FlatButton(
                            onPressed: () {
                              _homeController.animateTo(
                                550.0,
                                curve: Curves.easeOut,
                                duration: const Duration(milliseconds: 300),
                              );
                            },
                            child: Text(
                              'Purchase',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: FlatButton(
                            onPressed: () {
                              _homeController.animateTo(
                                1450.0,
                                curve: Curves.easeOut,
                                duration: const Duration(milliseconds: 300),
                              );
                            },
                            child: Text(
                              'Features',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: FlatButton(
                            color: Color.fromARGB(100, 10, 10, 10),
                            onPressed: () {},
                            child: Text(
                              'Log In',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                flexibleSpace: OverflowBox(
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(child: AnimatedBackground()),
                      onBottom(AnimatedWave(
                        height: 180,
                        speed: 1.0,
                      )),
                      onBottom(AnimatedWave(
                        height: 120,
                        speed: 0.9,
                        offset: pi,
                      )),
                      onBottom(AnimatedWave(
                        height: 220,
                        speed: 1.2,
                        offset: pi / 2,
                      )),
                      Center(
                          child: Text(
                        "Poison Proxies",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      )),
                    ],
                  ),
                )),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                    height: 900,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                          Color.fromARGB(100, 153, 50, 204),
                          Color.fromARGB(100, 44, 44, 44),
                        ])),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 30, left: 30),
                                child: Text(
                                  'Pricing',
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.white),
                                ))
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Container(
                                    child: SlimyCard(
                                      color: Colors.black,
                                      width: 300,
                                      topCardHeight: 200,
                                      bottomCardHeight: 100,
                                      borderRadius: 15,
                                      topCardWidget: Column(
                                        children: [
                                          Text('Daily Proxies',
                                              style: TextStyle(
                                                  color: Colors.purple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          Text('Pay Daily',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple,)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      bottomCardWidget: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '\$19.99',
                                            style: TextStyle(
                                                fontSize: 25, color: Colors.purple),
                                          ),

                                          RaisedButton(
                                            child: Text('Buy Now', style: TextStyle(color: Colors.white)),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.purple)
                                            ),
                                          )

                                        ],
                                      ),
                                      slimeEnabled: true,
                                    )
                                ),

                                Container(
                                    child: SlimyCard(
                                      color: Colors.black,
                                      width: 300,
                                      topCardHeight: 200,
                                      bottomCardHeight: 100,
                                      borderRadius: 15,
                                      topCardWidget: Column(
                                        children: [
                                          Text('Daily Proxies',
                                              style: TextStyle(
                                                  color: Colors.purple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          Text('Pay Daily',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple,)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      bottomCardWidget: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '\$19.99',
                                            style: TextStyle(
                                                fontSize: 25, color: Colors.purple),
                                          ),

                                          RaisedButton(
                                            child: Text('Buy Now', style: TextStyle(color: Colors.white)),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.purple)
                                            ),
                                          )

                                        ],
                                      ),
                                      slimeEnabled: true,
                                    )
                                ),

                                Container(
                                    child: SlimyCard(
                                      color: Colors.black,
                                      width: 300,
                                      topCardHeight: 200,
                                      bottomCardHeight: 100,
                                      borderRadius: 15,
                                      topCardWidget: Column(
                                        children: [
                                          Text('Daily Proxies',
                                              style: TextStyle(
                                                  color: Colors.purple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          Text('Pay Daily',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple,)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      bottomCardWidget: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '\$19.99',
                                            style: TextStyle(
                                                fontSize: 25, color: Colors.purple),
                                          ),

                                          RaisedButton(
                                            child: Text('Buy Now', style: TextStyle(color: Colors.white)),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.purple)
                                            ),
                                          )

                                        ],
                                      ),
                                      slimeEnabled: true,
                                    )
                                ),

                              ],
                            )
                        ),

                        Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Container(
                                    child: SlimyCard(
                                      color: Colors.black,
                                      width: 300,
                                      topCardHeight: 200,
                                      bottomCardHeight: 100,
                                      borderRadius: 15,
                                      topCardWidget: Column(
                                        children: [
                                          Text('Daily Proxies',
                                              style: TextStyle(
                                                  color: Colors.purple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          Text('Pay Daily',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple,)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      bottomCardWidget: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '\$19.99',
                                            style: TextStyle(
                                                fontSize: 25, color: Colors.purple),
                                          ),

                                          RaisedButton(
                                            child: Text('Buy Now', style: TextStyle(color: Colors.white)),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.purple)
                                            ),
                                          )

                                        ],
                                      ),
                                      slimeEnabled: true,
                                    )
                                ),

                                Container(
                                    child: SlimyCard(
                                      color: Colors.black,
                                      width: 300,
                                      topCardHeight: 200,
                                      bottomCardHeight: 100,
                                      borderRadius: 15,
                                      topCardWidget: Column(
                                        children: [
                                          Text('Daily Proxies',
                                              style: TextStyle(
                                                  color: Colors.purple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          Text('Pay Daily',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple,)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      bottomCardWidget: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '\$19.99',
                                            style: TextStyle(
                                                fontSize: 25, color: Colors.purple),
                                          ),

                                          RaisedButton(
                                            child: Text('Buy Now', style: TextStyle(color: Colors.white)),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.purple)
                                            ),
                                          )

                                        ],
                                      ),
                                      slimeEnabled: true,
                                    )
                                ),

                                Container(
                                    child: SlimyCard(
                                      color: Colors.black,
                                      width: 300,
                                      topCardHeight: 200,
                                      bottomCardHeight: 100,
                                      borderRadius: 15,
                                      topCardWidget: Column(
                                        children: [
                                          Text('Daily Proxies',
                                              style: TextStyle(
                                                  color: Colors.purple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          Text('Pay Daily',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple,)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('VA/CHI/UK locations',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15)),
                                                Icon(Icons.check,color: Colors.purple)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      bottomCardWidget: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '\$19.99',
                                            style: TextStyle(
                                                fontSize: 25, color: Colors.purple),
                                          ),

                                          RaisedButton(
                                            child: Text('Buy Now', style: TextStyle(color: Colors.white)),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.purple)
                                            ),
                                          )

                                        ],
                                      ),
                                      slimeEnabled: true,
                                    )
                                ),

                              ],
                            )
                        ),


                      ],
                    )),
                Container(
                    height: 600,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 30, left: 30),
                                child: Text(
                                  'Features',
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.purple),
                                )
                            )
                          ],
                        ),

                        Container(
                          padding: EdgeInsets.only(top:30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Container(
                                width: 300,
                                height: 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.purple,
                                        Colors.black,
                                      ]),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(8.0)),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.add_location,size: 50,color: Colors.white,),
                                    Text('The fastest proxies',
                                        style: TextStyle(color: Colors.white,fontSize: 25)),
                                  ],
                                ),
                              ),

                              Container(
                                width: 300,
                                height: 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Colors.purple,
                                        Colors.black,
                                      ]),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(8.0)),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.add_location,size: 50,color: Colors.white,),
                                    Text('The fastest proxies',
                                        style: TextStyle(color: Colors.white,fontSize: 25)),
                                  ],
                                ),
                              ),

                              Container(
                                width: 300,
                                height: 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.purple,
                                        Colors.black,
                                      ]),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(8.0)),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.add_location,size: 50,color: Colors.white,),
                                    Text('The fastest proxies',
                                        style: TextStyle(color: Colors.white,fontSize: 25)),
                                  ],
                                ),
                              ),

                            ],
                          )
                        ),

                        Container(
                            padding: EdgeInsets.only(top:30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Container(
                                  width: 300,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          Colors.purple,
                                          Colors.black,
                                        ]),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8.0)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.add_location,size: 50,color: Colors.white,),
                                      Text('The fastest proxies',
                                          style: TextStyle(color: Colors.white,fontSize: 25)),
                                    ],
                                  ),
                                ),

                                Container(
                                  width: 300,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Colors.purple,
                                          Colors.black,
                                        ]),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8.0)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.add_location,size: 50,color: Colors.white,),
                                      Text('The fastest proxies',
                                          style: TextStyle(color: Colors.white,fontSize: 25)),
                                    ],
                                  ),
                                ),

                                Container(
                                  width: 300,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          Colors.purple,
                                          Colors.black,
                                        ]),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8.0)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.add_location,size: 50,color: Colors.white,),
                                      Text('The fastest proxies',
                                          style: TextStyle(color: Colors.white,fontSize: 25)),
                                    ],
                                  ),
                                ),

                              ],
                            )
                        )
                      ],
                    )
                ),
                Container(
                    height: 600,
                    color: Color.fromARGB(100, 44, 44, 44),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 30, left: 30),
                                child: Text(
                                  'Q & A',
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.white),
                                ))
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: FlipCard(
                                    direction: FlipDirection.VERTICAL,
                                    // default
                                    front: Container(
                                      width: 300,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Question',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 25)),
                                          Text('Why are you running?',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                    back: Container(
                                      height: 200,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Answer',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 25)),
                                          Text('Yes',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.only(right: 50),
                                ),

                                Container(
                                  child: FlipCard(
                                    direction: FlipDirection.VERTICAL,
                                    // default
                                    front: Container(
                                      width: 300,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Question',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 25)),
                                          Text('Why are you running?',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                    back: Container(
                                      height: 200,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Answer',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 25)),
                                          Text('Yes',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.only(right: 50),
                                ),

                                Container(
                                  child: FlipCard(
                                    direction: FlipDirection.VERTICAL,
                                    // default
                                    front: Container(
                                      width: 300,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Question',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 25)),
                                          Text('Why are you running?',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                    back: Container(
                                      height: 200,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Answer',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 25)),
                                          Text('Yes',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.only(right: 50),
                                ),




                              ],
                            )
                        ),

                        Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: FlipCard(
                                    direction: FlipDirection.VERTICAL,
                                    // default
                                    front: Container(
                                      width: 300,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Question',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 25)),
                                          Text('Why are you running?',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                    back: Container(
                                      height: 200,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Answer',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 25)),
                                          Text('Yes',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.only(right: 50),
                                ),

                                Container(
                                  child: FlipCard(
                                    direction: FlipDirection.VERTICAL,
                                    // default
                                    front: Container(
                                      width: 300,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Question',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 25)),
                                          Text('Why are you running?',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                    back: Container(
                                      height: 200,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Answer',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 25)),
                                          Text('Yes',
                                              style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.only(right: 50),
                                ),






                              ],
                            )
                        ),
                      ],
                    )
                ),
              ]),
            )
          ],
        ));
  }

  landingPageState();

  Widget onBottom(Widget child) => Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: child,
        ),
      );
}

class AnimatedWave extends StatelessWidget {
  final double height;
  final double speed;
  final double offset;

  AnimatedWave({this.height, this.speed, this.offset = 0.0});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: height,
        width: constraints.biggest.width,
        child: LoopAnimation<double>(
            duration: Duration(milliseconds: (5000 / speed).round()),
            tween: Tween(begin: 0.0, end: 2 * pi),
            builder: (context, child, value) {
              return CustomPaint(
                foregroundPainter: CurvePainter(value + offset),
              );
            }),
      );
    });
  }
}

class CurvePainter extends CustomPainter {
  final double value;

  CurvePainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    final white = Paint()..color = Colors.black.withAlpha(60);
    final path = Path();

    final y1 = sin(value);
    final y2 = sin(value + pi / 2);
    final y3 = sin(value + pi);

    final startPointY = size.height * (0.5 + 0.4 * y1);
    final controlPointY = size.height * (0.5 + 0.4 * y2);
    final endPointY = size.height * (0.5 + 0.4 * y3);

    path.moveTo(size.width * 0, startPointY);
    path.quadraticBezierTo(
        size.width * 0.5, controlPointY, size.width, endPointY);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

enum _BgProps { color1, color2 }

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(
          Duration(seconds: 4),
          ColorTween(
              begin: Color.fromARGB(100, 153, 50, 204),
              end: Color.fromARGB(100, 147, 112, 219))),
      Track("color2").add(
          Duration(seconds: 4),
          ColorTween(
              begin: Color.fromARGB(100, 147, 112, 219), end: Colors.white70))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [animation["color1"], animation["color2"]])),
        );
      },
    );
  }
}
