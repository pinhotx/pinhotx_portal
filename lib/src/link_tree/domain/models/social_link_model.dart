import 'dart:convert';

class SocialLinkModel {
  /// Domain name
  String domain;

  /// Base URI for this domain
  String uri;

  /// Username or link username
  String user;

  /// Protocol for this link. HTTPS for default
  String protocol;

  /// Text for the Button on the Main List
  String? action;

  ///Set this link to show on footer
  bool showOnFooter;

  ///Set this link to show on the main List
  bool showOnList;

  SocialLinkModel({
    this.protocol = "https",
    required this.domain,
    required this.uri,
    this.user = "tiagopinhotx",
    this.action,
    this.showOnFooter = true,
    this.showOnList = false,
  });

  /// Constructor for JSON Elements. Not lists
  factory SocialLinkModel.fromJson(Map<String, dynamic> json) {
    return SocialLinkModel(
      domain: json['domain'],
      uri: json['uri'],
      user: json['user'],
      action: json['action'],
      protocol: json['protocol'],
      showOnList: json['show-on-list'],
      showOnFooter: json['show-on-footer'],
    );
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
