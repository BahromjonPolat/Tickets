import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      body: HomePageBody(),
    );
  }
}
