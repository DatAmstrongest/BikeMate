import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PhotoTab extends StatelessWidget {
  final images;
  const PhotoTab({this.images});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: EdgeInsets.only(
          top: 10,
        ),
        crossAxisCount: 2,
        children: List.generate(images.length, (index) {
          return SizedBox(
            height: 30,
            child: images[index],
          );
        }));
  }
}
