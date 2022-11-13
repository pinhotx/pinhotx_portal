import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pinhotx_portal/src/link_tree/domain/models/social_link_model.dart';

class OutlinedLinkWidget extends StatelessWidget {
  final SocialLinkModel socialLink;
  const OutlinedLinkWidget({required this.socialLink, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: OutlinedButton(
        child: Text(socialLink.domainName),
        onPressed: () => launchUrl(socialLink.parsedUri),
      ),
    );
  }
}
