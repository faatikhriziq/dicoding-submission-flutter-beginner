import 'package:flutter/material.dart';
import 'package:subminssion_dicoding_flutter_pemula/theme/app_color.dart';
import 'package:subminssion_dicoding_flutter_pemula/theme/app_font.dart';

import 'sign_in_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final paddingTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: [
          SizedBox(height: paddingTop),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            height: 400,
            width: width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: AppColor.grayColor,
            ),
            child: Image.asset(
              'assets/images/undraw_login.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20),
          Text("Selamat datang di Pariwista", style: AppFont.bold.copyWith(fontSize: 36)),
          Text(
            "daftar dan mulai jelajahi wisata di nusantara ",
            style: AppFont.normal.size18.copyWith(color: AppColor.darkGrayColor),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColor.mainColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              fixedSize: MaterialStateProperty.all(
                Size(width, 50),
              ),
            ),
            child: Text(
              "Sign In",
              style: AppFont.bold.size18.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(0),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: AppColor.darkGrayColor),
                ),
              ),
              fixedSize: MaterialStateProperty.all(
                Size(width, 50),
              ),
            ),
            child: Text(
              "Sign Up",
              style: AppFont.bold.size18.copyWith(
                color: AppColor.darkGrayColor,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
