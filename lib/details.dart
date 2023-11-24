import 'package:flutter/material.dart';
import 'package:flutter_application_4/screen_4.dart';
import 'package:flutter_application_4/utils.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  String image;
  String title;
  String price;
  String description;
  DetailsPage({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Screen4(),
              ),
            );
          },
          color: purple,
        ),
        centerTitle: true,
        title: Text(
          "Shopsie",
          style: TextStyle(
            fontSize: 42,
            fontFamily: 'EduTASBeginner',
            fontWeight: FontWeight.w500,
            color: purple,
            height: 1,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Image.network(
                image,
              )),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: black, fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  price,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 79, 33, 243),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Product Details",
                  style: TextStyle(
                      color: black, fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  description,
                  style: TextStyle(
                      color: black, fontSize: 16, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 80),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(purple),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 100, vertical: 17)),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
