import 'package:flutter/material.dart';
import 'package:flutter_application_4/data.dart';
import 'package:flutter_application_4/details.dart';
import 'package:flutter_application_4/utils.dart';

class Bottoms extends StatelessWidget {
  const Bottoms({super.key});

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
          'Bottoms',
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
        itemCount: bottoms.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                      image: bottoms[index].image,
                      title: bottoms[index].title,
                      price: bottoms[index].price,
                      description:
                          'Dive into the world of timeless fashion with our collection of jeans that seamlessly blend comfort and style. Crafted with precision, our jeans range from classic black denim to trendy bootcut styles, ensuring theres a perfect fit for every occasion.'),
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
                          image: NetworkImage(bottoms[index].image),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  vspace,
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Text(
                      bottoms[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      bottoms[index].price,
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
