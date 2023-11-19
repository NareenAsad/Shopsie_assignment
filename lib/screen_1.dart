import 'package:flutter/material.dart';
import 'package:flutter_application_4/screen_2.dart';
import 'package:flutter_application_4/utils.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Vertically align the text
          children: [
            Text(
              "Shopsie",
              style: TextStyle(
                fontSize: 62,
                fontFamily: 'EduTASBegineer',
                fontWeight: FontWeight.w500,
                color: purple,
              ),
            ),
            vspace,
            Text(
              "The best way to style your life.",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Agbalumo',
                color: grey,
              ),
            ),
            SizedBox(height: 160),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen2()),
                );
              },
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(purple),
                foregroundColor: MaterialStateProperty.all(white),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 70, vertical: 17)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
