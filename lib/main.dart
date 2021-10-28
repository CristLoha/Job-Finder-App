import 'package:flutter/material.dart';
import 'package:jobby_app/pages/detail_page.dart';
import 'package:jobby_app/pages/main_page.dart';
import 'package:jobby_app/pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/main-page': (context) => MainPage(),
        '/detail-page': (context) => DetailPage(),
      },
    );
  }
}
