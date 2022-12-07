import 'package:flutter/material.dart';

class Isbike {
  final name;
  final lat;
  final lng;

  const Isbike({
    this.name,
    this.lat,
    this.lng,
  });

  static const List<Isbike> Isbikes = [
    Isbike(
      lat: 40.952266,
      lng: 29.090789,
      name: "Bostancı İDO - 2",
    ),
    Isbike(
      lat: 40.96330,
      lng: 29.06631,
      name: "Caddebostan Migros",
    ),
    Isbike(
      lat: 40.95287,
      lng: 29.09019,
      name: "Bostancı İDO - 1",
    ),
    Isbike(
      lat: 40.94661,
      lng: 29.10169,
      name: "Maltepe Kültür Merkezi-1",
    ),
    Isbike(
      lat: 40.9249313794,
      lng: 29.123945947,
      name: "Süreyya Paşa Plajı",
    ),
    Isbike(
      lat: 40.990497,
      lng: 29.018865,
      name: "Kadıköy Balon - 1",
    ),
    Isbike(
      lat: 40.912090533,
      lng: 29.1339457835,
      name: "Piri Reis - 1",
    ),
    Isbike(
      lat: 40.90171518,
      lng: 29.1465356,
      name: "Dragos Sosyal Tesisleri",
    ),
    Isbike(
      lat: 40.8900638046,
      lng: 29.1750217889,
      name: "Kartal Sahil - 1",
    ),
    Isbike(
      lat: 40.887286,
      lng: 29.187681,
      name: "Kartal İDO - 1",
    ),
    Isbike(
      lat: 40.97069,
      lng: 28.79055,
      name: "Güneş Plajı",
    ),
  ];
}
