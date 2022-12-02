import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pinhotx_portal/src/link_tree/domain/models/social_link_model.dart';

class OutlinedLinkWidget extends StatelessWidget {
  final SocialLinkModel socialLink;
  final Size size;

  const OutlinedLinkWidget({
    required this.socialLink,
    this.size = const Size.fromHeight(40),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).backgroundColor,
      shadowColor: Colors.green,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Theme.of(context).backgroundColor,
          fixedSize: size,
          side: BorderSide(color: socialLink.textColor, width: 3),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
        ),
        child: Text(
          socialLink.action != null
              ? socialLink.action.toString().toUpperCase()
              : socialLink.domain.toUpperCase(),
          style: TextStyle(
            color: socialLink.textColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamilyFallback: const <String>[
              "Verdana",
              "Geneva",
              "Tahoma",
              "sans-serif"
            ],
          ),
        ),
        onPressed: () => launchUrl(socialLink.parsedUri),
      ),
    );
  }
}
