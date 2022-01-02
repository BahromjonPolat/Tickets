import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  late BottomNavBarProvider _barProvider;

  @override
  Widget build(BuildContext context) {
    _barProvider = context.watch();
    return Scaffold(
      bottomNavigationBar: const MyBottomNavigationBar(),
      body: _pageList[_barProvider.currentIndex],
    );
  }

  final List _pageList = [
    const HomePageBody(),
    SearchPageBody(),
    const TicketsPageBody(),
    const ProfilePageBody(),
  ];
}
