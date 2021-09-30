import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';

void main() {
    runApp( pubSpc() );
}

class pubSpc extends StatelessWidget {

  TextStyle buttonTextStyle () {
    return TextStyle(
        color: Colors.white,
        fontFamily: 'SourceSansPro',
        fontSize: 15
    );
  }

  Container aboutButton () {
    return Container(
      padding: EdgeInsets.only(left: 10.00),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Icon(
              Icons.receipt_long_outlined,
              color: Colors.white
          ),
          Text('About', style: buttonTextStyle()),
        ],
      ),
    ); // About Container
  }

  Container yourProfileButton () {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
              Icons.person_outlined,
              color: Colors.white
          ),
          Text('Profile', style: buttonTextStyle()),
        ],
      ),
    ); // Profile Container
  }

  Container yourCoinsButton () {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Icon(
              Icons.favorite_border_outlined,
              color: Colors.white
          ),
          Text('Your', style: buttonTextStyle()),
          Text('Coins', style: buttonTextStyle()),
        ],
      ),
    ); // Your Coins Container
  }

  Container publicCoinsButton () {
    return Container(
      padding: EdgeInsets.only(right: 10.00),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Icon(
              Linecons.globe,
              color: Colors.white
          ),
          Text('Public', style: buttonTextStyle()),
          Text('Coins', style: buttonTextStyle()),
        ],
      ),
    ); // Public Coins Container
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'publicSpayce.com',
      home: SafeArea(
        child: Scaffold (
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
                              aboutButton(),
                              yourProfileButton(),
                              Container(
                                child: Image(
                                    image: AssetImage('images/coin_w_jolly_roger.png')
                                ),
                              ),
                              yourCoinsButton(),
                              publicCoinsButton()
                            ]
                        )
                    ),
                  ]
              ),
          ),
        ),
      )
    );
  }
}
