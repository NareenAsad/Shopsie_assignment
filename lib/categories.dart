import 'package:flutter/material.dart';
import 'package:flutter_application_4/screen_4.dart';
import 'package:flutter_application_4/utils.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

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
          'All Categories',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'EduTASBeginner',
            color: purple,
          ),
        ),
      ),
      endDrawer: Drawer(),
    );
  }
}
