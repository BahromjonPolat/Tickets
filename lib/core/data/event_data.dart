import 'package:ticket/core/components/exporting_packages.dart';

class EventData {
  static final List<EventModel> _eventList = [
    EventModel.withId(
      '1',
      'Halqa kitobi taqdimoti',
      'Book',
      'Kitoble',
      'Kitoblar',
      Links.random,
      55000.0,
      72000.0,
      DateTime.now(),
    ),
    EventModel.withId(
      '2',
      'Brightlight Festival',
      'Indie Rock',
      _updates,
      _details,
      Links.random + '5',
      55000.0,
      72000.0,
      DateTime.now(),
    ),
    EventModel.withId(
      '3',
      'Brightlight Festival',
      'Indie Rock',
      _updates,
      _details,
      Links.random + '7',
      55000.0,
      72000.0,
      DateTime.now(),
    ),
    EventModel.withId(
      '4',
      'Brightlight Festival',
      'Indie Rock',
      _updates,
      _details,
      Links.random + '6',
      55000.0,
      72000.0,
      DateTime.now(),
    ),
  ];

  static const String _details =
      "Free directories: directories are perfect for customers that are searching for a particular topic. What’s great about them is that you only have to post once and they are good for long periods of time. It saves a lot of your time when you don’t have to resubmit your information every week…";

  static const String _updates = "July 24, 2019 \nCustomers that are searching for a particular topic. What’s great about them is that you only have…";
}
