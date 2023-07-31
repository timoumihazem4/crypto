import 'dart:math';

import 'package:flutter/material.dart';

class Prices with ChangeNotifier {
  double _balance = 10000.0;
  int _bnbnbr = 0;
  int _ethnbr = 0;
  int _btcnbr = 0;

  double get balance => _balance;
  int get bnbnbr => _bnbnbr;
  int get ethnbr => _ethnbr;
  int get btcnbr => _btcnbr;

  double? _bnbprice;
  double? _ethprice;
  double? _btcprice;

  double? get bnbprice => _bnbprice;
  double? get ethprice => _ethprice;
  double? get btcprice => _btcprice;

  void set1(double? x) {
    _bnbprice = x;
    notifyListeners();
  }

  void set2(double? x) {
    _ethprice = x;
    notifyListeners();
  }

  void set3(double? x) {
    _btcprice = x;
    notifyListeners();
  }

  void set10() {
    _bnbnbr = _bnbnbr + 1;
    _balance = _balance - _bnbprice!;

    notifyListeners();
  }

  void set11() {
    _bnbnbr = _bnbnbr - 1;
    _balance = _balance + _bnbprice!;

    notifyListeners();
  }

  void set20() {
    _ethnbr = _ethnbr + 1;
    _balance = _balance - _ethprice!;

    notifyListeners();
  }

  void set21() {
    _ethnbr = _ethnbr - 1;
    _balance = _balance + _ethprice!;

    notifyListeners();
  }

  void set30() {
    _btcnbr = _btcnbr + 1;
    _balance = _balance - _btcprice!;

    notifyListeners();
  }

  void set31() {
    _btcnbr = _btcnbr - 1;
    _balance = _balance + _btcprice!;

    notifyListeners();
  }

  void set100() {
    _bnbnbr = _bnbnbr + 1;

    notifyListeners();
  }

  void set101() {
    _bnbnbr = _bnbnbr - 1;

    notifyListeners();
  }

  void set200() {
    _ethnbr = _ethnbr + 1;

    notifyListeners();
  }

  void set201() {
    _ethnbr = _ethnbr - 1;

    notifyListeners();
  }

  void set300() {
    _btcnbr = _btcnbr + 1;

    notifyListeners();
  }

  void set301() {
    _btcnbr = _btcnbr - 1;

    notifyListeners();
  }

  void stackIncome1(int n, k) {
    if (n > 0) _balance = _balance + pow(0.0586, k / 12) * _bnbprice! * n;

    notifyListeners();
  }

  void stackIncome2(int n, k) {
    if (n > 0) _balance = _balance + pow(0.06, k / 12) * _ethprice! * n;

    notifyListeners();
  }

  void stackIncome3(int n, k) {
    if (n > 0) _balance = _balance + pow(0.04, n / 12) * _btcprice! * k;

    notifyListeners();
  }
}
