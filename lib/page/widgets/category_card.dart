// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../theme/app_font.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String image;
  const CategoryCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 250,
          width: 175,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.3),
            ]),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          height: 250,
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.1),
                Colors.black.withOpacity(0.4),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppFont.medium.size20.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 5),
              Text(
                'Temukan sekarang! >',
                style: AppFont.normal.size12.copyWith(color: Colors.white, fontStyle: FontStyle.italic),
                softWrap: true,
              ),
            ],
          ),
        )
      ],
    );
  }
}
