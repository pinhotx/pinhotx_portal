import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../domain/models/social_link_model.dart';

class IconLinkWidget extends StatelessWidget {
  final SocialLinkModel socialLink;

  const IconLinkWidget({required this.socialLink, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.blue),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.amber.shade200,
      ),
      child: SizedBox(
        height: 50,
        width: 50,
        child: IconButton(
          onPressed: () => launchUrl(socialLink.parsedUri),
          icon: const Icon(
            Icons.facebook,
          ),
          iconSize: 24,
        ),
      ),
    );
  }
}
