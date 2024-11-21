import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldIcon extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  const TextFieldIcon({
    super.key,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30.r),
      onTap: onTap(),
      child: Ink(
        height: 45.h,
        width: 45.w,
        child: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
    );
  }
}
