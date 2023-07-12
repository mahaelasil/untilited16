import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationApp extends StatefulWidget {
  const LocationApp({Key? key}) : super(key: key);

  @override
  State<LocationApp> createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {
  var locationMessage='';
  void getLocation()async{
    var position=await Geolocator.getCurrentPosition(desiredAccuracy:LocationAccuracy.high);
    var lastPosition=await Geolocator.getLastKnownPosition();
    if (kDebugMode) {
      print(lastPosition);
      var lat=position.latitude;
      var long=position.longitude;
      print("$lat,$long");
      setState(() {
        locationMessage="Latitude:$lat,Longitude:$long";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location Services"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const Icon(Icons.location_on_rounded,
            size: 46,
            color: Colors.orange,),
            const SizedBox(height: 10.0,),
            const Text("your Location",
            style: TextStyle(fontSize: 26,
            fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20,),
            Text("position:$locationMessage"),
            ElevatedButton(onPressed: (){
              getLocation();
            },
                child: const Text("get Location")),
          ],
        ),
      )
    );
  }
}