import 'package:flutter/material.dart';
import 'package:shop_shoes/Animation/FadeAnimation.dart';
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
                    child: FadeAnimation(
                      1,
                      Container(
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
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeAnimation(
                        1.1,
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text(
                              'Tênis',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeAnimation(
                        1.2,
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text(
                              'Futebol',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeAnimation(
                        1.3,
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text(
                              'Corrida',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: AspectRatio(
                      aspectRatio: 2 / 1,
                      child: FadeAnimation(
                        1.4,
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text(
                              'Golfer',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
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
            FadeAnimation(
              1.5,
              makeItem(
                image: 'assets/images/one.jpg',
                tag: 'red',
                context: context,
              ),
            ),
            FadeAnimation(
              1.6,
              makeItem(
                image: 'assets/images/two.jpg',
                tag: 'blue',
                context: context,
              ),
            ),
            FadeAnimation(
              1.7,
              makeItem(
                image: 'assets/images/three.jpg',
                tag: 'white',
                context: context,
              ),
            ),
            FadeAnimation(
              1.8,
              makeItem(
                image: 'assets/images/four.jpg',
                tag: 'green',
                context: context,
              ),
            ),
            FadeAnimation(
              1.9,
              makeItem(
                image: 'assets/images/five.jpg',
                tag: 'blue dark',
                context: context,
              ),
            ),
            FadeAnimation(
              2,
              makeItem(
                image: 'assets/images/six.jpg',
                tag: 'beige',
                context: context,
              ),
            ),
            FadeAnimation(
              2.1,
              makeItem(
                image: 'assets/images/seven.jpg',
                tag: 'beige and blue',
                context: context,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
