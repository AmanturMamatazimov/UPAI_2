import 'package:flutter/material.dart';
import 'package:upai_app/provider/selectCatProvider.dart';
import 'package:upai_app/provider/selectTabProvider.dart';
import 'package:upai_app/views/auth/sing_in/sing_in_screen.dart';
import 'package:upai_app/views/category/selectCategoty.dart';
import 'package:upai_app/views/splash_page/splash_page.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(Upai());
}

class Upai extends StatelessWidget {
  const Upai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>SelectCatProvider()),
        ChangeNotifierProvider(create: (_)=>SelectTabProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
