import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/link_tree/domain/models/social_link_model.dart';
import 'package:pinhotx_portal/src/link_tree/widgets/abstract_link_tree.dart';
import 'package:pinhotx_portal/src/link_tree/widgets/outlined_link_widget.dart';
/*import 'package:flutter/services.dart' show rootBundle;*/

/*List<SocialLinkModel> socialLinkList =
    SocialLinkModel.fromJson(getJson());*/

class LinkTreeMainWidget extends LinkTree {
  const LinkTreeMainWidget({required super.socialLinkList, super.key});

  @override
  filterList() {
    List<SocialLinkModel> filteredList = [];
    for (var element in socialLinkList) {
      if (element.showOnList) {
        filteredList.add(element);
      }
    }
    return filteredList;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: filteredSocialLinkList.length,
          itemBuilder: (context, index) => OutlinedLinkWidget(
            socialLink: filteredSocialLinkList[index],
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 8,
          ),
        ),
      ),
    );
  }
}
