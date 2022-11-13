import 'package:flutter/material.dart';
//import '../widgets/link_tree_main_widget_old.dart';
import '../widgets/link_tree_main_widget.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pinhotx"),
      ),
      body: LinkTreeMainWidget(),
    );
  }
}
