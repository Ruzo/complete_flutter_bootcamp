import 'package:http/http.dart';
import 'package:bitcoin_ticker/keys.env';
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

// const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
// const apiKey = 'YOUR-API-KEY-HERE';
const coinAPIURL = 'https://min-api.cryptocompare.com/data/price';
String apiKey = CRYPTOCOMPAREKEY;

class CoinData {
  Future<double> getCoinData(String crypto, String currency) async {
    dynamic data;
    try {
      data =
          await get('$coinAPIURL?fsym=$crypto&tsyms=$currency&api_key=$apiKey');
    } catch (e) {
      print(e);
    }
    Map<dynamic, dynamic> decodedData = jsonDecode(data.body);
    Map<String, double> price =
        Map<String, double>.from({currency: decodedData[currency].toDouble()});
    return price['$currency'];
  }
}
