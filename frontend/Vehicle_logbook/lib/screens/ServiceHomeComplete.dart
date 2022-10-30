import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void createVehicle(
    String vehicleNumber,
    String vehicleManufactureCompany,
    String vehicleModel,
    String vehicleEngineModel,
    String vehiclecc,
    String vehiclePastServicesAndChanges) async {
  var dt = DateTime.now();
  var date =
      dt.day.toString() + "-" + dt.month.toString() + "-" + dt.year.toString();

  final response = await http.post(
    Uri.parse(
        'https://online-vehicle-log-book.herokuapp.com/vehicles/addVehicles'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'vehicleNumber': vehicleNumber,
      'vehicleManufactureCompany': vehicleManufactureCompany,
      'vehicleModel': vehicleModel,
      'vehicleEngineModel': vehicleEngineModel,
      'vehiclecc': vehiclecc,
      'datearray': date,
      'servicearray': vehiclePastServicesAndChanges
    }),
  );

  if (response.statusCode == 200) {
    print(response.body);
  } else {
    throw Exception('Failed to create vehicle.');
  }
}

void updateVehicle(String newChanges, String vehicleNumber) async {
  var dt = DateTime.now();
  var date =
      dt.day.toString() + "-" + dt.month.toString() + "-" + dt.year.toString();

  final response = await http.put(
    Uri.parse(
        'https://online-vehicle-log-book.herokuapp.com/vehicles/updateVehicle/${vehicleNumber}'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, List>{
      'newChangeDate': [date],
      'newChangeService': [newChanges]
    }),
  );

  if (response.statusCode == 200) {
    print(response.body);
  } else {
    throw Exception('Failed to update vehicle.');
  }
}

class Vehicle {
  final String vehicleNumber;
  final String vehicleManufactureCompany;
  final String vehicleModel;
  final String vehicleEngineModel;
  final String vehiclecc;
  final List datearray;
  final List servicearray;

  const Vehicle(
      {required this.vehicleNumber,
      required this.vehicleManufactureCompany,
      required this.vehicleModel,
      required this.vehicleEngineModel,
      required this.vehiclecc,
      required this.datearray,
      required this.servicearray});

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      vehicleNumber: json['vehicleNumber'],
      vehicleManufactureCompany: json['vehicleManufactureCompany'],
      vehicleModel: json['vehicleModel'],
      vehicleEngineModel: json['vehicleEngineModel'],
      vehiclecc: json['vehiclecc'],
      datearray: json['datearray'],
      servicearray: json['servicearray'],
    );
  }
}

class AddVehicle extends StatefulWidget {
  const AddVehicle({super.key});

  @override
  State<AddVehicle> createState() {
    return _AddVehicleState();
  }
}

class _AddVehicleState extends State<AddVehicle> {
  final TextEditingController _controllerVehicleNumber =
      TextEditingController();
  final TextEditingController _controllerVehicleManufactureCompany =
      TextEditingController();
  final TextEditingController _controllerVehicleModel = TextEditingController();
  final TextEditingController _controllerVehicleEngineModel =
      TextEditingController();
  final TextEditingController _controllerVehiclecc = TextEditingController();
  final TextEditingController _controllerVehiclePastServicesAndChanges =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Vehicle'),
      ),
      body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _controllerVehicleNumber,
                decoration:
                    const InputDecoration(hintText: 'Enter Vehicle Number'),
              ),
              TextField(
                controller: _controllerVehicleManufactureCompany,
                decoration:
                    const InputDecoration(hintText: 'Enter Vehicle Company'),
              ),
              TextField(
                controller: _controllerVehicleModel,
                decoration:
                    const InputDecoration(hintText: 'Enter Vehicle Model'),
              ),
              TextField(
                controller: _controllerVehicleEngineModel,
                decoration: const InputDecoration(
                    hintText: 'Enter Vehicle Enginer model'),
              ),
              TextField(
                controller: _controllerVehiclecc,
                decoration: const InputDecoration(hintText: 'Enter Vehicle cc'),
              ),
              TextField(
                controller: _controllerVehiclePastServicesAndChanges,
                decoration:
                    const InputDecoration(hintText: 'Enter Vehicle service'),
              ),
              ElevatedButton(
                onPressed: () {
                  createVehicle(
                      _controllerVehicleNumber.text,
                      _controllerVehicleManufactureCompany.text,
                      _controllerVehicleModel.text,
                      _controllerVehicleEngineModel.text,
                      _controllerVehiclecc.text,
                      _controllerVehiclePastServicesAndChanges.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ServiceHomePage()));
                },
                child: const Text('Add Vehicle'),
              ),
            ],
          )),
    );
  }
}

class ServiceHomePage extends StatefulWidget {
  const ServiceHomePage({Key? key}) : super(key: key);

  @override
  State<ServiceHomePage> createState() => _ServiceHomePageState();
}

class _ServiceHomePageState extends State<ServiceHomePage> {
  TextEditingController _controller = new TextEditingController();

  void searchVehicle(String vehicleNumber) async {
    Uri uri = Uri.parse(
        "https://online-vehicle-log-book.herokuapp.com/vehicles/getVehicle/${vehicleNumber}");

    final response = await http.get(uri, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });

    if (response.statusCode == 200) {
      print(response.body);
      if (response.body == "") {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddVehicle()));
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SearchVehicle(
                      veh: response,
                    )));
      }
    } else {
      throw Exception('Failed to search vehicle.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          child: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                decoration:
                    InputDecoration(labelText: "Enter the Vehicle Number"),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                    onPressed: () {
                      searchVehicle(_controller.text);
                    },
                    child: Text("Search Vehicle Number")),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddVehicle()));
                    },
                    child: Text("Add Vehicle")),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class SearchVehicle extends StatefulWidget {
  const SearchVehicle({Key? key, required this.veh}) : super(key: key);

  final http.Response veh;

  @override
  State<SearchVehicle> createState() => _SearchVehicleState();
}

class _SearchVehicleState extends State<SearchVehicle> {
  @override
  Widget build(BuildContext context) {
    Vehicle v = Vehicle.fromJson(jsonDecode(widget.veh.body));
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              v.vehicleNumber,
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Container(
            child: Column(
              children: [
                Column(
                  children: [
                    Text(v.vehicleNumber),
                    Text(v.vehicleManufactureCompany),
                    Text(v.vehicleModel),
                    Text(v.vehicleEngineModel),
                    Text(v.vehiclecc),
                    Text(v.datearray.toString()),
                    Text(v.servicearray.toString())
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                UpdateVehicle(vehicleNumber: v.vehicleNumber)));
                  },
                  child: Text("Update"),
                ),
              ],
            ),
          )),
    );
  }
}

class UpdateVehicle extends StatefulWidget {
  const UpdateVehicle({Key? key, required this.vehicleNumber})
      : super(key: key);

  final String vehicleNumber;

  @override
  State<UpdateVehicle> createState() => _UpdateVehicleState();
}

class _UpdateVehicleState extends State<UpdateVehicle> {
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 400),
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    maxLines: 10,
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Write about the changes you made',
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        updateVehicle(_controller.text, widget.vehicleNumber);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServiceHomePage()));
                      },
                      child: Text("Update"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
