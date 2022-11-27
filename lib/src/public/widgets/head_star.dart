import 'package:flutter/material.dart';

class HeadStar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final Color backgroundColor;
  final Size height;
  final bool centerTitle;

  const HeadStar({
    required this.title,
    this.backgroundColor = Colors.green,
    this.height = const Size.fromHeight(60.0),
    this.centerTitle = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => height;
}
