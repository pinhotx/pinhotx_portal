import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pinhotx_portal/src/link_tree/domain/models/social_link_model.dart';

class OutlinedLinkWidget extends StatelessWidget {
  final SocialLinkModel socialLink;
  final Size size;
  final Color textColor;
  final Color backgroundColor;

  const OutlinedLinkWidget({
    required this.socialLink,
    this.size = const Size.fromHeight(40),
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white24,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.transparent,
          fixedSize: size,
          side: const BorderSide(color: Colors.greenAccent, width: 5),
        ),
        child: Text(
          socialLink.domain,
          style: TextStyle(color: textColor),
        ),
        onPressed: () => launchUrl(socialLink.parsedUri),
      ),
    );
  }
}
