import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  final String title;
  final bool? readonly;
  final void Function()? onTap;
  final  Function(String?)? onValidate;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  InputFormField(
      {super.key,
      required this.title,
 this.onValidate,
      this.onTap,
      this.suffixIcon,
      this.readonly,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readonly ?? false,
      onTap: onTap,
      controller: controller,
      validator: (value){},
      decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 12.sp),
        fillColor: Color(0xFFf0f0f1),
        filled: true,
        contentPadding: EdgeInsets.only(left: 3.w),
        suffixIcon: suffixIcon,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.sp),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.sp),
        ),
      ),
    );
  }
}
