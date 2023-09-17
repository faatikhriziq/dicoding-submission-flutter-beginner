import 'package:flutter/material.dart';
import 'package:subminssion_dicoding_flutter_pemula/page/home_page.dart';

import '../theme/app_color.dart';
import '../theme/app_font.dart';
import 'widgets/app_textfield.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final String emailDummy = "user@gmail.com";
  final String passwordDummy = "123456";
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final paddingTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: paddingTop),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            height: 300,
            width: width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: AppColor.grayColor,
            ),
            child: Image.asset(
              'assets/images/sign_in_undraw.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20),
          Text("Login", style: AppFont.bold.copyWith(fontSize: 36)),
          Text(
            "Silahkan Login untuk melanjutkan",
            style: AppFont.normal.size18.copyWith(color: AppColor.darkGrayColor),
          ),
          const SizedBox(height: 35),
          AppTextField(
            controller: emailController,
            hintText: "Email",
          ),
          const SizedBox(height: 20),
          AppTextField(
            isPassword: true,
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: () {}, child: Text("Lupa Password", style: AppFont.normal.size16.copyWith(color: AppColor.darkGrayColor))),
              TextButton(onPressed: () {}, child: Text("Daftar", style: AppFont.normal.size16.copyWith(color: AppColor.darkGrayColor))),
            ],
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              if (emailController.text == emailDummy && passwordController.text == passwordDummy) {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()), (route) => false);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Email atau Password salah"),
                  ),
                );
              }
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
              style: AppFont.normal.size20.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(height: 8),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/google-logo.png',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 10),
                Text(
                  "Sign Up",
                  style: AppFont.normal.size18.copyWith(
                    color: AppColor.darkGrayColor,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
