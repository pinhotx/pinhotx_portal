import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../data/social_links_data.dart';

class SocialLinkModel extends SocialLinkData {
  Color? __textColor;
  SocialLinkModel({
    super.protocol,
    required super.domain,
    required super.uri,
    super.user = "tiagopinhotx",
    super.action,
    super.hexTextColor,
    super.showOnFooter,
    super.showOnList,
  }) {
    __textColor =
        hexTextColor != null ? HexColor(hexTextColor!) : Colors.greenAccent;
  }

  /// Constructor for JSON Elements. Not lists
  factory SocialLinkModel.fromJson(Map<String, dynamic> json) {
    return SocialLinkModel(
      domain: json['domain'],
      uri: json['uri'],
      user: json['user'],
      action: json['action'],
      hexTextColor: json['color'],
      protocol: json['protocol'],
      showOnList: json['show-on-list'],
      showOnFooter: json['show-on-footer'],
    );
  }

  Color get textColor {
    return __textColor ?? Colors.greenAccent;
  }

  /// Constructor for JSON Lists. Not lists
  static List<SocialLinkModel> socialLinkListJsonToModel(
    String socialLinkListJSON,
  ) {
    final List socialLinkList = json.decode(socialLinkListJSON);
    final List<SocialLinkModel> socialLinkModelList =
        socialLinkList.map((item) => SocialLinkModel.fromJson(item)).toList();
    return socialLinkModelList;
  }

  /// HTTP isn't secure, all links must be https.
  /// This function converts http to https
  String get checkedProtocol {
    if (protocol == "http") return "https";
    return protocol;
  }

  /// Parse an uri to URI object for any link launch methods
  Uri get parsedUri {
    if (uri[uri.length - 1] == "/") {
      return Uri.parse("$checkedProtocol://$uri$user");
    }
    return Uri.parse("$checkedProtocol://$uri/$user");
  }
}
