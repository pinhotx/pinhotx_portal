import 'package:flutter/material.dart';
import '../domain/models/social_link_model.dart';

import 'package:pinhotx_portal/src/link_tree/pages/social_page.dart';

class DynamicSocialPage extends StatelessWidget {
  const DynamicSocialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SocialPage(
      socialLinkList: <SocialLinkModel>[
        SocialLinkModel(
          domain: "Twitch",
          uri: "twitch.tv",
          user: "pinhotx",
          action: "Follow Me",
          showOnList: true,
        ),
        SocialLinkModel(
          domain: "Glimesh",
          uri: "glimesh.tv",
          user: "pinhotx",
          showOnList: true,
        ),
      ],
    );
  }
}
