import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';
import 'package:ticket/view/widgets/topBar/home_page_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: HomeAppBar(),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
