import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    Query userQuery = FirebaseFirestore.instance
        .collection('users')
        .where('id', isEqualTo: user?.uid);
    return FutureBuilder(
      future: userQuery.get(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          final userData =
              snapshot.data!.docs.first.data() as Map<String, dynamic>;
          return CircleAvatar(
            radius: 35.r,
            foregroundImage: NetworkImage(userData["image"]),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
