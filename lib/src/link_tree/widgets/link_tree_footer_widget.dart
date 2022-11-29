import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/link_tree/widgets/abstract_link_tree.dart';
import 'package:pinhotx_portal/src/link_tree/widgets/icon_link_widget.dart';

import '../domain/models/social_link_model.dart';

class LinkTreeFooter extends LinkTree {
  const LinkTreeFooter({required super.socialLinkList, super.key});

  @override
  filterList() {
    List<SocialLinkModel> filteredList = [];
    for (var element in socialLinkList) {
      if (element.showOnFooter) {
        filteredList.add(element);
      }
    }
    return filteredList;
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).bottomAppBarColor,
      child: SizedBox(
        height: 50,
        child: Align(
          alignment: Alignment.center,
          child: ListView.separated(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: filteredSocialLinkList.length,
            itemBuilder: (context, index) => IconLinkWidget(
              socialLink: filteredSocialLinkList[index],
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
