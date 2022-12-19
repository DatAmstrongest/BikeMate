import 'package:bikemate/components/tabs/event/participant.dart';

class Event {
  final participants;
  final startDate;
  final endDate;

  Event({this.participants, this.startDate, this.endDate});

  static final events = [
    Event(
      participants: Participant.participans,
      startDate: DateTime.utc(2020, 11, 9),
      endDate: DateTime.utc(2020, 11, 15),
    ),
    Event(
      participants: Participant.participans,
      startDate: DateTime.utc(2021, 11, 9),
      endDate: DateTime.utc(2021, 11, 15),
    ),
    Event(
      participants: Participant.participans,
      startDate: DateTime.utc(2022, 11, 9),
      endDate: DateTime.utc(2022, 11, 15),
    ),
    Event(
      participants: Participant.participans,
      startDate: DateTime.utc(2022, 10, 9),
      endDate: DateTime.utc(2022, 10, 15),
    )
  ];
}
