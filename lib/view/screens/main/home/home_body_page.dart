import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HomeAppBar(),
        SliverSizedBox.setHeight(45.0),
        _setCategory('For you', AssetIcons.filters),
        SliverSizedBox.setHeight(24.0),
        _showForYouChild(),
        _setSliverText('Collections'),
        _showCollectionList(),
        _setSliverText('Discover'),
        _showDiscoveryCards(),
        SliverSizedBox.setHeight(56.0),
        _showLocationIcon(),
        _setCategory('Upcoming', AssetIcons.right),
        SliverSizedBox.setHeight(24.0),
        _upcomingList(),
        SliverSizedBox.setHeight(25.0),
      ],
    );
  }

  SliverList _upcomingList() => SliverList(
        delegate: SliverChildListDelegate(
          List.generate(
            EventData.eventList.length,
            (index) => _showUpcomingLayout(EventData.eventList[index]),
          ),
        ),
      );

  _showUpcomingLayout(EventModel event) => Padding(
        padding: MyEdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(276.0),
              width: getProportionateScreenWidth(40.0),
              child: Column(
                children: [
                  DateCard(dateTime: DateTime.now()),
                  Flexible(
                    child: ListView.builder(
                        itemCount: 12,
                        padding: MyEdgeInsets.symmetric(vertical: 8.0),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: MyEdgeInsets.symmetric(vertical: 8.0),
                            child: SvgPicture.asset(AssetIcons.placeholder,
                            height: 4,
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                EventMediumCard(event),
                SizedBox(height: getProportionateScreenHeight(16.0)),
                EventMoreCard(image: event.imageUrl),
              ],
            ),
          ],
        ),
      );

  SliverToBoxAdapter _showLocationIcon() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: MyEdgeInsets.symmetric(horizontal: 16.0),
        child: TextWithIcon(
          AssetIcons.locationMisc,
          'WARSHAW',
          color: ConstColors.greyer,
        ),
      ),
    );
  }

  SliverToBoxAdapter _showForYouChild() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: getProportionateScreenHeight(256.0),
        child: ListView.builder(
            padding: MyEdgeInsets.symmetric(horizontal: 8),
            scrollDirection: Axis.horizontal,
            itemCount: EventData.eventList.length,
            itemBuilder: (_, index) {
              EventModel eventModel = EventData.eventList[index];
              return RecommendedLargeCard(eventModel);
            }),
      ),
    );
  }

  SliverToBoxAdapter _showCollectionList() => SliverToBoxAdapter(
        child: SizedBox(
          height: getProportionateScreenHeight(161.0),
          child: ListView.builder(
              itemCount: EventData.eventList.length,
              padding: MyEdgeInsets.symmetric(horizontal: 8.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                EventModel eventModel = EventData.eventList[index];
                return EventSmallCard(eventModel: eventModel);
              }),
        ),
      );

  SliverToBoxAdapter _showDiscoveryCards() => SliverToBoxAdapter(
        child: SizedBox(
          height: getProportionateScreenHeight(56.0),
          child: ListView.builder(
              padding: MyEdgeInsets.symmetric(horizontal: 8.0),
              itemCount: DiscoverData.discoverList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Discover discover = DiscoverData.discoverList[index];
                return DiscoverCard(
                  discover.icon,
                  discover.title,
                  discover.color,
                );
              }),
        ),
      );

  SliverToBoxAdapter _setCategory(String title, String assetIcon) =>
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(title, size: 28.0, weight: FontWeight.w700),
              MyIconButton(onPressed: () {}, assetIcon: assetIcon),
            ],
          ),
        ),
      );

  SliverToBoxAdapter _setSliverText(String text) => SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(16.0),
            top: getProportionateScreenHeight(56.0),
            bottom: getProportionateScreenHeight(25.0),
          ),
          child: MyText(text, size: 28.0, weight: FontWeight.w700),
        ),
      );
}
