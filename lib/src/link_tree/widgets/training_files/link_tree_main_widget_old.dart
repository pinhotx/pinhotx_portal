import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/link_tree/domain/models/social_link_model.dart';
import 'package:pinhotx_portal/src/link_tree/widgets/link_tree_widget.dart';
import 'package:pinhotx_portal/src/link_tree/widgets/outlined_link_widget.dart';

class _ListViewTree extends StatelessWidget {
  final List<SocialLinkModel> socialLinkList;

  /// A List View widget made for Link Tree Main Widget. Pass a filtered Social Link List
  const _ListViewTree(this.socialLinkList);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: socialLinkList.length,
      itemBuilder: (context, index) => OutlinedLinkWidget(
        socialLink: socialLinkList[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 8,
      ),
    );
  }
}

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
        child: _ListViewTree(filteredSocialLinkList),
      ),
    );
  }
}
