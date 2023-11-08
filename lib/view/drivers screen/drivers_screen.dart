import 'package:flutter/material.dart';
import 'package:task/constants/const.dart';

class DriversScreen extends StatelessWidget {
  const DriversScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver Ride Requests'),
      ),
      body: ListView.builder(
          itemCount: Constants.data.length,
          itemBuilder: (context, index) {
            return DriverRequestCard(
              name: Constants.data[index].name,
              myLocation: Constants.data[index].currentLocation,
              destination: Constants.data[index].destination,
            );
          }),
    );
  }
}

class DriverRequestCard extends StatelessWidget {
  // final String vehicleClass;

  const DriverRequestCard({
    super.key,
    required this.name,
    required this.myLocation,
    required this.destination,
    // required this.vehicleClass,
  });
  final String name;
  final String myLocation;

  final String destination;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Employee: $name',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'My Current Location: $myLocation',
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
            Text(
              'Destination: $destination',
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
            // Text('Vehicle Class: $vehicleClass'),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
