
class CrytoCurrenciesResponse {
  Btc? btc;
  Eth? eth;
  Bnb? bnb;

  CrytoCurrenciesResponse({this.btc, this.eth, this.bnb});

  CrytoCurrenciesResponse.fromJson(Map<String, dynamic> json) {
    if(json["BTC"] is Map) {
      btc = json["BTC"] == null ? null : Btc.fromJson(json["BTC"]);
    }
    if(json["ETH"] is Map) {
      eth = json["ETH"] == null ? null : Eth.fromJson(json["ETH"]);
    }
    if(json["BNB"] is Map) {
      bnb = json["BNB"] == null ? null : Bnb.fromJson(json["BNB"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(btc != null) {
      _data["BTC"] = btc?.toJson();
    }
    if(eth != null) {
      _data["ETH"] = eth?.toJson();
    }
    if(bnb != null) {
      _data["BNB"] = bnb?.toJson();
    }
    return _data;
  }
}

class Bnb {
  double? usd;

  Bnb({this.usd});

  Bnb.fromJson(Map<String, dynamic> json) {
    if(json["USD"] is double) {
      usd = json["USD"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["USD"] = usd;
    return _data;
  }
}

class Eth {
  double? usd;

  Eth({this.usd});

  Eth.fromJson(Map<String, dynamic> json) {
    if(json["USD"] is double) {
      usd = json["USD"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["USD"] = usd;
    return _data;
  }
}

class Btc {
  double? usd;

  Btc({this.usd});

  Btc.fromJson(Map<String, dynamic> json) {
    if(json["USD"] is double) {
      usd = json["USD"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["USD"] = usd;
    return _data;
  }
}