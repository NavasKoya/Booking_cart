import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:nullsafety_test/diacritech/widget/cart_item_widget.dart';

class BookCartPage extends StatefulWidget {

  @override
  _BookCartPageState createState() => _BookCartPageState();
}

class _BookCartPageState extends State<BookCartPage> {

  double _totalCartValue = 0;

  Map<String, int> _bookListMap = {
    'Book Series 1': 0,
    'Book Series 2': 0,
    'Book Series 3': 0,
    'Book Series 4': 0,
    'Book Series 5': 0,
  };

  Map<String, int> _cartListMap = new HashMap();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavBar(),
      body: _viewCartPage(),
    );
  }

  _handleOnCartValChange() {
    _totalCartValue = 0;

    _cartListMap.addAll(_bookListMap);

    _cartListMap.removeWhere((key, value) => value == 0);

    _calculateGrandTotal(_cartListMap);
  }

  Map<String, int> _calculateGrandTotal(Map<String, int> _cartList) {
    double _totalVal = 0;

    switch (_cartList.length) {
      case 1:
        _cartList.forEach((key, value) {
          _totalVal += (8 * value).toDouble();
          _totalVal=_totalVal/value;
        });
        break;
      case 2:
        _totalVal += 16;
        double percentage = ((_totalVal * 5) / 100);
        _totalVal -= percentage;
        break;
      case 3:
        _totalVal += 24;
        double percentage = ((_totalVal * 10) / 100);
        _totalVal -= percentage;
        break;
      case 4:
        _totalVal += 32;
        double percentage = ((_totalVal * 20) / 100);
        _totalVal -= percentage;
        break;
      case 5:
        _totalVal += 40;
        double percentage = ((_totalVal * 25) / 100);
        _totalVal -= percentage;
        break;
      default:
    }

    _cartList.updateAll((key, value) => value - 1);

    _cartList.removeWhere((key, value) => value == 0);

    _totalCartValue += _totalVal;

    if (_cartList.isEmpty)
      return _cartList;
    else
      return _calculateGrandTotal(_cartList);
  }

  _bottomNavBar(){
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Color(0xFF2B2B2B),
        borderRadius: BorderRadius.vertical(top: Radius.circular(25))
      ),
      child: Text(
        "\$ ${_totalCartValue.toString()}",
        style: TextStyle(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.right,
      ),
    );
  }

  _viewCartPage() {
    return Column(
      children: List.generate(_bookListMap.keys.length, (index) {
        String _bookName = _bookListMap.keys.toList()[index];
        int _bookCount = _bookListMap[_bookName] ?? 0;
        return CartItemWidget(
            bookName: _bookName,
            itemCount: _bookCount,
            minusCartCount: (){
              if(_bookCount>0){
                setState(() {
                  _bookListMap.update(_bookName, (value) => value - 1);
                });
                _handleOnCartValChange();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Item value cannot be less than 0"),
                      duration: Duration(seconds: 2),
                    )
                );
              }
            },
            plusCartCount: (){
              setState(() {
                _bookListMap.update(_bookName, (value) => value + 1);
              });
              _handleOnCartValChange();
            }
        );
      }),
    );
  }
}
