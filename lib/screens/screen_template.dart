import 'package:flutter/material.dart';
import 'package:publicspayce_v2/components/appbar.dart';
import 'package:publicspayce_v2/components/buttons.dart';

SafeArea publicSpayceBase (String displayText) {
    return SafeArea(
                child: Scaffold(
                          appBar: publicSpayceAppBar(),
                          body: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:<Widget> [
                                Center( child: Text(displayText) ),
                                // const Image(
                                //   image: AssetImage('images/pirate_w_heart.png')
                                // ),
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
                                          const Image(
                                              image: AssetImage('images/coin_w_jolly_roger.png')
                                          ),
                                          yourCoinsButton(),
                                          publicCoinsButton()
                                        ]
                                    )
                                ),
                              ]
                          ),
                        )
              )
    );
}