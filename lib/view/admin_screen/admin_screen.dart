import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/constants/const.dart';
import 'package:task/view/admin_screen/driver.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Ride Requests'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: Constants.locations.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DriversList(
                    name: Constants.name[index],
                    currentLocation: Constants.locations[index],
                    destination: Constants.destination[index],
                  ),
                ),
              );
            },
            child:
                // List of ride requests
                RideRequestCard(
              name: Constants.name[index],
              myLocation: Constants.locations[index],
              destination: Constants.destination[index],

              // vehicleClass: 'Economy',
            ),
          ),
        ),
      ),
    );
  }
}

class RideRequestCard extends StatelessWidget {
  // final String vehicleClass;

  const RideRequestCard({
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
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Employee: $name',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('My Current Location: $myLocation'),
            Text('Destination $destination'),
            // Text('Vehicle Class: $vehicleClass'),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
