import 'package:flutter/material.dart';

class Location {
  final type;
  final name;
  final lat;
  final lng;

  const Location({
    this.type,
    this.name,
    this.lat,
    this.lng,
  });

  static const List<Location> locations = [
    Location(
      type: "isbike",
      lat: 40.952266,
      lng: 29.090789,
      name: "Bostancı İDO - 2",
    ),
    Location(
      type: "isbike",
      lat: 40.96330,
      lng: 29.06631,
      name: "Caddebostan Migros",
    ),
    Location(
      type: "isbike",
      lat: 40.95287,
      lng: 29.09019,
      name: "Bostancı İDO - 1",
    ),
    Location(
      type: "isbike",
      lat: 40.94661,
      lng: 29.10169,
      name: "Maltepe Kültür Merkezi-1",
    ),
    Location(
      type: "isbike",
      lat: 40.9249313794,
      lng: 29.123945947,
      name: "Süreyya Paşa Plajı",
    ),
    Location(
      type: "isbike",
      lat: 40.990497,
      lng: 29.018865,
      name: "Kadıköy Balon - 1",
    ),
    Location(
      type: "isbike",
      lat: 40.912090533,
      lng: 29.1339457835,
      name: "Piri Reis - 1",
    ),
    Location(
      type: "isbike",
      lat: 40.90171518,
      lng: 29.1465356,
      name: "Dragos Sosyal Tesisleri",
    ),
    Location(
      type: "isbike",
      lat: 40.8900638046,
      lng: 29.1750217889,
      name: "Kartal Sahil - 1",
    ),
    Location(
      type: "isbike",
      lat: 40.887286,
      lng: 29.187681,
      name: "Kartal İDO - 1",
    ),
    Location(
      type: "isbike",
      lat: 40.97069,
      lng: 28.79055,
      name: "Güneş Plajı",
    ),
    Location(
      type: "beltur",
      lat: 41.033590,
      lng: 29.025257,
      name: "Paşalimanı Restoran",
    ),
    Location(
      type: "beltur",
      lat: 40.992997,
      lng: 29.022805,
      name: "Kadıköy İskele",
    ),
    Location(
      type: "beltur",
      lat: 40.949694,
      lng: 29.098722,
      name: "Altıntepe",
    ),
    Location(
      type: "beltur",
      lat: 40.952151,
      lng: 29.094568,
      name: "Bostancı",
    ),
    Location(
      type: "beltur",
      lat: 40.954913,
      lng: 29.086833,
      name: "Suadiye Sahil",
    ),
    Location(
      type: "beltur",
      lat: 40.962983,
      lng: 29.064053,
      name: "Caddebostan Sahil",
    ),
  ];
}
