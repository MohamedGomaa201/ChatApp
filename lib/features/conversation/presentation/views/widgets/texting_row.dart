import 'package:chat_app/features/conversation/presentation/views/widgets/chat_text_field.dart';
import 'package:chat_app/features/conversation/presentation/views/widgets/send_or_record_widget.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TextingRow extends StatefulWidget {
  final CollectionReference chatsInstance;
  final String docID;
  const TextingRow({
    super.key,
    required this.chatsInstance,
    required this.docID,
  });

  @override
  State<TextingRow> createState() => _TextingRowState();
}

class _TextingRowState extends State<TextingRow> {
  TextEditingController controller = TextEditingController();
  bool isEmpty = true;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        isEmpty = controller.text.trim().isEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ChatTextField(controller: controller),
        SendOrRecordWidget(
          isEmpty: isEmpty,
          controller: controller,
          widget: widget,
        ),
      ],
    );
  }
}
