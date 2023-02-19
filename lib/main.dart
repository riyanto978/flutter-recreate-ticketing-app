import 'package:app_movie_ticket/pages/register_page.dart';
import 'package:app_movie_ticket/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: ScreenUtilInit(
        designSize: Size(360, 640),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              inputDecorationTheme: InputDecorationTheme(
                floatingLabelStyle: TextStyle(
                  color: Colors.amber,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
            home: child,
          );
        },
        child: const RegisterPage(),
      ),
    );
  }
}
