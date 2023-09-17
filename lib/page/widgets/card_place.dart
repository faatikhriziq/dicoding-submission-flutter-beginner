// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:subminssion_dicoding_flutter_pemula/data/tours_data.dart';

import 'package:subminssion_dicoding_flutter_pemula/page/tour_detail_page.dart';

import '../../theme/app_color.dart';
import '../../theme/app_font.dart';

class CardPlace extends StatelessWidget {
  final String name;
  final String location;
  final String image;
  final double rating;
  final int index;
  const CardPlace({
    Key? key,
    required this.name,
    required this.location,
    required this.image,
    required this.rating,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tour = tourismPlaceList[index];
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return TourDetailPage(tour: tour);
            },
          ),
        );
      },
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                height: 150,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: AppFont.normal.copyWith(
                color: AppColor.darkColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: AppColor.mainColor,
                  size: 16,
                ),
                Expanded(
                  child: Text(
                    location,
                    style: AppFont.normal.copyWith(
                      color: AppColor.darkGrayColor,
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: AppColor.mainColor,
                  size: 16,
                ),
                Text(
                  rating.toString(),
                  style: AppFont.normal.copyWith(
                    color: AppColor.darkGrayColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  '(200)',
                  style: AppFont.normal.copyWith(
                    color: AppColor.darkGrayColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
