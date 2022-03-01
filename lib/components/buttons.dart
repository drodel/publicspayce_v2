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

Container aboutButton () {
  return Container(
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
  ); // About Container
}

Column yourProfileButton () {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const Icon(
          Icons.person_outlined,
          color: kButtonIconColor
      ),
      Text('Profile', style: buttonTextStyle()),
    ],
  ); // Profile Container
}

Column yourCoinsButton () {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:<Widget> [
      const Icon(
          Icons.favorite_border_outlined,
          color: kButtonIconColor
      ),
      Text('Your', style: buttonTextStyle()),
      Text('Coins', style: buttonTextStyle()),
    ],
  ); // Your Coins Container
}

Container publicCoinsButton () {
  return Container(
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
  ); // Public Coins Container
}
