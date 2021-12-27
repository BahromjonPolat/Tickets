import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class TicketsPageBody extends StatelessWidget {
  const TicketsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: getProportionateScreenHeight(552.0),
          width: getProportionateScreenWidth(375.0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AssetImages.emptyTickets),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MySizedBox(height: 102.0),
              Padding(
                padding: MyEdgeInsets.symmetric(horizontal: 16.0),
                child: MyText(
                  'Popular',
                  size: 28.0,
                  color: ConstColors.white,
                  weight: FontWeight.w700,
                ),
              ),
              MySizedBox(height: 25.0),
              SizedBox(
                height: getProportionateScreenHeight(32.0),
                child: ListView.builder(
                  padding: MyEdgeInsets.symmetric(horizontal: 8.0),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GlassButton(onPressed: () {}, label: 'FC Barcelona');
                  },
                ),
              ),
            ],
          ),
        ),
        MyText('No tickets bought', size: 28.0, weight: FontWeight.w700),
        SizedBox(height: getProportionateScreenHeight(17.0)),
        MyText(
          'It appears you haven’t bought any tickets yet. Maybe try searching these?',
          size: 15.0,
          color: ConstColors.grey,
          align: TextAlign.center,
        ),
      ],
    );
  }
}
