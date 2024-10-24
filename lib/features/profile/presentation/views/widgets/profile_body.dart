import 'package:chat_app/features/profile/presentation/views/widgets/edit_user_image_stack.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/profile_text_field.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/save_profile_button.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Divider(),
          SizedBox(height: 15),
          EditUserImageStack(),
          SizedBox(height: 15),
          Divider(),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                ProfileTextField(
                  lable: 'Name',
                  initialValue: 'Mohamed Gomaa',
                ),
                SizedBox(height: 25),
                ProfileTextField(
                  lable: 'Phone',
                  initialValue: '01015043548',
                ),
                SizedBox(height: 75),
                SaveProfileButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
