import 'package:flutter/material.dart';
import 'package:publicspayce_v2/screens/public_spayce_base_template.dart';

/*
    This class maintains the screen for interacting with the user's
    coins.
 */

class UserCoinScreen extends StatelessWidget {

  const UserCoinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return publicSpayceBase( context, "User's Coins Screen" );
  }
}
