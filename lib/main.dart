import 'package:flutter/material.dart';
import 'package:publicspayce_v2/constants.dart';
import 'package:publicspayce_v2/screens/about.dart';
import 'package:publicspayce_v2/screens/profile.dart';
import 'package:publicspayce_v2/screens/public_coins.dart';
import 'package:publicspayce_v2/screens/user_coins.dart';

void main() => runApp( const PublicSpayce() );

class PublicSpayce extends StatelessWidget {
  const PublicSpayce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: kTitle,
        initialRoute: '/',
        routes: {
          '/': (context) => PublicCoinsScreen(),
          '/publiccoins': (context) => PublicCoinsScreen(),
          '/about': (context) => AboutScreen(),
          '/profile': (context) => ProfileScreen(),
          '/mycoins': (context) => UserCoinScreen()
        },
        theme: ThemeData(
          // https://api.flutter.dev/flutter/material/ThemeData-class.html
          scaffoldBackgroundColor: kScaffoldBackgroundColor,
          textTheme: const TextTheme(bodyText2: kBodyText2,),
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: kScaffoldBackgroundColor,
          ).copyWith(
            secondary: kPrimaryColorSwatch,
          ),
        )
    );
  }
}
