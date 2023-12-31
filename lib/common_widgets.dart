import 'package:flutter/material.dart';
import 'package:flutter_application_4/details.dart';
import 'package:flutter_application_4/utils.dart';

Widget SmallBox(String text, Color boxColor) {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: boxColor,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

// ignore: must_be_immutable
class MyCard extends StatelessWidget {
  String price;
  String image;
  String title;

  MyCard({
    super.key,
    required this.price,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(
              image: image,
              title: title,
              price: price,
              description:
                  'Put your hands in the air for the sleeveless version of our most popular polo. It a soft cotton-blend pique knit that sure to become a wardrobe staple just like its sister.',
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          width: 180,
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  image: DecorationImage(image: NetworkImage(image)),
                ),
              ),
              Container(
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: grey, fontSize: 12),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CircularBox extends StatelessWidget {
  String image;
  String text;
  String text2;

  CircularBox(
    this.image,
    this.text,
    this.text2,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: black,
              width: 2,
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
        ),
        Text(text),
        Text(text2),
      ],
    );
  }
}

// ignore: must_be_immutable
class ImageWithTextContainer extends StatelessWidget {
  String imageUrl;
  String accompanyingText;
  String accompanyingText2;

  ImageWithTextContainer(
      {required this.imageUrl,
      required this.accompanyingText,
      required this.accompanyingText2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(
            imageUrl,
            width: 150,
            height: 150,
            fit: BoxFit.contain,
          ),
          vspace,
          vspace,
          Text(
            accompanyingText,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          vspace,
          Text(
            accompanyingText2,
            style: TextStyle(
              fontSize: 10,
              color: grey,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class GridItem extends StatelessWidget {
  int index;
  String image;
  String title;

  GridItem({required this.index, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lgrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            image,
            height: 120,
            width: 120,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: black),
          ),
        ],
      ),
    );
  }
}
