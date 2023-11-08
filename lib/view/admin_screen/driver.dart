import 'package:flutter/material.dart';
import 'package:task/constants/const.dart';

class DriversList extends StatefulWidget {
  const DriversList({
    super.key,
    required this.name,
    required this.currentLocation,
    required this.destination,
  });
  final String name;
  final String currentLocation;
  final String destination;

  @override
  State<DriversList> createState() => _DriversListState();
}

class _DriversListState extends State<DriversList> {
  int isSelected = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Constants.driversName.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    Constants.driversName[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  InkWell(
                    onTap: () {
                      setState(() {});
                      print(
                          "--------------------------------------${Constants.data.length.toString()}");
                      Constants.data.add(
                        DataList(
                          name: widget.name,
                          currentLocation: widget.currentLocation,
                          destination: widget.destination,
                          driverName: Constants.driversName[index],
                        ),
                      );
                      isSelected = index;
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                          )
                        ],
                      ),
                      child: isSelected == index
                          ? Text("On Driving")
                          : const Text("Connect"),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
