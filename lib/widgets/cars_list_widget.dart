import 'package:flutter/material.dart';
import 'package:flutter_module_exam/models/car_model.dart';
import 'package:flutter_module_exam/screens/car_details_screen.dart';
import 'package:flutter_module_exam/services/car_services.dart';

class CarsListWidget extends StatelessWidget {
  const CarsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: CarServices().getCars(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        List<Cars> cars = snapshot.data;
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: cars.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CarDetailsScreen(car: cars[index]);
                }));
              },
              child: Stack(children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://i.pinimg.com/originals/49/17/c0/4917c017c89fcd6cb5fd6d7161daa5a8.png'),
                      ),
                      Text(cars[index].make.name),
                      Row(
                        children: [
                          Text(cars[index].model),
                          Text(cars[index].year.toString()),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 15,
                    left: 15,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    )),
              ]),
            );
          },
        );
      },
    );
  }
}
