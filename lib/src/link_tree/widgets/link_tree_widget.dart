import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/link_tree/widgets/icon_link_widget.dart';
import 'package:pinhotx_portal/src/link_tree/widgets/outlined_link_widget.dart';
import '../domain/models/social_link_model.dart';

abstract class LinkTree extends StatelessWidget {
  /// An Unfiltered Social Link Model List
  final List<SocialLinkModel> socialLinkList;

  const LinkTree({required this.socialLinkList, super.key});

  /// Returns socialLinkList. This method is called by default from the getter filteredSocialLinkList.
  /// @override this method for adding a custom filter
  List<SocialLinkModel> filterList() {
    return socialLinkList;
  }

  /// Getter for the social Link List already filtered
  List<SocialLinkModel> get filteredSocialLinkList {
    return filterList();
  }

  /// Getter for Social Link List without filters
  List<SocialLinkModel> get unfilteredSocialLinkList {
    return socialLinkList;
  }
}

/// A LinkTree List View Builder Widget
class LinkTreeWidget extends LinkTree {
  final bool isFooter;
  final EdgeInsets padding = const EdgeInsets.all(10);
  final double? separatorWidth;
  final double? separatorHeight;
  const LinkTreeWidget({
    required super.socialLinkList,
    super.key,
    this.isFooter = false,
    this.separatorHeight = 8,
    this.separatorWidth,
  });

  const LinkTreeWidget.footer({
    required super.socialLinkList,
    super.key,
    this.isFooter = true,
    this.separatorWidth = 20,
    this.separatorHeight,
  });

  filterFooter() {
    List<SocialLinkModel> filteredList = [];

    for (var element in socialLinkList) {
      if (element.showOnFooter) {
        filteredList.add(element);
      }
    }
    return filteredList;
  }

  @override
  filterList() {
    List<SocialLinkModel> filteredList = [];

    if (isFooter) {
      return filterFooter();
    }

    for (var element in socialLinkList) {
      if (element.showOnList) {
        filteredList.add(element);
      }
    }
    return filteredList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: padding,
      scrollDirection: isFooter ? Axis.horizontal : Axis.vertical,
      shrinkWrap: true,
      itemCount: filteredSocialLinkList.length,
      itemBuilder: (context, index) => isFooter
          ? IconLinkWidget(
              socialLink: filteredSocialLinkList[index],
            )
          : OutlinedLinkWidget(
              socialLink: filteredSocialLinkList[index],
            ),
      separatorBuilder: (context, index) => SizedBox(
        width: separatorWidth,
        height: separatorHeight,
      ),
    );
  }
}
