//import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prices extends ChangeNotifier {
  static final Prices _instance = Prices._internal();

  Prices._internal();

  factory Prices() {
    return _instance;
  }

  late SharedPreferences prefs;

  double _bnbprice = 244.89;
  double _ethprice = 1850.81;
  double _btcprice = 29383.66;

  double _balance = 120000.0;
  int _bnbnbr = 0;
  int _ethnbr = 0;
  int _btcnbr = 0;

  int _n1 = 0;
  int _n2 = 0;
  int _n3 = 0;
  int _k1 = 0;
  int _k2 = 0;
  int _k3 = 0;

  bool _col1 = false;
  bool _col2 = false;
  bool _col3 = false;
  bool _col4 = false;
  bool _col11 = false;
  bool _col12 = false;
  bool _col13 = false;
  bool _col14 = false;
  bool _col21 = false;
  bool _col22 = false;
  bool _col23 = false;
  bool _col24 = false;

  bool get col1 => _col1;
  set col1(bool value) {
    _col1 = value;
    prefs.setBool("_col1", value);
  }

  bool get col2 => _col2;
  set col2(bool value) {
    _col2 = value;
    prefs.setBool("_col2", value);
  }

  bool get col3 => _col3;
  set col3(bool value) {
    _col3 = value;
    prefs.setBool("_col3", value);
  }

  bool get col4 => _col4;
  set col4(bool value) {
    _col4 = value;
    prefs.setBool("_col4", value);
  }

  bool get col11 => _col11;
  set col11(bool value) {
    _col11 = value;
    prefs.setBool("_col11", value);
  }

  bool get col12 => _col12;
  set col12(bool value) {
    _col12 = value;
    prefs.setBool("_col12", value);
  }

  bool get col13 => _col13;
  set col13(bool value) {
    _col13 = value;
    prefs.setBool("_col13", value);
  }

  bool get col14 => _col14;
  set col14(bool value) {
    _col14 = value;
    prefs.setBool("_col14", value);
  }

  bool get col21 => _col21;
  set col21(bool value) {
    _col21 = value;
    prefs.setBool("_col21", value);
  }

  bool get col22 => _col22;
  set col22(bool value) {
    _col22 = value;
    prefs.setBool("_col22", value);
  }

  bool get col23 => _col23;
  set col23(bool value) {
    _col23 = value;
    prefs.setBool("_col23", value);
  }

  bool get col24 => _col24;
  set col24(bool value) {
    _col24 = value;
    prefs.setBool("_col24", value);
  }

  int get n1 => _n1;
  set n1(int value) {
    _n1 = value;
    prefs.setInt("_n1", value);
  }

  int get n2 => _n2;
  set n2(int value) {
    _n2 = value;
    prefs.setInt("_n2", value);
  }

  int get n3 => _n3;
  set n3(int value) {
    _n3 = value;
    prefs.setInt("_n3", value);
  }

  int get k1 => _k1;
  set k1(int value) {
    _k1 = value;
    prefs.setInt("_k1", value);
  }

  int get k2 => _k2;
  set k2(int value) {
    _k2 = value;
    prefs.setInt("_k2", value);
  }

  int get k3 => _k3;
  set k3(int value) {
    _k3 = value;
    prefs.setInt("_k3", value);
  }

  double get balance => _balance;
  set balance(double value) {
    _balance = value;
    prefs.setDouble("_balace", value);
  }

  double get bnbprice => _bnbprice;
  set bnbprice(double value) {
    _bnbprice = value;
    prefs.setDouble("_bnbprice", value);
  }

  double get ethprice => _ethprice;
  set ethprice(double value) {
    _ethprice = value;
    prefs.setDouble("_ethprice", value);
  }

  double get btcprice => _btcprice;
  set btcprice(double value) {
    _btcprice = value;
    prefs.setDouble("_btcprice", value);
  }

  int get bnbnbr => _bnbnbr;
  set bnbnbr(int value) {
    _bnbnbr = value;
    prefs.setInt("_bnbnbr", value);
  }

  int get ethnbr => _ethnbr;
  set ethnbr(int value) {
    _ethnbr = value;
    prefs.setInt("_ethnbr", value);
  }

  int get btcnbr => _btcnbr;
  set btcnbr(int value) {
    _btcnbr = value;
    prefs.setInt("_btcnbr", value);
  }

  Future init() async {
    prefs = await SharedPreferences.getInstance();
    _bnbnbr = prefs.getInt('_bnbnbr') ?? _bnbnbr;
    _ethnbr = prefs.getInt('_ethnbr') ?? _ethnbr;
    _btcnbr = prefs.getInt('_btcnbr') ?? _btcnbr;
    _balance = prefs.getDouble('_balance') ?? _balance;
    _bnbprice = prefs.getDouble('_bnbprice') ?? _bnbprice;
    _ethprice = prefs.getDouble('_ethprice') ?? _ethprice;
    _btcprice = prefs.getDouble('_btcprice') ?? _btcprice;

    _n1 = prefs.getInt('_n1') ?? _n1;
    _n2 = prefs.getInt('_n2') ?? _n2;
    _n3 = prefs.getInt('_n3') ?? _n3;

    _k1 = prefs.getInt('_k1') ?? _k1;
    _k2 = prefs.getInt('_k2') ?? _k2;
    _k3 = prefs.getInt('_k3') ?? _k3;

    _col1 = prefs.getBool('_col1') ?? _col1;
    _col2 = prefs.getBool('_col2') ?? _col2;
    _col3 = prefs.getBool('_col3') ?? _col3;
    _col4 = prefs.getBool('_col4') ?? _col4;
    _col11 = prefs.getBool('_col11') ?? _col11;
    _col12 = prefs.getBool('_col12') ?? _col12;
    _col13 = prefs.getBool('_col13') ?? _col13;
    _col14 = prefs.getBool('_col14') ?? _col14;
    _col21 = prefs.getBool('_col21') ?? _col21;
    _col22 = prefs.getBool('_col22') ?? _col22;
    _col23 = prefs.getBool('_col23') ?? _col23;
    _col24 = prefs.getBool('_col24') ?? _col24;

    print('_balance_balance $_balance');
  }

  // getbnbnbr() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   //Return int
  //   int? _bnbnbr = prefs.getInt('_bnbnbr');
  //   return _bnbnbr;
  // }

  // getethnbr() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   //Return int
  //   int? _ethnbr = prefs.getInt('_ethnbr');
  //   return _ethnbr;
  // }

  // getbtcnbr() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   //Return int
  //   int? btcnbr = prefs.getInt('btcnbr');
  //   return btcnbr;
  // }

  // getbalance() {
  //   return _balance;
  // }

  void set1(double? x) {
    bnbprice = x ?? 244.89;
    notifyListeners();
  }

  void set2(double? x) {
    ethprice = x ?? 1850.81;
    notifyListeners();
  }

  void set3(double? x) {
    btcprice = x ?? 29383.66;
    notifyListeners();
  }

  void buybnb() {
    if (balance > bnbprice) {
      bnbnbr = bnbnbr + 1;
      balance = balance - bnbprice;
    }

    notifyListeners();
  }

  Future sellbnb() async {
    if (bnbnbr > 0) {
      bnbnbr = bnbnbr - 1;
      balance = balance + bnbprice;
    }

    notifyListeners();
  }

  void buyeth() {
    if (balance > ethprice) {
      ethnbr = ethnbr + 1;
      balance = balance - ethprice;
    }

    notifyListeners();
  }

  void selleth() {
    if (ethnbr > 0) {
      ethnbr = ethnbr - 1;
      balance = balance + ethprice;
    }

    notifyListeners();
  }

  void buybtc() {
    if (balance > btcprice) {
      btcnbr = btcnbr + 1;
      balance = balance - btcprice;
    }

    notifyListeners();
  }

  void sellbtc() {
    if (btcnbr > 0) {
      btcnbr = btcnbr - 1;
      balance = balance + btcprice;
    }

    notifyListeners();
  }

  void freeBnb() {
    if (k1 > 0) {
      bnbnbr = bnbnbr + 1;
      k1 = k1 - 1;
    }

    notifyListeners();
  }

  void stakeBnb() {
    if (bnbnbr > 0) {
      bnbnbr = bnbnbr - 1;
      k1 = k1 + 1;
    }

    notifyListeners();
  }

  void freeEth() {
    if (k2 > 0) {
      ethnbr = ethnbr + 1;
      k2 = k2 - 1;
    }

    notifyListeners();
  }

  void stakeEth() {
    if (ethnbr > 0) {
      ethnbr = ethnbr - 1;
      k2 = k2 + 1;
    }

    notifyListeners();
  }

  void freeBtc() {
    if (k3 > 0) {
      btcnbr = btcnbr + 1;
      k3 = k3 - 1;
    }

    notifyListeners();
  }

  void stakeBtc() {
    if (btcnbr > 0) {
      btcnbr = btcnbr - 1;
      k3 = k3 + 1;
    }

    notifyListeners();
  }

  void stackIncome1() {
    if (n1 > 0) balance = balance + pow(0.0586, k1 / 12) * _bnbprice * n1;
    bnbnbr = bnbnbr + n1;
    n1 = k1 = 0;
    col1 = col2 = col3 = col4 = false;

    notifyListeners();
  }

  void stackIncome2() {
    if (n2 > 0) balance = balance + pow(0.06, k2 / 12) * _ethprice * n2;
    ethnbr = ethnbr + n2;

    n2 = 0;
    k2 = 0;
    col11 = col12 = col13 = col14 = false;

    notifyListeners();
  }

  void stackIncome3() {
    if (n3 > 0) balance = balance + pow(0.04, n3 / 12) * _btcprice * k3;
    btcnbr = btcnbr + n3;

    n3 = 0;
    k3 = 0;
    col21 = col22 = col23 = col24 = false;

    notifyListeners();
  }

  void stakeBnb30() {
    col1 = !col1;
    col2 = col3 = col4 = false;
    n1 = 1;

    notifyListeners();
  }

  void stakeBnb60() {
    col2 = !col2;
    col1 = col3 = col4 = false;
    n1 = 2;

    notifyListeners();
  }

  void stakeBnb90() {
    col3 = !col3;
    col2 = col1 = col4 = false;
    n1 = 3;

    notifyListeners();
  }

  void stakeBnb120() {
    col4 = !col4;
    col2 = col3 = col1 = false;
    n1 = 4;

    notifyListeners();
  }

  void stakeEth30() {
    col11 = !col11;
    col12 = col13 = col14 = false;
    n2 = 1;

    notifyListeners();
  }

  void stakeEth60() {
    col12 = !col12;
    col11 = col13 = col14 = false;
    n2 = 2;

    notifyListeners();
  }

  void stakeEth90() {
    col13 = !col13;
    col12 = col11 = col14 = false;
    n2 = 3;

    notifyListeners();
  }

  void stakeEth120() {
    col14 = !col14;
    col12 = col13 = col11 = false;
    n2 = 4;

    notifyListeners();
  }

  void stakeBtc30() {
    col21 = !col21;
    col22 = col23 = col24 = false;
    n3 = 1;

    notifyListeners();
  }

  void stakeBtc60() {
    col22 = !col22;
    col21 = col23 = col24 = false;
    n3 = 2;

    notifyListeners();
  }

  void stakeBtc90() {
    col23 = !col23;
    col22 = col21 = col24 = false;
    n3 = 3;

    notifyListeners();
  }

  void stakeBtc120() {
    col24 = !col24;
    col22 = col23 = col21 = false;
    n3 = 4;

    notifyListeners();
  }

  // Future addBnb() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setInt('_bnbnbr', _bnbnbr);
  // }

  // addEth() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setInt('_ethnbr', _ethnbr);
  // }

  // addBtc() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setInt('_btcnbr', _btcnbr);
  // }

  // addBalance() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setDouble('_balance', _balance);
  // }
}
