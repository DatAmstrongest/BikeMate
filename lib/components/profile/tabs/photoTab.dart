import 'package:bikemate/UI/images.dart';
import 'package:flutter/material.dart';

class PhotoTab extends StatelessWidget {
  const PhotoTab({super.key});

  @override
  Widget build(BuildContext context) {
    final newArr = [
      [Images.postPhoto1, Images.postPhoto2, Images.postPhoto3],
      [Images.postPhoto4, Images.postPhoto5, Images.postPhoto6],
      [Images.postPhoto7, Images.postPhoto8, Images.postPhoto9],
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: newArr
            .map((e) => Row(
                  children: [
                    Column(
                      children: [e[0]],
                    ),
                    Column(
                      children: [e[1]],
                    ),
                    Column(
                      children: [e[2]],
                    ),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
