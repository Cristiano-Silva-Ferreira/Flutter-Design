import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_shoes/menu/itens_menu.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text(
          'Calçados',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ItensMenu(),
    );
  }
}
