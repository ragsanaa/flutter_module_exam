import 'package:dio/dio.dart';
import 'package:flutter_module_exam/models/car_model.dart';

class CarServices {
  Future<List<Cars>> getCars() async {
    var dio = Dio();
    var url = 'https://api.api-ninjas.com/v1/cars?make=mercedes&limit=10';
    var response = await dio.get(url,
        options: Options(headers: {
          'X-Api-Key': 'mS6Fy61XztkoRA3NIS041Q==Ccleh4VSGLceCevz'
        }));
    if (response.statusCode == 200) {
      var data = response.data;

      List<Cars> cars = data.map<Cars>((car) => Cars.fromJson(car)).toList();
      return cars;
    }
    return [];
  }
}
