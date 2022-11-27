import 'dart:convert';

class SocialLinkModel {
  String domain;
  String uri;
  String user;
  String protocol;
  String? action;
  bool showOnFooter;
  bool showInList;

  SocialLinkModel({
    this.protocol = "https",
    required this.domain,
    required this.uri,
    this.user = "tiagopinhotx",
    this.action,
    this.showOnFooter = true,
    this.showInList = false,
  });

  factory SocialLinkModel.fromJson(Map<String, dynamic> json) {
    return SocialLinkModel(
      domain: json['domain'],
      uri: json['uri'],
      user: json['user'],
      action: json['action'],
      protocol: json['protocol'],
      showInList: json['show-in-list'],
      showOnFooter: json['show-on-footer'],
    );
  }

  static List<SocialLinkModel> socialLinkListJsonToModel(
    String socialLinkListJSON,
  ) {
    final List socialLinkList = json.decode(socialLinkListJSON);
    final List<SocialLinkModel> socialLinkModelList =
        socialLinkList.map((item) => SocialLinkModel.fromJson(item)).toList();
    return socialLinkModelList;
  }

  String get checkedProtocol {
    if (protocol == "http") return "https";
    return protocol;
  }

  Uri get parsedUri {
    if (uri[uri.length - 1] == "/") {
      return Uri.parse("$checkedProtocol://$uri$user");
    }
    return Uri.parse("$checkedProtocol://$uri/$user");
  }
}
