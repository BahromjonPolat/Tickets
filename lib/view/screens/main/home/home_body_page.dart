import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HomeAppBar(),

      ],
    );
  }
}
