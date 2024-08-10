import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/browse/presentation/pages/browse_tab.dart';
import 'package:movies_app/home_screen.dart';
import 'package:movies_app/features/home/presentation/pages/home_tab.dart';
import 'package:movies_app/search_tab.dart';
import 'package:movies_app/watch_list_tab.dart';
import 'package:movies_app/features/login/presentation/pages/login.dart';
import 'package:movies_app/features/signUp/presentation/pages/signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
       initialRoute: LoginScreen.routeName,
        routes: {
          HomeScreen.routeName:(context)=>HomeScreen(),
          BrowseTab.routeName:(context)=> BrowseTab(),
          SearchTab.routeName:(context)=>const SearchTab(),
          WatchListTab.routeName:(context)=>const WatchListTab(watchlist: [],),
         HomeTab.routeName:(context)=>HomeTab(results: [], data: [],),
          SignUpScreen.routeName:(context)=>SignUpScreen(),
          LoginScreen.routeName:(context)=>LoginScreen(),
        },
      ),
    );
  }
}
