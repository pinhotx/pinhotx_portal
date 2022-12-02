import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/link_tree/pages/social_page.dart';
import '../domain/models/social_link_model.dart';

// Fixed Link List
List<SocialLinkModel> socialLinkList = [
  SocialLinkModel(
    domain: "Twitch",
    uri: "twitch.tv",
    user: "pinhotx",
    hexTextColor: "EEC7FF",
    showOnList: true,
  ),
  SocialLinkModel(
    domain: "Glimesh",
    uri: "glimesh.tv",
    user: "pinhotx",
    hexTextColor: "A1DDFF",
    showOnList: true,
  ),
  SocialLinkModel(
    domain: "Ko-fi",
    uri: "ko-fi.com",
    hexTextColor: "EBCFAC",
  ),
  SocialLinkModel(
    domain: "KIZUKI",
    uri: "twitch.tv",
    action: "Don't Zuki",
    user: "kizuki_oki",
    hexTextColor: "F6D100",
    showOnFooter: false,
    showOnList: true,
  ),
];

class StaticSocialPage extends StatelessWidget {
  /// The Social Page Scaffold with constant social Links
  const StaticSocialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SocialPage(
      socialLinkList: socialLinkList,
    );
  }
}
