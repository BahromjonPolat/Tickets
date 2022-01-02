import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class DetailsPage extends StatelessWidget {
  EventModel eventModel;

  DetailsPage(this.eventModel, {Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  late BottomTicketPriceProvider _provider;
  late BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    _provider = context.watch();
    return Scaffold(
      backgroundColor: ConstColors.darkNavy,
      body: NotificationListener(
        onNotification: (Notification t) {
          _provider.changeMode(_scrollController.position.pixels);
          return true;
        },
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            DetailsPageAppBar(eventModel: eventModel),
            _setEventInfo(),
            _showMoreInfo(),
          ],
        ),
      ),
      bottomNavigationBar: _provider.isDark
          ? BottomBarTicketPriceDark(onPressed: _onBuyTicketsPressed)
          : BottomBarTicketPriceLight(onPressed: _onBuyTicketsPressed),
    );
  }

  SliverToBoxAdapter _showMoreInfo() {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: MyBorderRadius.only(topRight: 16.0, topLeft: 16.0),
          color: ConstColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: MyEdgeInsets.symmetric(vertical: 27.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _setTitle('Details'),
                  MySizedBox(height: 8.0),
                  MyText(eventModel.details,
                      size: 15.0, weight: FontWeight.w400),
                  MyTextButton(onPressed: () {}, label: 'More'),
                  MySizedBox(height: 8.0),
                  _setCategory('Updates', AssetIcons.notify),
                  MySizedBox(height: 8.0),
                  MyText(
                    'July 24. 2021',
                    color: ConstColors.grey68,
                    weight: FontWeight.w700,
                  ),
                  MyText(eventModel.updates,
                      size: 15.0, weight: FontWeight.w400),
                  MyTextButton(onPressed: () {}, label: 'More'),
                  MySizedBox(height: 32.0),
                  _setTitle('Location'),
                  const MapCard(),
                  MyText(
                    'Data Boi Concert Hall',
                    color: ConstColors.grey68,
                    size: 15.0,
                    weight: FontWeight.w700,
                  ),
                  MySizedBox(height: 10.0),
                  MyText(
                    '5/7 Kolejowa, 01-217 Warsawn',
                    weight: FontWeight.w400,
                    size: 15.0,
                    color: ConstColors.grey68,
                  ),
                  MySizedBox(height: 41.0),
                  _setTitle('Performers'),
                  MySizedBox(height: 24.0),
                  TablePerformer(),
                  TablePerformer(),
                  MySizedBox(height: 36.0),
                  _setTitle('Organized'),
                  MySizedBox(height: 12.0),
                  TablePerformer(),
                ],
              ),
            ),
            _showMoreEventList('Also in this avenue'),
            MySizedBox(height: 48.0),
            _showMoreEventList('More like this'),
            MySizedBox(height: 88.0),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _setEventInfo() => SliverToBoxAdapter(
        child: Container(
          height: getProportionateScreenHeight(306.0),
          width: getProportionateScreenWidth(375.0),
          padding: MyEdgeInsets.symmetric(horizontal: 16.0, vertical: 17.0),
          color: ConstColors.darkNavy,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                eventModel.title,
                size: 28.0,
                weight: FontWeight.w700,
                color: ConstColors.white,
              ),
              MySizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _setTextWithIcon(AssetIcons.calendar, 'Friday, 24 Aug 2019'),
                  _setTextWithIcon(AssetIcons.dot, '6:30PM - 9:30PM'),
                ],
              ),
              _showAddress(),
              MySizedBox(height: 14.0),
              _setTextWithIcon(AssetIcons.musicTag, eventModel.genre),
              MySizedBox(height: 15.0),
              _setTextWithIcon(
                AssetIcons.ticket,
                '\$${eventModel.minPrice} - \$${eventModel.maxPrice}',
              ),
              MySizedBox(height: 15.0),
              _setTextWithIcon(AssetIcons.organizer, 'Club Kiss'),
            ],
          ),
        ),
      );

  _showMoreEventList(String title) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: MyEdgeInsets.symmetric(horizontal: 16.0),
            child: _setTitle(title),
          ),
          MySizedBox(height: 16.0),
          SizedBox(
            height: getProportionateScreenHeight(161.0),
            child: ListView.builder(
                padding: MyEdgeInsets.symmetric(horizontal: 8.0),
                scrollDirection: Axis.horizontal,
                itemCount: EventData.eventList.length,
                itemBuilder: (context, index) {
                  EventModel event = EventData.eventList[index];
                  return Padding(
                    padding: MyEdgeInsets.symmetric(horizontal: 8.0),
                    child: EventMediumCard(event),
                  );
                }),
          )
        ],
      );

  ListTile _showAddress() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 20.0,
      leading: SvgPicture.asset(
        AssetIcons.navigation,
        color: ConstColors.white,
      ),
      title: MyText(
        'Daboi Concert Hall',
        size: 16.0,
        weight: FontWeight.w400,
        color: ConstColors.white,
      ),
      subtitle: MyText(
        '5/7 Kolejowa, 01-217 Warsaw',
        size: 10.0,
        color: ConstColors.darkerGrey,
      ),
    );
  }

  TextWithIcon _setTextWithIcon(String assetIcon, String title) {
    return TextWithIcon(
      assetIcon,
      title,
      color: ConstColors.white,
      weight: FontWeight.w400,
      width: 10.0,
      textSize: 16.0,
    );
  }

  MyText _setTitle(String title) =>
      MyText(title, size: 18, weight: FontWeight.w700);

  Row _setCategory(String title, String assetIcon) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _setTitle(title),
          Material(
              shadowColor: ConstColors.black,
              elevation: 1.0,
              borderRadius: MyBorderRadius.circular(radius: 100.0),
              child: MyIconButton(
                onPressed: () {},
                assetIcon: assetIcon,
              )),
        ],
      );

  void _onBuyTicketsPressed() {
    Navigator.push(
        _context, MaterialPageRoute(builder: (_) => TicketsTimePage()));
  }

  final String _detailText =
      'Free directories: directories are perfect for customers that are searching for a particular topic. What’s great about them is that you only have to post once and they are good for long periods of time. It saves a lot of your time when you don’t have to resubmit your information every week…';
}
