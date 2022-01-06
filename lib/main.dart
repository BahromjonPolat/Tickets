import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

void main() {

  // Ilovada provider'dan foydalnailgan
  runApp(
    MultiProvider(
      providers: [
        // Asosiy sahifadagi BottomNavigationBar'ni boshqarish uchun
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),

        // DetailsPage`dagi Scroll`ga qarab mavzuni o'zgartiradi
        ChangeNotifierProvider(create: (_) => BottomTicketPriceProvider()),

        // Foydalanuvchi Tizimga kirish va chiqishini boshqarish uchun
        ChangeNotifierProvider(create: (_) => AuthProvider()),

        // SearchPage'dagi topilgan natijalarni ko'rsatish uchun
        ChangeNotifierProvider(create: (_) => SearchProvider()),
      ],
      child: const MyApp(),
    ),
  );

  // Ilova orientatsiyasini faqat portraitUp (vertikal) rejimida bo'lishi uchun
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // StatusBar Temasi
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Ilova ishga tushganda birinchi bo'lib SplashScreenPage sahifasi ochiladi
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket',
      debugShowCheckedModeBanner: false,
      theme: MainTheme.light,
      home: const SplashScreenPage(),
    );
  }
}
