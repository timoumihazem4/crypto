// import 'dart:convert';

// import 'package:crypto/rates.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'pricesConst.dart';

// class ApiService {
//   Future<List<BNB>?> getBNB() async {
//     debugPrint('response price 3000DT ');

//     try {
//       var url = Uri.parse(PricesConst.baseUrl);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         debugPrint('response BNB lenghth ${data}');

//         List<BNB> model =
//             List<BNB>.from(data['BNBs'].map((x) => BNB.fromJson(x)));

//         return model;
//       }
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//     return null;
//   }

//   Future<List<ETH>?> getETH() async {
//     debugPrint('response price 3000DT ');

//     try {
//       var url = Uri.parse(PricesConst.baseUrl);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         debugPrint('response ETH lenghth ${data}');

//         List<ETH> model1 =
//             List<ETH>.from(data['ETHs'].map((x) => ETH.fromJson(x)));

//         return model1;
//       }
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//     return null;
//   }

//   Future<List<BTC>?> getBTC() async {
//     debugPrint('response price 3000DT ');

//     try {
//       var url = Uri.parse(PricesConst.baseUrl);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         debugPrint('response BNB lenghth $data');

//         List<BTC> model2 =
//             List<BTC>.from(data['BTCs'].map((x) => BTC.fromJson(x)));

//         return model2;
//       }
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//     return null;
//   }
// }
import 'dart:convert';
import 'dart:developer';

import 'package:crypto/backend/entities/cryto_currencies_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'pricesConst.dart';

class ApiService {
  Future<List<CrytoCurrenciesResponse>> getCryptoCurrencies() async {
    debugPrint("hier I am !");
    try {
      var url = Uri.parse(PricesConst.baseUrl);
      var response = await http.get(url);
      debugPrint("get currency ${response.body} ");

      if (response.statusCode == 200) {
        return [CrytoCurrenciesResponse.fromJson(jsonDecode(response.body))];
      }
    } catch (e) {
      log(e.toString());
    }
    return [];
  }
}
