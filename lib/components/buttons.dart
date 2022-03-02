import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:publicspayce_v2/constants.dart';

TextStyle buttonTextStyle () {
  return const TextStyle(
      color: kButtonTextColor,
      fontFamily: kFontFamily,
      fontSize: kButtonFontSize,
  );
}

GestureDetector aboutButton ( BuildContext passedContext ) {
  return GestureDetector(
    onTap: () {
                 Navigator.pushNamed( passedContext, '/about' );
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
                 Navigator.pushNamed( passedContext, '/profile' );
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
               Navigator.pushNamed( passedContext, '/mycoins' );
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
                 Navigator.pushNamed( passedContext, '/publiccoins' );
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
