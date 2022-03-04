import 'package:flutter/material.dart';
import 'package:publicspayce_v2/screens/public_spayce_base_template.dart';

/*
    This claas maintains all interactions with the user's profile.
 */

class ProfileScreen extends StatelessWidget {

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return publicSpayceBase( context, 'Profile Screen' );
  }
}
