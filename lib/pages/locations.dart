import 'package:bikemate/UI/images.dart';
import 'package:bikemate/components/tabs/comment/comment.dart';
import 'package:bikemate/components/tabs/event/event.dart';
import 'package:flutter/material.dart';

class Location {
  final type;
  final name;
  final lat;
  final lng;
  final address;
  final images;
  final comments;
  final events;

  Location({
    this.type,
    this.name,
    this.lat,
    this.lng,
    this.images,
    this.address,
    this.comments,
    this.events,
  });

  static List<Location> locations = [
    Location(
      type: "isbike",
      lat: 40.952266,
      lng: 29.090789,
      address: "Bostancı, Çetin Emeç Blv., 34744 Kadıköy/İstanbul",
      name: "Bostancı İDO - 2",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
      events: Event.events,
    ),
    Location(
      type: "isbike",
      lat: 40.96330,
      lng: 29.06631,
      address:
          "Caddebostan, Operatör Cemil Topuzlu Cd. No:136, 34728 Kadıköy/İstanbul",
      name: "Caddebostan Migros",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
      events: Event.events,
    ),
    Location(
      type: "isbike",
      lat: 40.95287,
      lng: 29.09019,
      address: "Bostancı, Çetin Emeç Blv., 34744 Kadıköy/İstanbul",
      name: "Bostancı İDO - 1",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
      events: Event.events,
    ),
    Location(
      type: "isbike",
      lat: 40.94661,
      lng: 29.10169,
      address: "Küçükyalı, Turgut Özal Blv., 34840 Maltepe/İstanbul",
      name: "Maltepe Kültür Merkezi-1",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
      events: Event.events,
    ),
    Location(
      type: "isbike",
      lat: 40.9249313794,
      lng: 29.123945947,
      address: "Yalı, Turgut Özal Blv., 34844 Maltepe/İstanbul",
      name: "Süreyya Paşa Plajı",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
      events: Event.events,
    ),
    Location(
      type: "isbike",
      lat: 40.990497,
      lng: 29.018865,
      address: "Caferağa, Neşet Ömer Sk. No:22, 34710 Kadıköy/İstanbul",
      name: "Kadıköy Balon - 1",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
      events: Event.events,
    ),
    Location(
      type: "isbike",
      lat: 40.912090533,
      lng: 29.1339457835,
      address: "Yalı, Turgut Özal Blv., 34844 Maltepe/İstanbul",
      name: "Piri Reis - 1",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
      events: Event.events,
    ),
    Location(
      type: "isbike",
      lat: 40.90171518,
      lng: 29.1465356,
      address: "Anatolian Side, Orhantepe, 34865 Kartal/İstanbul",
      name: "Dragos Sosyal Tesisleri",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
      events: Event.events,
    ),
    Location(
      type: "isbike",
      lat: 40.8900638046,
      lng: 29.1750217889,
      address: "Kordonboyu, Çetin Emeç Blv, 34860 Kartal/İstanbul",
      name: "Kartal Sahil - 1",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
      events: Event.events,
    ),
    Location(
      type: "isbike",
      lat: 40.887286,
      lng: 29.187681,
      address:
          "Kordonboyu Mah. Çetin Emeç Bulv., Belediye Karşısı, Kartal Merkez, Kartal, İstanbul",
      name: "Kartal İDO - 1",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
      events: Event.events,
    ),
    Location(
      type: "isbike",
      lat: 40.97069,
      lng: 28.79055,
      address: "European Side, Şenlikköy, 34153 Bakırköy/İstanbul",
      name: "Güneş Plajı",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
      events: Event.events,
    ),
    Location(
      type: "beltur",
      lat: 41.033590,
      lng: 29.025257,
      address: "Kuzguncuk, Paşa Limanı Cd. 73-69, 34674 Üsküdar/İstanbul",
      name: "Paşalimanı Restoran",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
    ),
    Location(
      type: "beltur",
      lat: 40.992997,
      lng: 29.022805,
      address:
          "Karaköy - Eminönünü, Vapur İskelesi, Rıhtım Cd., 34714 Kadıköy/İstanbul",
      name: "Kadıköy İskele",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
    ),
    Location(
      type: "beltur",
      lat: 40.949694,
      lng: 29.098722,
      address: "Altıntepe, Park İçi Yolu, 34840 Maltepe/İstanbul",
      name: "Altıntepe",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
    ),
    Location(
      type: "beltur",
      lat: 40.952151,
      lng: 29.094568,
      address:
          "Bostancı Mh, Çetin Emeç Blv. No:40, 34744, 34744 Kadıköy/İstanbul",
      name: "Bostancı",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
    ),
    Location(
      type: "beltur",
      lat: 40.954913,
      lng: 29.086833,
      address: "Bostancı, Park İçi Yolu, 34744 Kadıköy/İstanbul",
      name: "Suadiye Sahil",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
    ),
    Location(
      type: "beltur",
      lat: 40.962983,
      lng: 29.064053,
      address:
          "Caddebostan, Operatör Cemil Topuzlu Cd. 132 B, 34728 Kadıköy/İstanbul",
      name: "Caddebostan Sahil",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
    ),
    Location(
      type: "station",
      lat: 40.995231,
      lng: 29.034232,
      address: "Acıbadem, Acıbadem Cd. No:13 D:15A, 34718 Kadıköy/İstanbul",
      name: "Acıbadem Atilla Bike",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
    ),
    Location(
      type: "station",
      lat: 40.980390,
      lng: 29.041582,
      address:
          "Fenerbahçe, BP Benzin İstasyonu Yanı, Fenerbahçe Mah.Fener-Kalamış Caddesi.No:5 Billur Apt. Altı Dükkan, Kızıltoprak No:5, 34726 Kadıköy/İstanbul",
      name: "Kaçkar Bike",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
    ),
    Location(
      type: "station",
      lat: 40.974582,
      lng: 29.053522,
      address: "Fenerbahçe, Bağdat Cd. 204-C, 34726 Kadıköy/İstanbul",
      name: "Gürsel Akay Bike",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
    ),
    Location(
      type: "station",
      lat: 40.964380,
      lng: 29.081920,
      address:
          "Suadiye, Mediha Turhan Tansel Sk. No:1/5, 34740 Kadıköy/İstanbul",
      name: "Start Bike",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
    ),
    Location(
      type: "station",
      lat: 41.024898,
      lng: 28.974958,
      address: "Müeyyedzade, 34425 Beyoğlu/İstanbul",
      name: "Isik Bike",
      images: [
        Images.location1,
        Images.location2,
        Images.location3,
        Images.location4,
        Images.location5,
        Images.location6
      ],
      comments: Comment.comments,
    ),
  ];
}
