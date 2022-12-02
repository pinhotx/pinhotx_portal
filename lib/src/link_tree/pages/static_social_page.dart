import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/link_tree/pages/social_page.dart';
import '../domain/models/social_link_model.dart';

// Static Link List
List<SocialLinkModel> socialLinkList = [
  SocialLinkModel(
    domain: "Twitch",
    uri: "twitch.tv",
    user: "pinhotx",
    action: "Twitch Channel",
    hexTextColor: "EEC7FF",
    showOnList: true,
  ),
  SocialLinkModel(
    domain: "Glimesh",
    uri: "glimesh.tv",
    user: "pinhotx",
    action: "Glimesh Channel",
    hexTextColor: "A1DDFF",
    showOnList: true,
  ),
  SocialLinkModel(
    domain: "Linkedin",
    uri: "linkedin.com/in",
    action: "Hire Me",
    hexTextColor: "EBCFAC",
    showOnFooter: false,
    showOnList: true,
  ),
  SocialLinkModel(
    domain: "Ko-fi",
    uri: "ko-fi.com",
    action: "Support Me",
    showOnList: true,
    hexTextColor: "F6D100",
  ),
  SocialLinkModel(
    domain: "Github",
    uri: "github.com",
    action: "Code Portifolio",
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
      showFooter: false,
      showAppBar: false,
    );
  }
}
