import 'package:bikemate/UI/images.dart';
import 'package:bikemate/components/tabs/event/participant.dart';

class Event {
  final participants;
  final startDate;
  final limit;
  final title;
  final description;
  final photo;

  Event(
      {this.participants,
      this.startDate,
      this.limit,
      this.title,
      this.description,
      this.photo});

  static final events = [
    Event(
      participants: Participant.participans,
      startDate: DateTime.utc(2020, 11, 9),
      limit: 4,
      title: "Lorem ipsum dolor sit amet",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      photo: Images.event1,
    ),
    Event(
      participants: Participant.participans,
      startDate: DateTime.utc(2021, 11, 9),
      limit: 5,
      title: "Consectetur adipiscing elit",
      description:
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
      photo: Images.event2,
    ),
    Event(
      participants: Participant.participans,
      startDate: DateTime.utc(2022, 11, 9),
      limit: 3,
      title: "Ut enim ad minim veniam",
      description:
          "Gravida arcu ac tortor dignissim. Non blandit massa enim nec. At imperdiet dui accumsan sit amet nulla facilisi.",
      photo: Images.event3,
    ),
    Event(
      participants: Participant.participans,
      startDate: DateTime.utc(2022, 10, 9),
      limit: 6,
      title: "Occaecat cupidatat non proiden",
      description:
          "Hac habitasse platea dictumst vestibulum rhoncus est pellentesque elit.",
      photo: Images.event4,
    )
  ];
}
