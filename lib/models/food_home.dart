import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodHomeList extends StatelessWidget {
  const FoodHomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        children: [
          FoodHome(
              img: 'assets/img/primerib.png',
              titlefood: 'PRIME RIB ROAST',
              routes: '/primeribroast'),
          FoodHome(
              img: 'assets/img/nasigoreng.png',
              titlefood: 'NASI GORENG',
              routes: '/primeribroast'),
          FoodHome(
              img: 'assets/img/bakso.png',
              titlefood: 'BAKSO',
              routes: '/primeribroast'),
          SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}

class FoodHome extends StatelessWidget {
  final String img;
  final String titlefood;
  final String routes;
  FoodHome({required this.img, required this.titlefood, required this.routes});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routes);
      },
      child: Container(
        height: 220,
        margin: EdgeInsets.only(top: 20),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 220,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
            ),
            Positioned(
                bottom: 20,
                child: Text(
                  titlefood,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}
