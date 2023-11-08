class Constants {
  static List<String> locations = [];
  static List<String> name = [];
  static List<String> destination = [];
  static List<String> otherDestination = [];
  static List<String> driversName = [
    "John",
    "Abhi",
    "Sakkir",
    "Shibin",
    "Shahil",
  ];
  static List<DataList> data = [];
}

class DataList {
  DataList({
    required this.driverName,
    required this.name,
    required this.currentLocation,
    required this.destination,
  });

  final String name;
  final String currentLocation;
  final String destination;
  final String driverName;
}
