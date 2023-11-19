import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailPage extends StatelessWidget {
  String image;
  String title;
  String price;
  DetailPage(
      {super.key,
      required this.image,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image,
              height: 500,
              width: 500,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 20),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
