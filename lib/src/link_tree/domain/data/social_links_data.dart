class SocialLinkData {
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

  ///
  String? hexTextColor;

  SocialLinkData({
    required this.domain,
    required this.uri,
    required this.user,
    this.protocol = "https",
    this.action,
    this.showOnFooter = true,
    this.showOnList = false,
    this.hexTextColor,
  });
}
