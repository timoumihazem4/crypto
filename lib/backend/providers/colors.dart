import 'package:flutter/material.dart';

class Colr with ChangeNotifier {
  Color? _colr0;
  Color? _colr1;
  Color? _colr2;
  Color? _colr3;
  Color? _colr4;
  Color? _colr5;
  Color? _colrv0;
  Color? _colrv1;
  Color? _colrv2;
  Color? _colrv3;
  Color? _colrv4;
  Color? _colrv5;
  Color _bkgcol = Colors.green;

  Color? get colr0 => _colr0;
  Color? get colr1 => _colr1;
  Color? get colr2 => _colr2;
  Color? get colr3 => _colr3;
  Color? get colr4 => _colr4;
  Color? get colr5 => _colr5;
  Color? get colrv0 => _colrv0;
  Color? get colrv1 => _colrv1;
  Color? get colrv2 => _colrv2;
  Color? get colrv3 => _colrv3;
  Color? get colrv4 => _colrv4;
  Color? get colrv5 => _colrv5;
  Color? get bkgcol => _bkgcol;

  void setcl0() {
    _colr0 = Colors.red;
    notifyListeners();
  }

  void setcl1() {
    _colr1 = Colors.red;
    notifyListeners();
  }

  void setcl2() {
    _colr2 = Colors.red;
    notifyListeners();
  }

  void setcl3() {
    _colr3 = Colors.red;
    notifyListeners();
  }

  void setcl4() {
    _colr4 = Colors.red;
    notifyListeners();
  }

  void setcl5() {
    _colr5 = Colors.red;
    notifyListeners();
  }

  void setclv0() {
    _colrv0 = Colors.red;
    notifyListeners();
  }

  void setclv1() {
    _colrv1 = Colors.red;
    notifyListeners();
  }

  void setclv2() {
    _colrv2 = Colors.red;
    notifyListeners();
  }

  void setclv3() {
    _colrv3 = Colors.red;
    notifyListeners();
  }

  void setclv4() {
    _colrv4 = Colors.red;
    notifyListeners();
  }

  void setclv5() {
    _colrv5 = Colors.red;
    notifyListeners();
  }

  void bkgreen() {
    _bkgcol = Colors.green;
    notifyListeners();
  }

  void bkgblk() {
    _bkgcol = Colors.black;
    notifyListeners();
  }

  void bkggrey() {
    _bkgcol = Colors.grey;
    notifyListeners();
  }
}
