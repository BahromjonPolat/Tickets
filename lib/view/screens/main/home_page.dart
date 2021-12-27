import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  late BottomNavBarProvider _barProvider;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    _barProvider = context.watch();
    return  Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      body: _pageList[_barProvider.currentIndex],
    );
  }

   List _pageList =[
    HomePageBody(),
    SearchPageBody(),
    TicketsPageBody(),
    ProfilePageBody(),
  ];
}
