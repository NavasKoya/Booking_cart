import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {

  final String bookName;
  final int itemCount;
  final minusCartCount;
  final plusCartCount;

  const CartItemWidget({Key? key, required this.bookName, required this.itemCount, required this.minusCartCount, required this.plusCartCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _cartItemWidget(context),
    );
  }

  _cartItemWidget(context) {
    Size _pageSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: _pageSize.width*.5,
                child: Text(bookName, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: minusCartCount,
                      child: _cartButton(context, _pageSize, Icons.remove),
                    ),

                    Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(itemCount.toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ),
                    ),

                    InkWell(
                      onTap: plusCartCount,
                      child: _cartButton(context, _pageSize, Icons.add),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _cartButton(context, Size _pageSize, IconData _cardIcon) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      elevation: 8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey
        ),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Icon(_cardIcon),
      ),
    );
  }
}
