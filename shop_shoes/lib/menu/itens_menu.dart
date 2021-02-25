import 'package:flutter/material.dart';
import 'package:shop_shoes/components/make_item.dart';

class ItensMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 2.3 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Todos',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Center(
                        child: Text(
                          'Tênis',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Center(
                        child: Text(
                          'Futebol',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Center(
                        child: Text(
                          'Corrida',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Center(
                        child: Text(
                          'Golfer',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            makeItem(image: 'assets/images/one.jpg', tag: 'Vermelho'),
          ],
        ),
      ),
    );
  }
}
