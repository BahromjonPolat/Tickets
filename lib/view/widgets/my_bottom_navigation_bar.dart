import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({Key? key}) : super(key: key);
  late BottomNavBarProvider _provider;

  @override
  Widget build(BuildContext context) {
    _provider = context.watch();
    return SizedBox(
      height: getProportionateScreenHeight(88.0),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _provider.currentIndex,
        onTap: _provider.onTap,
        items: _bottomNavigationBarItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _bottomNavigationBarItems() {
    return <BottomNavigationBarItem>[
      _setBottomNavigationBarItem(
        _provider.currentIndex == 0
            ? AssetIcons.homeActive
            : AssetIcons.homeInactive,
      ),
      _setBottomNavigationBarItem(
        _provider.currentIndex == 1
            ? AssetIcons.searchActive
            : AssetIcons.searchInactive,
      ),
      _setBottomNavigationBarItem(
        _provider.currentIndex == 2
            ? AssetIcons.ticketActive
            : AssetIcons.ticketInactive,
      ),
      _setBottomNavigationBarItem(
        _provider.currentIndex == 3
            ? AssetIcons.userActive
            : AssetIcons.userInactive,
      ),
    ];
  }

  BottomNavigationBarItem _setBottomNavigationBarItem(String assetIcon) =>
      BottomNavigationBarItem(icon: SvgPicture.asset(assetIcon), label: "");
}
