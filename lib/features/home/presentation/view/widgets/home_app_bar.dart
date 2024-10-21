import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  const HomeAppBar({super.key, required this.appBar});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "WhatsUp",
        style: Styles.textStyle28,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
