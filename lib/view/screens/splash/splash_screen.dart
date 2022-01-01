import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SplashScreenPage extends StatelessWidget {
  SplashScreenPage({Key? key}) : super(key: key);

  double _containerSize = 164.0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomePage()));
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: ConstColors.darkNavy,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            _showLogo(),
            _showLabel(),
            _setOwnerName(),
          ],
        ),
      ),
    );
  }

  AnimatedContainer _showLogo() {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      height: getProportionateScreenHeight(_containerSize),
      width: getProportionateScreenWidth(_containerSize),
      curve: Curves.easeInOutExpo,
      child: SvgPicture.asset(
        AssetIcons.ticket,
        // height: getProportionateScreenHeight(_containerSize),
        // width: getProportionateScreenWidth(_containerSize),
        color: ConstColors.blue,
      ),
    );
  }

  Positioned _showLabel() {
    return Positioned(
      bottom: getProportionateScreenHeight(280.0),
      child: MyText(
        'Get Tickets',
        size: 28.0,
        weight: FontWeight.w600,
        color: ConstColors.blue.withOpacity(0.6),
      ),
    );
  }

  Positioned _setOwnerName() => Positioned(
        bottom: getProportionateScreenHeight(24.0),
        child: MyText(
          'By Bakromjon Polat',
          color: ConstColors.blue,
        ),
      );
}
