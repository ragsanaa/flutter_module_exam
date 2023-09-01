// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_module_exam/screens/cars_screen.dart';
import 'package:banner_carousel/banner_carousel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Text(
                'Easy way to buy your dream car',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('By using the car, you can move quickly',
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                  SizedBox(
                    height: 5,
                  ),
                  Text('from one place to another',
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                  SizedBox(
                    height: 5,
                  ),
                  Text('in your daily life.',
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                ],
              ),
            ),
            Expanded(
                child: BannerCarousel(
              margin: EdgeInsets.all(0),
              height: 300,
              customizedIndicators: IndicatorModel.animation(
                  height: 6,
                  width: 6,
                  spaceBetween: 3,
                  widthAnimation: 30,
                  spaceBetweenAnimation: 3),
              activeColor: Colors.white,
              disableColor: Colors.white,
              customizedBanners: [
                Image.asset('assets/images/main_image2.png', fit: BoxFit.cover),
                Image.asset('assets/images/main_image3.png', fit: BoxFit.cover),
                Image.asset('assets/images/main_image.png', fit: BoxFit.cover),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const CarsScreen();
                  }));
                },
                child: Center(
                    heightFactor: 2.3,
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
