import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SearchPageAppBar extends StatelessWidget with PreferredSizeWidget {
  SearchPageAppBar({Key? key}) : super(key: key);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      toolbarHeight: getProportionateScreenHeight(96.0),
      pinned: true,
      title: SearchTextField(),
      bottom: PreferredSize(
        preferredSize: Size(
          double.infinity,
          getProportionateScreenHeight(32.0),
        ),
        child: Expanded(
          child: ListView.builder(
              padding: MyEdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return SearchPageButton(
                  onPressed: () {},
                  label: 'label',
                  color:
                      _currentIndex == i ? ConstColors.red : ConstColors.grey,
                );
              }),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
