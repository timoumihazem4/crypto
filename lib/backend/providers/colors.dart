import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Colr extends ChangeNotifier {
  static final Colr _instance = Colr._internal();

  Colr._internal();

  factory Colr() {
    return _instance;
  }

  late SharedPreferences prefs;

  bool _colr0 = false;
  bool _colr1 = false;
  bool _colr2 = false;
  bool _colr3 = false;
  bool _colr4 = false;
  bool _colr5 = false;
  bool _colrv0 = false;
  bool _colrv1 = false;
  bool _colrv2 = false;
  bool _colrv3 = false;
  bool _colrv4 = false;
  bool _colrv5 = false;
  int _bkgcol = 1;

  int get bkgcol => _bkgcol;
  set bkgcol(int value) {
    _bkgcol = value;
    prefs.setInt("_bkgcol", value);
  }

  bool get colr0 => _colr0;
  set colr0(bool value) {
    _colr0 = value;
    prefs.setBool("_colr0", value);
  }

  bool get colr1 => _colr1;
  set colr1(bool value) {
    _colr1 = value;
    prefs.setBool("_colr1", value);
  }

  bool get colr2 => _colr2;
  set colr2(bool value) {
    _colr2 = value;
    prefs.setBool("_colr2", value);
  }

  bool get colr3 => _colr3;
  set colr3(bool value) {
    _colr3 = value;
    prefs.setBool("_colr3", value);
  }

  bool get colr4 => _colr4;
  set colr4(bool value) {
    _colr4 = value;
    prefs.setBool("_colr4", value);
  }

  bool get colr5 => _colr5;
  set colr5(bool value) {
    _colr5 = value;
    prefs.setBool("_colr5", value);
  }

  bool get colrv0 => _colrv0;
  set colrv0(bool value) {
    _colrv0 = value;
    prefs.setBool("_colrv0", value);
  }

  bool get colrv1 => _colrv1;
  set colrv1(bool value) {
    _colrv1 = value;
    prefs.setBool("_colrv1", value);
  }

  bool get colrv2 => _colrv2;
  set colrv2(bool value) {
    _colrv2 = value;
    prefs.setBool("_colrv2", value);
  }

  bool get colrv3 => _colrv3;
  set colrv3(bool value) {
    _colrv3 = value;
    prefs.setBool("_colrv3", value);
  }

  bool get colrv4 => _colrv4;
  set colrv4(bool value) {
    _colrv4 = value;
    prefs.setBool("_colrv4", value);
  }

  bool get colrv5 => _colrv5;
  set colrv5(bool value) {
    _colrv5 = value;
    prefs.setBool("_colrv5", value);
  }

  Future init() async {
    prefs = await SharedPreferences.getInstance();
    _colr0 = prefs.getBool('_colr0') ?? _colr0;
    _colr1 = prefs.getBool('_colr1') ?? _colr1;
    _colr2 = prefs.getBool('_colr2') ?? _colr2;
    _colr3 = prefs.getBool('_colr3') ?? _colr3;
    _colr4 = prefs.getBool('_colr4') ?? _colr4;
    _colr5 = prefs.getBool('_colr5') ?? _colr5;
    _colrv0 = prefs.getBool('_colrv0') ?? _colrv0;
    _colrv1 = prefs.getBool('_colrv1') ?? _colrv1;
    _colrv2 = prefs.getBool('_colrv2') ?? _colrv2;
    _colrv3 = prefs.getBool('_colrv3') ?? _colrv3;
    _colrv4 = prefs.getBool('_colrv4') ?? _colrv4;
    _colrv5 = prefs.getBool('_colrv5') ?? _colrv5;
    _bkgcol = prefs.getInt('_bkgcol') ?? _bkgcol;
  }

  void setcl0() {
    colr0 = true;
    notifyListeners();
  }

  void setcl1() {
    colr1 = true;
    notifyListeners();
  }

  void setcl2() {
    colr2 = true;
    notifyListeners();
  }

  void setcl3() {
    colr3 = true;
    notifyListeners();
  }

  void setcl4() {
    colr4 = true;
    notifyListeners();
  }

  void setcl5() {
    colr5 = true;
    notifyListeners();
  }

  void setclv0() {
    colrv0 = true;
    notifyListeners();
  }

  void setclv1() {
    colrv1 = true;
    notifyListeners();
  }

  void setclv2() {
    colrv2 = true;
    notifyListeners();
  }

  void setclv3() {
    colrv3 = true;
    notifyListeners();
  }

  void setclv4() {
    colrv4 = true;

    notifyListeners();
  }

  void setclv5() {
    colrv5 = true;

    notifyListeners();
  }

  void bkgind() {
    bkgcol = 0;
    notifyListeners();
  }

  void bkgblk() {
    bkgcol = 1;
    notifyListeners();
  }

  void bkgblgrey() {
    bkgcol = 2;
    notifyListeners();
  }
}
