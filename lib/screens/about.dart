import 'package:flutter/material.dart';
import 'package:publicspayce_v2/screens/public_spayce_base_template.dart';

/*
    This class maintains all interactions with the about section
    of publicSpayce.
 */

class AboutScreen extends StatelessWidget {

  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return publicSpayceBase( context, 'About Screen' );
  }
}
