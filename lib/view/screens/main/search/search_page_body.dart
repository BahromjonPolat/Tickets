import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SearchPageBody extends StatelessWidget {
   SearchPageBody({Key? key}) : super(key: key);
   late double _height;
   late double _width;
  @override
  Widget build(BuildContext context) {
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
    );
  }

}
