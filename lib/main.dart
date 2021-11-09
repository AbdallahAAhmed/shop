import 'package:flutter/material.dart';
import 'package:shop_app/account/account.dart';
import 'package:shop_app/welcome_login/sign_up.dart';
import 'package:shop_app/welcome_login/verification.dart';
import 'package:shop_app/welcome_login/welcome.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SF',
      ),
      initialRoute: AccountPage.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        WelcomePage.routeName: (context) => const WelcomePage(),
        SignUpPage.routeName: (context) => const SignUpPage(),
        VerificationPage.routeName: (context) => const VerificationPage(),
        AccountPage.routeName: (context) => const AccountPage(),
      },
    );
  }
}
