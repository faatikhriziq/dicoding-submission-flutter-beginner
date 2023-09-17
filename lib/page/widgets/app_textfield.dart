// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../theme/app_color.dart';
import '../../theme/app_font.dart';

// ignore: must_be_immutable
class AppTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  bool? obscureText;
  final bool? isPassword;

  AppTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.obscureText,
    this.isPassword,
  }) : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText ?? false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 13),
        suffixIcon: widget.isPassword == true
            ? IconButton(
                onPressed: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText!;
                  });
                },
                icon: widget.obscureText! ? const Icon(Icons.visibility_off, color: AppColor.darkGrayColor) : const Icon(Icons.visibility, color: AppColor.darkGrayColor),
              )
            : null,
        filled: true,
        fillColor: AppColor.grayColor,
        hintText: widget.hintText,
        hintStyle: AppFont.normal.size16.copyWith(color: AppColor.darkGrayColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColor.darkGrayColor, width: 1),
        ),
      ),
    );
  }
}
