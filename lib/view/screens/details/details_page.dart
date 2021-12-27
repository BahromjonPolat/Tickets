import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DetailsPageAppBar(),
        ],
      ),
    );
  }
}
