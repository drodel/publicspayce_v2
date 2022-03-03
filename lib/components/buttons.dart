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

// TODO: make the onTaps a function passing the screen

GestureDetector aboutButton ( BuildContext passedContext ) {
  return GestureDetector(
    onTap: () {
//               Navigator.pushNamedAndRemoveUntil( passedContext, '/about', (_) => false ); // (_) => false prevents any back button
                 Navigator.of(passedContext).pushReplacement(
                     PageRouteBuilder(
                         pageBuilder: (_, __, ___) => AboutScreen(),
                         transitionDuration: Duration.zero
                     )
                 ); // (_) => false prevents any back button
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
//                Navigator.pushNamedAndRemoveUntil( passedContext, '/profile', (_) => false ); // (_) => false prevents any back button
                  Navigator.of(passedContext).pushReplacement(
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ProfileScreen(),
                          transitionDuration: Duration.zero
                      )
                  );
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
//                Navigator.pushNamedAndRemoveUntil(passedContext, '/mycoins', (_) => false,  // (_) => false prevents any back button*/);
                  Navigator.of(passedContext).pushReplacement(
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => UserCoinScreen(),
                          transitionDuration: Duration.zero
                      )
                  );
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
//                 Navigator.pushNamedAndRemoveUntil( passedContext, '/publiccoins', (_) => false ); // (_) => false prevents any back button
                   Navigator.of(passedContext).pushReplacement(
                       PageRouteBuilder(
                           pageBuilder: (_, __, ___) => PublicCoinsScreen(),
                           transitionDuration: Duration.zero
                       )
                   );
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
