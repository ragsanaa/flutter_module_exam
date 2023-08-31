// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_module_exam/models/car_model.dart';

class CarDetailsScreen extends StatefulWidget {
  Cars car;
  CarDetailsScreen({super.key, required this.car});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: CircleAvatar(
                backgroundColor: Colors.grey[800],
                child: Icon(Icons.arrow_back, color: Colors.white))),
        backgroundColor: Colors.grey[900],
        title: Text('Car Details',
            style: TextStyle(fontSize: 20, color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
                backgroundColor: Colors.grey[800],
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
                'https://i.pinimg.com/originals/49/17/c0/4917c017c89fcd6cb5fd6d7161daa5a8.png'),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.car.make.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 23),
                      ),
                      Text(widget.car.year.toString()),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sociosqu praesent ultrices amet montes convallis feugiat imperdiet euismod mauris id vel consequat habitasse. Amet magna dui convallis quisque ultrices leo penatibus sagittis neque nullam class sagittis felis. Varius placerat mauris laoreet justo diam consequat ullamcorper conubia enim fermentum est ad viverra. Neque eleifend aliquam dolor mattis pellentesque neque taciti proin rhoncus dolor sociis cras mattis. Est adipiscing habitant gravida a dolor suscipit tellus pellentesque condimentum imperdiet eleifend aliquam id.',
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Features',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 22),
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.account_balance_outlined,
                                            color: Colors.black,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Text('City Mpg'),
                                      ),
                                      Text(
                                        widget.car.cityMpg.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ]),
                              ),
                            ),
                            Container(
                              width: 100,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.commute_outlined,
                                            color: Colors.black,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Text('Combination Mpg'),
                                      ),
                                      Text(
                                        widget.car.combinationMpg.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ]),
                              ),
                            ),
                            Container(
                              width: 100,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons
                                                .local_fire_department_outlined,
                                            color: Colors.black,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Text('Fuel Type'),
                                      ),
                                      Text(
                                        widget.car.fuelType.name.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price',
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          Text('\$45,000',
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Buy Now',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(vertical: 20)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
