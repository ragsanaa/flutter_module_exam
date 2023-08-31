import 'dart:convert';

List<Cars> carsFromJson(String str) =>
    List<Cars>.from(json.decode(str).map((x) => Cars.fromJson(x)));

String carsToJson(List<Cars> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cars {
  final int cityMpg;
  final String carClass;
  final int combinationMpg;
  final int cylinders;
  final double displacement;
  final Drive drive;
  final FuelType fuelType;
  final int highwayMpg;
  final Make make;
  final String model;
  final Transmission transmission;
  final int year;

  Cars({
    required this.cityMpg,
    required this.carClass,
    required this.combinationMpg,
    required this.cylinders,
    required this.displacement,
    required this.drive,
    required this.fuelType,
    required this.highwayMpg,
    required this.make,
    required this.model,
    required this.transmission,
    required this.year,
  });

  factory Cars.fromJson(Map<String, dynamic> json) => Cars(
        cityMpg: json["city_mpg"],
        carClass: json["class"],
        combinationMpg: json["combination_mpg"],
        cylinders: json["cylinders"],
        displacement: json["displacement"]?.toDouble(),
        drive: driveValues.map[json["drive"]]!,
        fuelType: fuelTypeValues.map[json["fuel_type"]]!,
        highwayMpg: json["highway_mpg"],
        make: makeValues.map[json["make"]]!,
        model: json["model"],
        transmission: transmissionValues.map[json["transmission"]]!,
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "city_mpg": cityMpg,
        "class": carClass,
        "combination_mpg": combinationMpg,
        "cylinders": cylinders,
        "displacement": displacement,
        "drive": driveValues.reverse[drive],
        "fuel_type": fuelTypeValues.reverse[fuelType],
        "highway_mpg": highwayMpg,
        "make": makeValues.reverse[make],
        "model": model,
        "transmission": transmissionValues.reverse[transmission],
        "year": year,
      };
}

enum Drive { RWD, AWD, FWD }

final driveValues =
    EnumValues({"rwd": Drive.RWD, "awd": Drive.AWD, "fwd": Drive.FWD});

enum FuelType { DIESEL, GAS }

final fuelTypeValues =
    EnumValues({"diesel": FuelType.DIESEL, "gas": FuelType.GAS});

enum Make { MERCEDES_BENZ }

final makeValues = EnumValues({"mercedes-benz": Make.MERCEDES_BENZ});

enum Transmission { A, M }

final transmissionValues = EnumValues({"a": Transmission.A, "m": Transmission.M});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
