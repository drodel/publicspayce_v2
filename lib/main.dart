import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';

void main() {
    runApp( pubSpc() );
}

class pubSpc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
              title: Center(
                  child: Text(
                    'publicSpayce.com',
                    style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Italianno',
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                    ),
                  )
              ),
              backgroundColor: Colors.blueGrey.shade900
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:<Widget> [
                  Container(
                    child: Image(
                      image: AssetImage('images/pirate_w_heart.png')
                    ),
                  ),
                  Container(
                      width: 100,
                      height: 70,
                      color: Colors.blueGrey.shade900,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:<Widget> [
                            Container(
                              padding: EdgeInsets.only(left: 10.00),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget> [
                                  Icon(
                                    Icons.receipt_long_outlined,
                                    color: Colors.white
                                  ),
                                  Text('About',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceSansPro',
                                        fontSize: 15
                                    ),
                                  ),
                                ],
                              ),
                            ), // About Container
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget> [
                                  Icon(
                                      Icons.person_outlined,
                                      color: Colors.white
                                  ),
                                  Text('Profile',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceSansPro',
                                        fontSize: 15
                                    ),
                                  ),
                                ],
                              ),
                            ), // Profile Container
                            Container(
                              child: Image(
                                  image: AssetImage('images/coin_w_jolly_roger.png')
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget> [
                                  Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white
                                  ),
                                  Text('Your',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceSansPro',
                                        fontSize: 15
                                    ),
                                  ),
                                  Text('Coins',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceSansPro',
                                        fontSize: 15
                                    ),
                                  ),
                                ],
                              ),
                            ), // Your Coins Container
                            Container(
                              padding: EdgeInsets.only(right: 10.00),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget> [
                                  Icon(
                                    Linecons.globe,
                                    color: Colors.white
                                  ),
                                  Text('Public',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceSansPro',
                                        fontSize: 15
                                    ),
                                  ),
                                  Text('Coins',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceSansPro',
                                        fontSize: 15
                                    ),
                                  ),
                                ],
                              ),
                            ), // Public Coins Container
                          ]
                      )
                  ),
                ]
            ),
        ),
      )
    );
  }
}
