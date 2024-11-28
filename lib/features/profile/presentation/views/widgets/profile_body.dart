import 'package:chat_app/features/profile/presentation/views/widgets/edit_user_image_stack.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/profile_text_field.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/save_profile_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBody extends StatelessWidget {
  final User user;
  const ProfileBody({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(),
          SizedBox(height: 15.h),
          const EditUserImageStack(),
          SizedBox(height: 15.h),
          const Divider(),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25.h),
                 ProfileTextField(
                  lable: 'Name',
                  initialValue: user.displayName!,
                ),
                SizedBox(height: 25.h),
                const ProfileTextField(
                  lable: 'Phone',
                  initialValue: '01015043548',
                ),
                SizedBox(height: 75.h),
                SizedBox(
                  height: 55.h,
                  child: const SaveProfileButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
