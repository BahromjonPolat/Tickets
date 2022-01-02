import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with TickerProviderStateMixin {
  final double _containerSize = 164.0;

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      lowerBound: 0.0,
      upperBound: 1.0,
    );

    _animationController.forward();
    Timer(const Duration(seconds: 2), () {
      // _goToPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    CustomNavigator().init(context);
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            _showLogo(
              alignment: Alignment(
                _animationController.value * 6.0,
                _animationController.value * 3.0,
              ),
              color: ConstColors.black,
            ),
            _showLogo(),
            _showLabel(),
            _setOwnerName(),
          ],
        ),
      ),
    );
  }

  AnimatedContainer _showLogo({
    Alignment alignment = Alignment.center,
    Color color = ConstColors.blue,
  }) {
    return AnimatedContainer(
      alignment: alignment,
      duration: const Duration(seconds: 2),
      height: getProportionateScreenHeight(_containerSize),
      width: getProportionateScreenWidth(_containerSize),
      curve: Curves.bounceOut,
      child: SvgPicture.asset(
        AssetIcons.ticket,
        height: getProportionateScreenHeight(140.0),
        width: getProportionateScreenWidth(140.0),
        color: color,
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
          'By Bakhromjon Polat',
          color: ConstColors.blue,
        ),
      );

  void _goToPage() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    bool isStarted = _pref.getBool("isLogged") ?? false;
    if (!isStarted) {
      _setNavigator(HomePage());
    } else {
      _setNavigator(HomePage());
    }
  }

  void _setNavigator(Widget page) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => page),
    );
  }
}
