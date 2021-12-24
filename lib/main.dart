import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
      ],
      child: const MyApp(),
    ),
  );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: ConstColors.background,
        primaryColor: ConstColors.primaryOrange,
      ),
      home: const HomePage(),
    );
  }
}
