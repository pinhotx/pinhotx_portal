import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/link_tree/domain/models/social_link_model.dart';
import 'package:pinhotx_portal/src/link_tree/widgets/outlined_link_widget.dart';

class LinkTreeMainWidget extends StatelessWidget {
  LinkTreeMainWidget({super.key});

  List<SocialLinkModel> tiles = [
    SocialLinkModel(
      domain: "Twitch",
      uriAddress: "https://twitch.tv/pinhotx",
    ),
    SocialLinkModel(
      domain: "Glimesh",
      uriAddress: "https://glimesh.tv/pinhotx",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: tiles.length,
        itemBuilder: (context, index) => OutlinedLinkWidget(
          socialLink: tiles[index],
        ),
      ),
    );
  }
}
