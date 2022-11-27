import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/link_tree/widgets/icon_link_widget.dart';

import '../domain/models/social_link_model.dart';

List<SocialLinkModel> socialLinkList = [
  SocialLinkModel(domain: "Koo", uri: "kooapp.com/profile/"),
  SocialLinkModel(domain: "Glimesh", uri: "glimesh.tv", user: "pinhotx"),
  SocialLinkModel(
    domain: "Ko-fi",
    uri: "ko-fi.com",
    showInList: true,
  ),
];

class LinkTreeFooter extends StatelessWidget {
  const LinkTreeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.greenAccent,
      child: SizedBox(
        height: 50,
        child: Align(
          alignment: Alignment.center,
          child: ListView.separated(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: socialLinkList.length,
            itemBuilder: (context, index) => IconLinkWidget(
              socialLink: socialLinkList[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
          ),
        ),
      ),
    );
  }
}
