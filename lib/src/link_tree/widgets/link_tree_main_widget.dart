import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/link_tree/domain/models/social_link_model.dart';
import 'package:pinhotx_portal/src/link_tree/widgets/outlined_link_widget.dart';
/*import 'package:flutter/services.dart' show rootBundle;*/

/*List<SocialLinkModel> socialLinkList =
    SocialLinkModel.fromJson(getJson());*/

List<SocialLinkModel> socialLinkList = [
  SocialLinkModel(domain: "Twitch", uri: "twitch.tv", user: "pinhotx"),
  SocialLinkModel(domain: "Glimesh", uri: "glimesh.tv", user: "pinhotx"),
  SocialLinkModel(
    domain: "Ko-fi",
    uri: "ko-fi.com",
    action: "Support Me",
    showInList: true,
  ),
  SocialLinkModel(
    domain: "KIZUKI",
    uri: "twitch.tv",
    action: "Support Zuki",
    user: "kizuki_oki",
  ),
];

class LinkTreeMainWidget extends StatelessWidget {
  const LinkTreeMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: socialLinkList.length,
          itemBuilder: (context, index) => OutlinedLinkWidget(
            socialLink: socialLinkList[index],
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 8,
          ),
        ),
      ),
    );
  }
}
