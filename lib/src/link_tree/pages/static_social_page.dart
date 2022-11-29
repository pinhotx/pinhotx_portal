import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/link_tree/pages/social_page.dart';
import '../domain/models/social_link_model.dart';

// Fixed Link List
List<SocialLinkModel> socialLinkList = [
  SocialLinkModel(
    domain: "Twitch",
    uri: "twitch.tv",
    user: "pinhotx",
    showOnList: true,
  ),
  SocialLinkModel(
    domain: "Glimesh",
    uri: "glimesh.tv",
    user: "pinhotx",
    showOnList: true,
  ),
  SocialLinkModel(
    domain: "Ko-fi",
    uri: "ko-fi.com",
  ),
  SocialLinkModel(
    domain: "KIZUKI",
    uri: "twitch.tv",
    action: "Support Zuki",
    user: "kizuki_oki",
    showOnFooter: false,
    showOnList: true,
  ),
];

class StaticSocialPage extends StatelessWidget {
  const StaticSocialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SocialPage(
      socialLinkList: socialLinkList,
    );
  }
}
