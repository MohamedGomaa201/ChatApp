import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Lablel extends StatelessWidget {
  final String lablel;
  const Lablel({
    super.key,
    required this.lablel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.h, bottom: 15.h),
      child: Text(
        lablel,
        style: Styles.textStyle15.copyWith(
          color: Colors.grey,
        ),
      ),
    );
  }
}
