import 'package:bot_toast/bot_toast.dart';
import 'package:education/screen/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360.0, 744.0),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () {
          final botToastBuilder = BotToastInit();
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Book App',
            builder: (context, child) {
              ScreenUtil.setContext(context);
              child = MediaQuery(
                //Setting font does not change with system font size
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child!,
              ); //do something
              child = botToastBuilder(context, child);
              return child;
            },
            navigatorObservers: [BotToastNavigatorObserver()],
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const Welcome(),
          );
        });
  }
}
