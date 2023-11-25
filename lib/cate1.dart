import 'package:flutter/material.dart';
import 'package:flutter_application_4/cate2.dart';
import 'package:flutter_application_4/utils.dart';

class Categories1 extends StatelessWidget {
  const Categories1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
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
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Categories2()));
            },
            icon: Icon(Icons.menu),
            color: purple,
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Card(
            child: ListTile(
              leading: Image.network(
                'https://m.media-amazon.com/images/I/81TvRX4qvxL._AC_UL480_FMwebp_QL65_.jpg',
                height: 150,
              ),
              title: Text(
                'Shirts',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold, color: purple),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                color: purple,
                onPressed: () {},
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network(
                'https://m.media-amazon.com/images/I/81MLxOBAtsS._AC_UL480_FMwebp_QL65_.jpg',
                height: 150,
              ),
              title: Text(
                'Bottoms',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold, color: purple),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                color: purple,
                onPressed: () {},
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network(
                'https://m.media-amazon.com/images/I/51ty2Kzyv1L._AC_SR480,480_.jpg',
                height: 150,
              ),
              title: Text(
                'Shoes',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold, color: purple),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                color: purple,
                onPressed: () {},
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network(
                'https://m.media-amazon.com/images/I/61b8Vy3KlSL._AC_UL480_FMwebp_QL65_.jpg',
                height: 150,
              ),
              title: Text(
                'Heels',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold, color: purple),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                color: purple,
                onPressed: () {},
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network(
                'https://m.media-amazon.com/images/I/61+bO-1VUBL._AC_UL480_FMwebp_QL65_.jpg',
                height: 150,
              ),
              title: Text(
                'Accessories',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold, color: purple),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                color: purple,
                onPressed: () {},
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network(
                'https://m.media-amazon.com/images/I/81DmDBhpPwL._AC_UL480_FMwebp_QL65_.jpg',
                height: 150,
              ),
              title: Text(
                'Tops',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold, color: purple),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                color: purple,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
