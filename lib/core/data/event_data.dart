import 'package:ticket/core/components/exporting_packages.dart';

class EventData {
  static final List<EventModel> _eventList = [
    EventModel.withId(
      '1',
      'Halqa kitobi taqdimoti',
      'Book',
      'KitoblR',
      'Kitoblar',
      Links.moreBooks,
      55.0,
      72.0,
      DateTime.now(),
    ),
    EventModel.withId(
      '2',
      'Brightlight Festival',
      'Indie Rock',
      _updates,
      _details,
      Links.eventPhone,
      12.0,
      90.0,
      DateTime.now(),
    ),
    EventModel.withId(
      '3',
      'Application Event',
      'Phone',
      _updates,
      _details,
      Links.appEvent,
      55.0,
      72.0,
      DateTime.now(),
    ),
    EventModel.withId(
      '4',
      'Under light festival',
      'Indie Rock',
      _updates,
      _details,
      Links.eventUnderLights,
      45.0,
      72.0,
      DateTime.now(),
    ),
    EventModel.withId(
      '5',
      'New books festival',
      'Books',
      _updates,
      _details,
      Links.girlInFrontOfBooks,
      45.0,
      72.0,
      DateTime.now(),
    ),
    EventModel.withId(
      '6',
      'New books festival',
      'Books',
      _updates,
      _details,
      Links.booksWithLamps,
      45.0,
      72.0,
      DateTime.now(),
    ),
    EventModel.withId(
      '6',
      'Noisy event',
      'Music',
      _updates,
      _details,
      Links.noisyEvent,
      45.0,
      72.0,
      DateTime.now(),
    ),
  ];

  static const String _details =
      "Free directories: directories are perfect for customers that are searching for a particular topic. What’s great about them is that you only have to post once and they are good for long periods of time. It saves a lot of your time when you don’t have to resubmit your information every week…";

  static const String _updates = "July 24, 2019 \nCustomers that are searching for a particular topic. What’s great about them is that you only have…";

  static List<EventModel> get eventList => _eventList;
}
