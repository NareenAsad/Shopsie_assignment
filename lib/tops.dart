import 'package:flutter/material.dart';
import 'package:flutter_application_4/data.dart';
import 'package:flutter_application_4/details.dart';
import 'package:flutter_application_4/utils.dart';

class Tops extends StatelessWidget {
  const Tops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: purple,
        ),
        centerTitle: true,
        title: Text(
          'Tops',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'EduTASBeginner',
            color: purple,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemCount: tops.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                      image: tops[index].image,
                      title: tops[index].title,
                      price: tops[index].price,
                      description:
                          'The Columbia Womens Heavenly Long Hooded Jacket combines stylish urban looks with technology to keep you warm and dry. Made for women, this great fall and winter jacket features a long silhouette with a modern fit and drop tail. '),
                ),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(tops[index].image),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  vspace,
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Text(
                      tops[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      tops[index].price,
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
