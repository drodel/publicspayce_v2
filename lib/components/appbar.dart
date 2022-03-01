import 'package:flutter/material.dart';
import 'package:publicspayce_v2/constants.dart';

AppBar publicSpayceAppBar () {
  return AppBar(
           title: const Center(
           child: Text( kTitle,
                        style: TextStyle(
                            fontSize: kAppBarFontSize,
                            fontFamily: kAppBarFontFamily,
                            color: kAppBarFontColor,
                            fontWeight: FontWeight.bold
                      ),
                    )
                ),
                backgroundColor: kScaffoldBackgroundColor.shade900
            );
}