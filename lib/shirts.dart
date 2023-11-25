import 'package:flutter/material.dart';
import 'package:flutter_application_4/data.dart';
import 'package:flutter_application_4/details.dart';
import 'package:flutter_application_4/utils.dart';

class Shirts extends StatelessWidget {
  const Shirts({Key? key}) : super(key: key);

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
          'Shirts',
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
        itemCount: shirts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                      image: shirts[index].image,
                      title: shirts[index].title,
                      price: shirts[index].price,
                      description:
                          'These semi-fitted women vineyard vines shorts feature a Hollywood waistband, belt loops, double hooks and front bar closure at the front zipper, slash side pockets, a hidden coin pocket, and back pockets with buttons. '),
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
                          image: AssetImage(shirts[index].image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  vspace,
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Text(
                      shirts[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      shirts[index].price,
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
