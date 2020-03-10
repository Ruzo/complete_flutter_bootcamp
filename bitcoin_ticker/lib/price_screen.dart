import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coin_data.dart';
import 'dart:io' show Platform;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  bool spinner = false;
  CoinData coinData = CoinData();
  List<Map<String, dynamic>> cryptos = cryptoList
      .map(
        (c) => {'coin': c, 'price': 0.0},
      )
      .toList();

  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = currenciesList
        .map((currency) => DropdownMenuItem(
              child: Text(currency),
              value: currency,
            ))
        .toList();
    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
        });
        getData();
      },
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> pickerItems =
        currenciesList.map((currency) => Text(currency)).toList();
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        selectedCurrency = currenciesList[selectedIndex];
        getData();
      },
      children: pickerItems,
    );
  }

  void getData() async {
    spinner = true;
    List<Map<String, dynamic>> newCryptoList = [];
    for (Map<String, dynamic> crypto in cryptos) {
      double newPrice =
          await coinData.getCoinData(crypto['coin'], selectedCurrency);
      crypto['price'] = newPrice;
      newCryptoList.add(crypto);
    }
    setState(() {
      cryptos = newCryptoList;
    });
    spinner = false;
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ...cryptos
                  .map((crypto) => Padding(
                        padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
                        child: Card(
                          color: Colors.lightBlueAccent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 28.0),
                            child: Text(
                              '1 ${crypto['coin']} = ${crypto['price']} USD',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
              Container(
                height: 150.0,
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 30.0),
                color: Colors.lightBlue,
                child: Platform.isIOS ? iOSPicker() : androidDropdown(),
              ),
            ],
          ),
          Visibility(
            visible: spinner,
            child: SpinKitCircle(
              size: 200.0,
              color: Color(0x2e020202),
            ),
          ),
        ],
      ),
    );
  }
}
