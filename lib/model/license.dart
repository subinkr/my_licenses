class License {
  String name;
  String description;
  List<String> keywords;
  String license;
  Creator creator;
  List<Distribution> distribution;
  String context;
  String type;

  License(
      {this.name,
        this.description,
        this.keywords,
        this.license,
        this.creator,
        this.distribution,
        this.context,
        this.type});

  License.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    keywords = json['keywords'].cast<String>();
    license = json['license'];
    creator =
    json['creator'] != null ? new Creator.fromJson(json['creator']) : null;
    if (json['distribution'] != null) {
      distribution = new List<Distribution>();
      json['distribution'].forEach((v) {
        distribution.add(new Distribution.fromJson(v));
      });
    }
    context = json['@context'];
    type = json['@type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['keywords'] = this.keywords;
    data['license'] = this.license;
    if (this.creator != null) {
      data['creator'] = this.creator.toJson();
    }
    if (this.distribution != null) {
      data['distribution'] = this.distribution.map((v) => v.toJson()).toList();
    }
    data['@context'] = this.context;
    data['@type'] = this.type;
    return data;
  }
}

class Creator {
  String name;
  ContactPoint contactPoint;
  String type;

  Creator({this.name, this.contactPoint, this.type});

  Creator.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    contactPoint = json['contactPoint'] != null
        ? new ContactPoint.fromJson(json['contactPoint'])
        : null;
    type = json['@type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.contactPoint != null) {
      data['contactPoint'] = this.contactPoint.toJson();
    }
    data['@type'] = this.type;
    return data;
  }
}

class ContactPoint {
  String contactType;
  String telephone;
  String type;

  ContactPoint({this.contactType, this.telephone, this.type});

  ContactPoint.fromJson(Map<String, dynamic> json) {
    contactType = json['contactType'];
    telephone = json['telephone'];
    type = json['@type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contactType'] = this.contactType;
    data['telephone'] = this.telephone;
    data['@type'] = this.type;
    return data;
  }
}

class Distribution {
  String encodingFormat;
  String contentUrl;
  String type;

  Distribution({this.encodingFormat, this.contentUrl, this.type});

  Distribution.fromJson(Map<String, dynamic> json) {
    encodingFormat = json['encodingFormat'];
    contentUrl = json['contentUrl'];
    type = json['@type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['encodingFormat'] = this.encodingFormat;
    data['contentUrl'] = this.contentUrl;
    data['@type'] = this.type;
    return data;
  }
}