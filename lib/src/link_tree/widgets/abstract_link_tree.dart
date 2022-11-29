import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/link_tree/domain/models/social_link_model.dart';

abstract class LinkTree extends StatelessWidget {
  /// An Unfiltered Social Link Model List
  final List<SocialLinkModel> socialLinkList;

  const LinkTree({required this.socialLinkList, super.key});

  /// Returns socialLinkList. This method is called by default from the getter filteredSocialLinkList.
  /// @override this method for adding a custom filter
  List<SocialLinkModel> filterList() {
    return socialLinkList;
  }

  List<SocialLinkModel> get filteredSocialLinkList {
    return filterList();
  }
}
