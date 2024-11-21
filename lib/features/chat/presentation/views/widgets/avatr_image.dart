import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarImage extends StatelessWidget {
  final String avatarLink;
  const AvatarImage({
    super.key,
    required this.avatarLink,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      avatarLink,
      width: 75.w,
    );
  }
}
