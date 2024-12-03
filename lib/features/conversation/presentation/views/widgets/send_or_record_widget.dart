import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/features/conversation/presentation/views/widgets/texting_row.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendOrRecordWidget extends StatelessWidget {
  const SendOrRecordWidget({
    super.key,
    required this.isEmpty,
    required this.controller,
    required this.widget, required this.mail,
  });

  final bool isEmpty;
  final TextEditingController controller;
  final TextingRow widget;
  final String mail;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.r),
      ),
      color: AppColors.primaryColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(30.r),
        onTap: isEmpty
            ? null
            : () {
                final text = controller.text.trim();
                if (text.isNotEmpty) {
                  widget.chatsInstance.doc(widget.docID).update(
                    {
                      'msgs': FieldValue.arrayUnion(
                        [
                          {
                            'time': DateTime.now(),
                            'txt': text,
                            'id': mail,
                          }
                        ],
                      ),
                      'lastMesaageTime' : DateTime.now(),
                    },
                  );
                  controller.clear();
                }
              },
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: Icon(
            isEmpty ? Icons.mic : Icons.send,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
