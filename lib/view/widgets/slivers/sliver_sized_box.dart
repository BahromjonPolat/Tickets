import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SliverSizedBox {
  static SliverToBoxAdapter setHeight(double height) => SliverToBoxAdapter(
        child: SizedBox(height: getProportionateScreenHeight(height)),
      );

  static SliverToBoxAdapter setWidth(double width) => SliverToBoxAdapter(
        child: SizedBox(width: getProportionateScreenWidth(width)),
      );
}
