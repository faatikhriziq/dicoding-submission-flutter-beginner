// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:subminssion_dicoding_flutter_pemula/data/model/tour_model.dart';
import 'package:subminssion_dicoding_flutter_pemula/theme/app_color.dart';
import 'package:subminssion_dicoding_flutter_pemula/theme/app_dimension.dart';
import 'package:subminssion_dicoding_flutter_pemula/theme/app_font.dart';

class TourDetailPage extends StatefulWidget {
  static const routeName = '/tour-detail';
  final TourModel tour;
  const TourDetailPage({
    Key? key,
    required this.tour,
  }) : super(key: key);

  @override
  State<TourDetailPage> createState() => _TourDetailPageState();
}

class _TourDetailPageState extends State<TourDetailPage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: AppColor.mainColor,
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: isFavorite ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: AppColor.mainColor,
            onPressed: () {},
            child: const Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.tour.image,
                  fit: BoxFit.cover,
                  height: 365,
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            padding: AppDimension.edgeInsetsAll8,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              color: AppColor.darkColor,
                            ),
                          ),
                        ),
                        Container(
                          padding: AppDimension.edgeInsetsAll8,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.more_vert,
                            color: AppColor.darkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.tour.name,
                              style: AppFont.medium.size22.copyWith(
                                color: AppColor.darkColor,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: AppColor.mainColor,
                                  size: 16,
                                ),
                                const SizedBox(width: 5),
                                Text(widget.tour.location, style: AppFont.normal.size16),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Text(
                              widget.tour.rating.toString(),
                              style: const TextStyle(
                                color: AppColor.darkGrayColor,
                                fontSize: 16,
                              ),
                            ),
                            const Text(' / 5',
                                style: TextStyle(
                                  color: AppColor.darkGrayColor,
                                  fontSize: 16,
                                )),
                          ],
                        )
                      ],
                    ),
                    const Divider(color: AppColor.darkColor, height: 25, thickness: 0.5),
                    const SizedBox(height: 5),
                    Text('Deskripsi', style: AppFont.medium.size18),
                    const SizedBox(height: 10),
                    Text(
                      widget.tour.description,
                      style: AppFont.normal.size16.copyWith(
                        color: AppColor.darkGrayColor,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
