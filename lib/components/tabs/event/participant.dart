import 'package:bikemate/UI/images.dart';

class Participant {
  final name;
  final profilePhoto;
  Participant({this.name, this.profilePhoto});

  static final participans = [
    Participant(
      name: "Ahmet Hızlı",
      profilePhoto: Images.participantPhoto1,
    ),
    Participant(
      name: "Hasan Yılmaz",
      profilePhoto: Images.participantPhoto2,
    ),
    Participant(
      name: "Nisa Aksu",
      profilePhoto: Images.participantPhoto3,
    ),
    Participant(
      name: "Metehan Koç",
      profilePhoto: Images.participantPhoto4,
    )
  ];
}
