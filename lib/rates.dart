import 'dart:convert';

const jsonString = '{"usd": "usd"}';
Map<String, dynamic> map = jsonDecode(jsonString);
var myRootNode = Root.fromJson(map);

class BNB {
  double? uSD;

  BNB({this.uSD});

  BNB.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['USD'] = uSD;
    return data;
  }
}

class BTC {
  double? uSD;

  BTC({this.uSD});

  BTC.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['USD'] = uSD;
    return data;
  }
}

class ETH {
  double? uSD;

  ETH({this.uSD});

  ETH.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['USD'] = uSD;
    return data;
  }
}

class Root {
  BTC? bTC;
  ETH? eTH;
  BNB? bNB;

  Root({this.bTC, this.eTH, this.bNB});

  Root.fromJson(Map<String, dynamic> json) {
    bTC = json['BTC'] != null ? BTC?.fromJson(json['BTC']) : null;
    eTH = json['ETH'] != null ? ETH?.fromJson(json['ETH']) : null;
    bNB = json['BNB'] != null ? BNB?.fromJson(json['BNB']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['BTC'] = bTC!.toJson();
    data['ETH'] = eTH!.toJson();
    data['BNB'] = bNB!.toJson();
    return data;
  }
}

class Source {
  String? id;
  String? name;

  Source({this.id, this.name});

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
