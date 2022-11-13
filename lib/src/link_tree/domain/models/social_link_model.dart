class SocialLinkModel {
  String domain;
  String uriAddress;
  String? showName;
  SocialLinkModel(
      {required this.domain, required this.uriAddress, this.showName});

  String get domainName {
    return domain;
  }

  set domainName(String domainName) {
    domain = domainName;
  }

  String get uri {
    return uriAddress;
  }

  Uri get parsedUri {
    return Uri.parse(uriAddress);
  }

  set uri(String uri) {
    uriAddress = uri;
  }
}
