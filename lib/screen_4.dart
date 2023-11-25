// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_4/accessories.dart';
import 'package:flutter_application_4/bottoms.dart';
import 'package:flutter_application_4/cate1.dart';
import 'package:flutter_application_4/common_widgets.dart';
import 'package:flutter_application_4/heels.dart';
import 'package:flutter_application_4/screen_2.dart';
import 'package:flutter_application_4/shirts.dart';
import 'package:flutter_application_4/shoes.dart';
import 'package:flutter_application_4/tops.dart';
import 'package:flutter_application_4/utils.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 9,
        iconTheme: IconThemeData(color: purple),
        title: Center(
          child: Text(
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
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: purple,
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
            color: purple,
          ),
          IconButton(
            icon: Icon(Icons.person_outline_sharp),
            onPressed: () {},
            color: purple,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: white,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,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',
                ),
              ),
              accountName: Text('Claudia Alves',
                  style: TextStyle(
                      color: black, fontFamily: 'FjallaOne', fontSize: 20)),
              accountEmail: Text('hello@reallygreatsite.com',
                  style: TextStyle(
                      color: black, fontFamily: 'FjallaOne', fontSize: 16)),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Information',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'FjallaOne'),
                  ),
                  SizedBox(height: 8),
                  ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit Profile'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Username'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text('E-mail'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Password'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'FjallaOne'),
                  ),
                  SizedBox(height: 8),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://t4.ftcdn.net/jpg/03/85/95/63/360_F_385956366_Zih7xDcSLqDxiJRYUfG5ZHNoFCSLMRjm.jpg')),
                    title: Text('All categories'),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Categories1()));
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'data:image/png;base64,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'),
                    ),
                    title: Text('Shirts'),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Shirts()));
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'data:image/png;base64,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'),
                    ),
                    title: Text('Bottoms'),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Bottoms()));
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'data:image/jpeg;base64,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'),
                    ),
                    title: Text('Shoes'),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Shoes()));
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAgVBMVEX///8AAAD5+fn4+Pj8/Pzv7+/g4ODy8vLo6Ojb29u/v79DQ0Pj4+Nubm7w8PArKyuwsLDOzs6BgYGbm5unp6ehoaFPT08+Pj6KioozMzPR0dEoKCjHx8e1tbUICAhXV1cbGxtISEh3d3dkZGQfHx+SkpKAgIBdXV0UFBRycnIyMjJXvEFxAAAMwklEQVR4nO1d55qqMBAVsYF6LWtBxV533/8Br7vOCTUNQaIf58/dq6AzJJlyZhJrtQoVKlSoUKFChQoVKlSoUKFChQpvBHvY9zplC1Ek/JN1h1O2GIXB/rb+sClbkKKwHFiESdmiFIOpxTColy1MAbCvVggfOIjLXVhBa/Vxg/hlxfBpg3iIK2hZZYuUK9r7QLHzkP6Yli1VjuidmH43v1a70Z+fsxKdYABnzfv/P24Ql4GC3t8LDfL7J7tkyXKCGyg4pJfWHzWIgYKbEV5rLD5oJY6Ygj+hlOmDBjFYg7NG+HVE4GXJlRtaTMFt9A3M3a9y5MoN7Q0UPDZib2Elvrk5nTEFE299xiB6ULCf8uaeDGz75WLlB5c/grWPGMQOFOyme70uvf2+PhGL8MSZhz69f36tWPmBzdEW74o5XfCmK7EOn85P5RHueC8UK0dMBGYUwDxuvkyqHIEESegMMIjjl4mVI7AKxaH1lq56xzIG+fOV+CoM4uE1QuUJ+EIZYzh720EEfS+7DgyOyB6ZibmqCcFK5DpNQ9EjuZfSK991EIkuXMWTwhQcScU3K5n21f0cBvFauFB5okHL0Fe5uP+OgwhfoeQDsGZnRUuVJ4gr7KpdfSEVR/JLjQGxFxe1q5tvOIhkH13Fy0HnKC1bMzBQ9YYP/CMN94UKlScaJLFy7o4CuOqglw4ium/KN9hUMl0UKFSucLUn3fTNBpEIjG+NW0hDSTppDGhZ6VC9qHsP5ZeagEsGaalQ8ya9YNcMiwq8znu0ES2yRGF7UvEtqm2nLMnCW3H8G43MIsA7DWI2UVHxfwd6mETVvQ2kVK8ImfJFRg3BZ7wBPZxRQ8ZnmM8sZtUQrSmpRXGjkFVD1mVrPClFcqomwAHehs8gOa2fiQIjHMHYyhIOvR5WAM0NTm26TZGlKw1WGGMtHc90l+Gp8CmiouVpBDdt4jPmxUmXB2ZWDBqZ4lT/lhLQj2tozZSdeB0ToEgBn4aX0FAjKUKXitHdwzTTthEVF6pNM3T9xuQsiobhUBuuwjqu1e4Gn2FyKkwy/jq1SXi/2kGNZqLi48bgTimKoHe/f7fDi/JHyTdiEA1OhesRc9iah3RUCsf2dLG5TTaozCBZD+2NVfJz6JQyOIuKl/HDw6hiQBAymJtFHRLjNQ5UVOicAZ9hbhZ1hrsIsA5UVJAbTTbGBuBuiiq9wG/IcyP0ZxgbgJO7GETCknawV30vzYwxq00NwMFGxOLtYLOzdBTxCcYeLjFLX0ZnpuKPbBRR2jc1dqPRSkQlgWeUrjBcaOhWBbKcW94bqe9FgaqwobEbHFoyA/KZijK/SFVIQ8sYjRtXumDXrKQpzFd8EiVhzjf2wc5nSSsDMmgzY7exwBIGKoq9HQqKZjaDcU3NfY2GzgARJ1OI3Yzs6CNTk+KwQzG4LI9HI66RzWBIEeOvt2Nc6kD4KeitNTJ2I9licVszRodLsly0ZRp5HBEZ02jcZicUlGw+ROxm4l5hMidRBrGbVFDcBWWDjjQwdkvr3gtot31YV1Gai9jNwO6FSVIyFs3c7quzHeQZQp+BvbbmdS9QzBVK8xuYcftHtNoL6ClB1ILYTRaovx6U5v8Er6DkMoAPbLDCxkbAjMK9GOf2qV69C15JGTDm/QXZ4lJ+STmwSTA2Olh3EdvDVBRkgahGmtZ5Wl9FR6xBrjDWyf0tN6jg3YxrWtxH7eSaownWomApwsmYlu33oxptOauJ+XQB/YZBNCzbP0SWHaZasnbNTqvjs2pw+4ZtwvQiUwskW0q2BC8iGCJ4TrM8RnRbCUVpqZkEEl1+Lo9oyCyP4YdnFrq5UuMzmFlB+wUeglGJIq2vR7QFS5p+KQtYufOUHVdUiKgZ0QqbSErWecQgcnl+3Q0ew6SjbOixP+pPO/Ekw+48vt8HK2JSbb/5kPr2az0xybi8E+bphluwwTw3iB+2B8FDJ4ZUwJkh+OTPQuTM+p3HhWEeWA9eKSoAjC3f2CBRNKi5dv+QyAn+FNl6+H0+9waPodg89gJQJOoHsaeQicAs5MYtzGMYk2Mc2cBhH4WQ4Iax4S9WeAzFgwyKRxB6U5ouqbDA2HA9BprJjClGnZl1nCoZehDcfKIfOYYpxagJM6DRRIoLzEK+QdpLr3gpXLZqFI/JwIG1/CoFO5TYDGPjY242yExKfTWqFHzOCaVHMyhwMo7bmk1RqZS2BnvFP9GUhadGRDaUPs0RryiciQy3Lyc0jIhsiJpZoYNLXAx9ALkwv9QEY2MCe0qKbWAfVGrVaGLgB+CMuDKg3sa6vUOt+1KQURLU90GTm5BGQUNK7ZQafpFB8H1nHdmyAcaG3FudrINaX/peapaQCxtAvJGT6KQUS/lQOAEE9bbyd0b9PARxpjLrEcFcapfYrxEocDbu+Fxg9ZisxkjvQB4MokAwFOrkLP9fvNgvTEdKgd0v6byLwJIOOdujKEv3EUEc/qnKrAdK+NZfesuG3IHopDBGIYudYj3YHuAVoiMOU6J1qNqxjQRCVIZBYVXsFFnN5+/rC9gKR8tlEiSKaviRSy+nkGuhyUwY564jjd2EHJjy4WY0q4V9i7BHogPRJ1Ycl5wZc/qGL5JGeSea0knZmKeCT00oeMch1zoyxTIeRWLqPT+0uUYYqrNfsOEyGhjC8PbH36mUI49Fs/OgRrWFgCkoLPmyXmrezKNHcKuNYg2D19z8I2YnxSAacSQJJ47VwYFzPhd19V+fGddxm9M4gsZoKky6KMC6CRdNE/M0NTZAKyvl3X6sN3nr6x67kgaanV078l0qwL4uMbvN5mmay8AqZGGPH1uPi8nzjcc0OxdEH+mca0mW8iaOWVjPWHKs0Qi5CA2VP7Ci8J51kGT1Tw38q34ruApJpIdhuSVEDa/CAH70mId7VPHcgiSObVNTGpAoSJSdmJ9j5ahZbMZhmidWhhM/lWS2foJdZjsSSFOdOQE2QzKIbCvcPBJZo/6c5ix7kQ0fv09xnH0goSGSfZ17sXNNMrUvTNCQ82xj9qbvQLXP7PfuCIt1RqsDISmU1nK0oH5leXOwsubDxySprxGWcxvI65OfmI5WtoGkm/FI9T4DXy15uo2wgZxdzudj8IKAGWq4iZ0Rs4l+XE63NmdZNFQdxGZ8yjGsxDZkFDesGcwOrb8eRdKaBCdNJKkJ7q0SktKTlX1Dx9slbrpqKUnzpUUWWvOYOeVfD/yXuhXnpDLn7OE+eWffVfZrWH/fmTRk3RnSsWick2JuVX2Tk/KT6LvrUM0s0vNZ0mfoHnKhsRHYntyiMuqUpuzJwkpi5bny+UpLeZTlfO9faB3i4h6ZnF3t0pvjxWPWPyzGkglLGZzv6T/Xx/dCYsXrW+50+jX1MxEVdT95ytwfziIdaf35tEz0NxHirJDXlEPbw6T/uOMmeGIUAYL01u9+ZZtJXtVVaq/TlOSzKTQ7h7qEaQAYyRfuXGu7x1tcRa5hJQ2noKT0vw4h7WsbEv/5XtTFcktANAJn8t1Z6tLsGI1XH0/XdsehoeQNItYfUVKZDieDhSujvaSz3tO384wkUQkXRzLWIrAKRTld+vSAeUwoytutJzQM5mkpW4KIL9xx3qYEqE9GP+PpawJGrXgQE8Q7rgqkd+eppcTs6a6EJiFS4cR5G1ufSMNFRjKEtUHJD0HLF7YzosCT5+hitP4gK2/HGLXXHRXZ9Cff8yA/5oWN9PBnVAnLPsvYYQzFxzYNeznxYgUAftRIFqZLHQNPHCrLosVtcRO13nGG3jGVEuF6AVp/89pK/CTksBn7ty3iIJfWaHjYpqXBBG7uzjT8eVZDdlb7PffOtf/HcSf9RSLSjoHv5mBDQdg8kwN15MteA/V2z/0aJ86OT0efbyFZc3D3eQ1rrYAXPWb3/XbP8b8O11TOIonN7DBdiqQmDVe1/eOP5+ZXSEXrot3i1Bm508N2zuNWE7gdz+uO1PiThidQSk/2vLbDRnysNI6NtuMPp4culxdPwWl7Xi8VTTbt89nViW95NnZuXMOSzL11q/MvLordbnY6d/tx9oTWMQ277vHsLrWcNhnAm63527J8JH6T4DbfXo/H/vd3v388Hq+z7uIks4xpmB3Ofi+Du26Tp68nz4bOilEW+UWYj6d+M7OPtWPrOhdS8JIuqS5W3f7UXT67f8qOGeV8Tl1bprKayphfD1PfyYmerMeWel5nAifaDVSwOI6/1k4n+4xMQyNW9srv1OPeOVn5S8fpbiAnrlPUsYSxZ50r6dlaX67dQcLRbW6n1WK//fYmrr/sFJ4yO5Evn+f/ffVOy3Gcpe+u3dH9D6fV6zTbL91+uQyFIX0D9mJVqFChQoUKFSpUqFChQoUKFSpUqFDBDPwHgNmOzro9Z4QAAAAASUVORK5CYII='),
                    ),
                    title: Text('Heels'),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Heels()));
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'data:image/png;base64,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'),
                    ),
                    title: Text('Accessories'),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Accessories()));
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqp_md-YVEHxsyR8eI7dVWYUnjSp-bxIXmcQ&usqp=CAU'),
                    ),
                    title: Text('Tops'),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Tops()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            vspace,
            vspace,
            Center(
              child: Image.network(
                'https://lagence.com/cdn/shop/products/036_10463.jpg?v=1689718771&width=480',
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            vspace,
            vspace,
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(8.0),
                primary: white,
                onPrimary: purple,
                shadowColor: black.withOpacity(0.3),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'SHOP NOW',
                style: TextStyle(
                  color: purple,
                  fontSize: 14,
                ),
              ),
            ),
            vspace,
            vspace,
            Center(
              child: ClipRRect(
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  fit: BoxFit.cover,
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            vspace,
            vspace,
            Text(
              'TRENDING NOW',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            vspace,
            vspace,
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallBox('All', purple),
                  hspace,
                  SmallBox('Dresses', lgrey),
                  hspace,
                  SmallBox('Accessories', lgrey),
                  hspace,
                  SmallBox('Dresses', lgrey),
                ],
              ),
            ),
            vspace,
            vspace,
            vspace,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  MyCard(
                      price: "\$1399.89",
                      image:
                          'data:image/jpeg;base64,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',
                      title: "Celine Menswear"),
                  MyCard(
                    price: "\$3579.78",
                    title: "Rinestone Sandals",
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIkYtIfQFWITBUi0IKb5oIqWumZfRoYVRnh_Ue70ImvShRKajdT3gWpq3icOFnTHDF460&usqp=CAU',
                  ),
                  MyCard(
                    price: "\$8459.99",
                    title: "Celine Jeans & Jacket",
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ8PrgMGxwQBsiWWjKuN8yvT5M0yroxDbgz5h5K5gurf2S7K6SvIUBGNxIUOmIuMQixiE&usqp=CAU',
                  ),
                  MyCard(
                    price: "\$2599.99",
                    title: "Women Slingback Heels",
                    image:
                        'https://www.ndure.com/cdn/shop/files/W-HL-KIT-0045.jpg?v=1697623892',
                  ),
                  MyCard(
                    price: "\$2599.99",
                    title: "Celine Homme Winter",
                    image:
                        'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2023%2F02%2Fceline-homme-winter-2023-paris-syndrome-hedi-slimane-runway-show-review-54.jpg?cbr=1&q=90',
                  ),
                  MyCard(
                    price: "\$1569.00",
                    title: "Rose Gold Shoes",
                    image:
                        'https://media.boohoo.com/i/boohoo/ayy10787_black_xl_3',
                  ),
                ],
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'ACTUAL CATEGORIES',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            vspace,
            vspace,
            Center(
              child: Image.network(
                'https://hips.hearstapps.com/harpersbazaaruk.cdnds.net/16/19/2560x1280/landscape-1462799006-denim-1.jpg?resize=640:*',
                fit: BoxFit.cover,
                height: 300,
                width: 300,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'Outwear',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            vspace,
            Text(
              'Raincoats, sweaters, etc',
              style: TextStyle(
                fontSize: 12,
                color: grey,
              ),
            ),
            vspace,
            vspace,
            Center(
              child: Image.network(
                'https://sc02.alicdn.com/kf/HTB1AOstcQfb_uJkSne1q6zE4XXab.jpg',
                fit: BoxFit.cover,
                height: 300,
                width: 300,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'High Heels',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            vspace,
            Text(
              'Shoes, sandals, etc',
              style: TextStyle(
                fontSize: 12,
                color: grey,
              ),
            ),
            vspace,
            vspace,
            Center(
              child: Image.network(
                'https://m.media-amazon.com/images/I/51YsJrMQxBL._AC_UY350_.jpg',
                fit: BoxFit.cover,
                height: 300,
                width: 300,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'Light dresses',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            vspace,
            Text(
              'Evening, casual, home',
              style: TextStyle(
                fontSize: 12,
                color: grey,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'ONLY TRUSTED BRANDS',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/1.jpg",
                  width: 50,
                  height: 50,
                ),
                hspace,
                hspace,
                Image.asset(
                  "assets/images/2.png",
                  width: 50,
                  height: 50,
                ),
                hspace,
                hspace,
                Image.asset(
                  "assets/images/3.png",
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            vspace,
            vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/4.png",
                  width: 50,
                  height: 50,
                ),
                hspace,
                hspace,
                Image.asset(
                  "assets/images/5.png",
                  width: 50,
                  height: 50,
                ),
                hspace,
                hspace,
                Image.asset(
                  "assets/images/6.png",
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'NEW ARRIVALS',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            vspace,
            Text(
              'FALL 2021',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            vspace,
            vspace,
            Center(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFb94ZR4hA_5WqrbE0VaWsnsyh0XdAuFvzi8bOPFipY51O6cYUhqGyPgDYlPi7lpzFGqg&usqp=CAU',
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            vspace,
            vspace,
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                backgroundColor: white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Explore',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'RECOMENDED LOOKS FOR YOU',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Gender: Female'),
                        SizedBox(width: 10),
                        Text('Style: Partywear'),
                        SizedBox(width: 10),
                        Text('Price range: All'),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(12),
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.network(
                        'https://d2z0lqci37nukm.cloudfront.net/media/catalog/product/cache/0b77c2bcfc2e98f26722a5fcfbf20ee8/9/7/974031_2_oipc236ly1tdwydw.jpg',
                        fit: BoxFit.cover,
                      ),
                      vspace,
                      vspace,
                      Column(
                        children: [
                          Text(
                            '   In This look',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          vspace,
                          CircularBox(
                              'https://d2z0lqci37nukm.cloudfront.net/media/catalog/product/cache/0b77c2bcfc2e98f26722a5fcfbf20ee8/2/7/27026320_43_u6qbozfnhpuh0jzi.jpg',
                              'Patterened Suit Blazer',
                              '\$43.90'),
                          vspace,
                          Text(
                              '-----------------------------------------------'),
                          vspace,
                          CircularBox(
                              'https://d2z0lqci37nukm.cloudfront.net/media/catalog/product/cache/0b77c2bcfc2e98f26722a5fcfbf20ee8/e/a/eangelina-0009500110026213_front_faefetqwddhslwkp.jpg',
                              'Saddle Shoulder Bag',
                              '\$12.50'),
                          vspace,
                          Text(
                              '-----------------------------------------------'),
                          vspace,
                          CircularBox(
                              'https://d2z0lqci37nukm.cloudfront.net/media/catalog/product/cache/0b77c2bcfc2e98f26722a5fcfbf20ee8/s/y/syconn-0629509520022511_front_6uw0d0ggvdwyfqnw.jpg',
                              'Leather Shoes',
                              '\$99.30'),
                          vspace,
                          Text(
                              '-----------------------------------------------'),
                          vspace,
                          Center(
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 70, vertical: 10),
                                backgroundColor: white,
                                elevation: 5,
                              ),
                              child: Text(
                                'Buy it Now',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: purple,
                                ),
                              ),
                            ),
                          ),
                          vspace,
                          vspace,
                        ],
                      ),
                    ],
                  ),
                ),
                vspace,
                vspace,
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '<   >',
                    style: TextStyle(
                      fontSize: 20,
                      color: grey,
                    ),
                  ),
                ),
                vspace,
                vspace,
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.purple[50],
                    child: Column(
                      children: [
                        vspace,
                        ImageWithTextContainer(
                            imageUrl:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcL3RbVJoCfr3dqsgp7c116xoeG5OTEksZZT5yY_-PIma28miRHlqE7Rv4SEosyeH4BJU&usqp=CAU',
                            accompanyingText: 'GET 20% OFF',
                            accompanyingText2:
                                'Leave your email and get a discount'),
                        vspace,
                        vspace,
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 170,
                                  color: lgrey,
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "  Enter your email",
                                      hintStyle: TextStyle(
                                        fontSize: 9,
                                        height: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Screen2()),
                                  );
                                },
                                child: Text(
                                  "Subscribe",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: white,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(purple),
                                  elevation: MaterialStateProperty.all(0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        vspace,
                        vspace,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            vspace,
            vspace,
          ],
        ),
      ),
    );
  }
}
