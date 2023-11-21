import 'package:flutter/material.dart';

// ignore: must_be_immutable
// class DetailPage extends StatelessWidget {
//   String image;
//   String title;
//   String price;
//   DetailPage(
//       {super.key,
//       required this.image,
//       required this.title,
//       required this.price});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.network(
//               image,
//               height: 500,
//               width: 500,
//             ),
//             SizedBox(
//               width: 20,
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(fontSize: 40),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   price,
//                   style: TextStyle(fontSize: 20),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

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
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text(
          "Shopsie",
          style: TextStyle(
              color: const Color.fromARGB(255, 79, 33, 243),
              fontSize: 20,
              fontStyle: FontStyle.italic),
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
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
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
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  description,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
