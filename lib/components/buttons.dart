import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:publicspayce_v2/constants.dart';
import 'package:publicspayce_v2/screens/about.dart';
import 'package:publicspayce_v2/screens/profile.dart';
import 'package:publicspayce_v2/screens/public_coins.dart';
import 'package:publicspayce_v2/screens/user_coins.dart';

TextStyle buttonTextStyle () {
  return const TextStyle(
      color: kButtonTextColor,
      fontFamily: kFontFamily,
      fontSize: kButtonFontSize,
  );
}

PageRouteBuilder zeroDurationPageRouteBuilder ( screen ) {
    return PageRouteBuilder(
        pageBuilder: (_, __, ___) => screen,
        transitionDuration: Duration.zero
    );
}

GestureDetector aboutButton ( BuildContext passedContext ) {
  return GestureDetector(
    onTap: () {
                 Navigator.of(passedContext).pushReplacement( zeroDurationPageRouteBuilder( AboutScreen() ) );
              },
    child: Container(
      padding: const EdgeInsets.only(left: kEdgePadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          const Icon(
              Icons.receipt_long_outlined,
              color: kButtonIconColor
          ),
          Text('About', style: buttonTextStyle()),
        ],
      ),
    ),
  );
}

GestureDetector yourProfileButton ( BuildContext passedContext ) {
  return GestureDetector(
    onTap: () {
                  Navigator.of(passedContext).pushReplacement( zeroDurationPageRouteBuilder( ProfileScreen() ) );
              },
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            const Icon(
                Icons.person_outlined,
                color: kButtonIconColor
            ),
            Text('Profile', style: buttonTextStyle()),
          ],
    )
  );
}

GestureDetector yourCoinsButton ( BuildContext passedContext ) {
  return GestureDetector(
    onTap: () {
                  Navigator.of(passedContext).pushReplacement( zeroDurationPageRouteBuilder( UserCoinScreen() ) );;
              },
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
            const Icon(
                Icons.favorite_border_outlined,
                color: kButtonIconColor
            ),
            Text('Your', style: buttonTextStyle()),
            Text('Coins', style: buttonTextStyle()),
          ],
      )
  );
}

GestureDetector publicCoinsButton ( BuildContext passedContext ) {
  return GestureDetector(
    onTap: () {
                   Navigator.of(passedContext).pushReplacement( zeroDurationPageRouteBuilder( PublicCoinsScreen() ) );
              },
    child: Container(
        padding: const EdgeInsets.only(right: kEdgePadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            const Icon(
                Linecons.globe,
                color: kButtonIconColor
            ),
            Text('Public', style: buttonTextStyle()),
            Text('Coins', style: buttonTextStyle()),
          ],
        ),
    ),
  );
}
