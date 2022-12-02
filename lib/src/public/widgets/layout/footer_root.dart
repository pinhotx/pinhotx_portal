import 'package:flutter/material.dart';

class FooterRoot extends StatelessWidget {
  final Widget child;
  const FooterRoot({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).bottomAppBarColor,
      child: SizedBox(
        height: 50,
        child: Align(
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
