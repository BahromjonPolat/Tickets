import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SearchPageBody extends StatelessWidget {
  SearchPageBody({Key? key}) : super(key: key);
  late double _height;
  late double _width;
  late SearchProvider _searchProvider;
  
  @override
  Widget build(BuildContext context) {
    _searchProvider = context.watch();
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          PhotoView(
            imageProvider: const AssetImage(AssetImages.map),
            customSize: Size(_width, _height),
            minScale: PhotoViewComputedScale.contained * 2,
            maxScale: PhotoViewComputedScale.contained * 5,
          ),
          Positioned(
              top: getProportionateScreenHeight(60.0),
              left: 0.0,
              right: 0.0,
              child: const SearchPageTopBar()),
          ],
      ),
      bottomSheet: Visibility(
        visible: _searchProvider.isBottomSheetVisible,
        child: Container(
          height: getProportionateScreenHeight(131.0),
          padding: MyEdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            borderRadius: MyBorderRadius.only(topLeft: 16.0, topRight: 16.0),
          ),
          child: Column(
            children: [
              SvgPicture.asset(AssetIcons.handle),
              const TableEvent(),
            ],
          ),
        ),
      ),
    );
  }
}
