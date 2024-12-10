import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/edit_user_image_stack.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/profile_text_field.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/save_profile_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBody extends StatelessWidget {
  final User user;
  const ProfileBody({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    Query userQuery = FirebaseFirestore.instance
        .collection('users')
        .where('id', isEqualTo: user.uid);
    return FutureBuilder<QuerySnapshot>(
      future: userQuery.get(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final userData =
              snapshot.data!.docs.first.data() as Map<String, dynamic>;
          return SingleChildScrollView(
            child: Column(
              children: [
                const Divider(),
                SizedBox(height: 15.h),
                EditUserImageStack(
                  image: userData["image"],
                ),
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
                        initialValue: userData["name"],
                      ),
                      SizedBox(height: 25.h),
                      ProfileTextField(
                        lable: 'Phone',
                        initialValue: userData["phone"],
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
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }
      },
    );
  }
}
