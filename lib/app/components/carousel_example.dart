import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselExample extends StatefulWidget {
  const CarouselExample({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselExampleState();
  }
}

class _CarouselExampleState extends State<CarouselExample> {
  final List<String> images = [
    'https://a1vietnam.vn/wp-content/uploads/2021/06/dow-corning-tc-5026-mau-trang-600x600-min.jpg',
    'https://a1vietnam.vn/wp-content/uploads/2021/10/DOW-10.jpg',
    'https://a1vietnam.vn/wp-content/uploads/2021/09/dow-corning-1199.jpg',
    'https://a1vietnam.vn/wp-content/uploads/2021/10/dow-corning-561.jpg',
    'https://a1vietnam.vn/wp-content/uploads/2021/06/dau-dow-corning-550-fluid-mau-trang-600x600-min.jpg',
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      for (var imageUrl in images) {
        precacheImage(NetworkImage(imageUrl), context);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: CarouselSlider.builder(
        itemCount: images.length,
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        itemBuilder: (context, index, realIdx) {
          return Center(
              child: Image.network(
            images[index],
            fit: BoxFit.cover,
            width: 1000,
          ));
        },
      ),
    );
  }
}
