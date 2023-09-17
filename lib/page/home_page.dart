import 'package:flutter/material.dart';
import 'package:subminssion_dicoding_flutter_pemula/data/model/tour_model.dart';
import 'package:subminssion_dicoding_flutter_pemula/data/tours_data.dart';
import 'package:subminssion_dicoding_flutter_pemula/page/sign_in_page.dart';
import 'package:subminssion_dicoding_flutter_pemula/theme/app_color.dart';
import 'package:subminssion_dicoding_flutter_pemula/theme/app_font.dart';

import 'widgets/card_place.dart';
import 'widgets/category_card.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: AppColor.mainColor,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: AppColor.grayColor,
                                backgroundImage: AssetImage('assets/images/pp.jpg'),
                                minRadius: 23,
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Selamat Pagi 🙌,',
                                    style: AppFont.normal.copyWith(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Faatikh Riziq',
                                    style: AppFont.normal.copyWith(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignInPage(),
                                    ),
                                  );
                                },
                                child: const Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Mau Kemana Hari Ini ?',
                        style: AppFont.normal.size20.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Jakarta, Indonesia',
                            style: AppFont.normal.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(width: 5),
                        ],
                      ),
                      const SizedBox(height: 15),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          hintText: 'Cari Tempat Wisata',
                          hintStyle: AppFont.normal.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.tour_outlined,
                        color: AppColor.mainColor,
                        size: 40,
                      ),
                      Text('Wisata', style: AppFont.normal.copyWith(color: AppColor.darkColor)),
                    ],
                  ),
                ),
                InkWell(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.hotel_outlined,
                        color: AppColor.mainColor,
                        size: 40,
                      ),
                      Text('Hotel', style: AppFont.normal.copyWith(color: AppColor.darkColor)),
                    ],
                  ),
                ),
                InkWell(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.restaurant_menu_outlined,
                        color: AppColor.mainColor,
                        size: 40,
                      ),
                      Text('Rumah\nmakan',
                          style: AppFont.normal.copyWith(
                            color: AppColor.darkColor,
                          )),
                    ],
                  ),
                ),
                InkWell(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.person_2_outlined,
                        color: AppColor.mainColor,
                        size: 40,
                      ),
                      Text('Tour\nGuide', style: AppFont.normal.copyWith(color: AppColor.darkColor)),
                    ],
                  ),
                ),
                InkWell(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.settings_outlined,
                        color: AppColor.mainColor,
                        size: 40,
                      ),
                      Text('Filter', style: AppFont.normal.copyWith(color: AppColor.darkColor)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Destinasi pilihan untukmu',
                        style: AppFont.normal.copyWith(
                          color: AppColor.darkColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                shrinkWrap: true,
                itemCount: tourismPlaceList.length,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  List<TourModel> tours = tourismPlaceList;
                  return CardPlace(
                    name: tours[index].name,
                    location: tours[index].location,
                    rating: tours[index].rating,
                    image: tours[index].image,
                    index: index,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kategori Populer',
                    style: AppFont.normal.copyWith(
                      color: AppColor.darkColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryCard(name: 'Sejarah', image: 'assets/images/tours/borobudur.jpg'),
                        SizedBox(width: 10),
                        CategoryCard(name: 'Bahari', image: 'assets/images/tours/kuta.jpg'),
                        SizedBox(width: 10),
                        CategoryCard(name: 'Alam', image: 'assets/images/tours/bromo.jpg'),
                        SizedBox(width: 10),
                        CategoryCard(name: 'Safari', image: 'assets/images/tours/pulau-komodo.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rekomendasi untukmu',
                        style: AppFont.normal.copyWith(
                          color: AppColor.darkColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Lihat Semua',
                          style: AppFont.normal.copyWith(
                            color: AppColor.mainColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CardPlace(
                              name: tourismPlaceList[0].name,
                              location: tourismPlaceList[0].location,
                              rating: tourismPlaceList[0].rating,
                              image: tourismPlaceList[0].image,
                              index: 0,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: CardPlace(
                              name: tourismPlaceList[1].name,
                              location: tourismPlaceList[1].location,
                              rating: tourismPlaceList[1].rating,
                              image: tourismPlaceList[1].image,
                              index: 1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: CardPlace(
                              name: tourismPlaceList[2].name,
                              location: tourismPlaceList[2].location,
                              rating: tourismPlaceList[2].rating,
                              image: tourismPlaceList[2].image,
                              index: 2,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: CardPlace(
                              name: tourismPlaceList[3].name,
                              location: tourismPlaceList[3].location,
                              rating: tourismPlaceList[3].rating,
                              image: tourismPlaceList[3].image,
                              index: 3,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
