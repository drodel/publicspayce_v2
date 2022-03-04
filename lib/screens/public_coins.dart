import 'package:flutter/material.dart';
import 'package:publicspayce_v2/screens/public_spayce_base_template.dart';

/*
    This class maintains all interactions with public coins.
 */

class PublicCoinsScreen extends StatelessWidget {

  const PublicCoinsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return publicSpayceBase( context, 'Public Coins Screen');
  }
}
