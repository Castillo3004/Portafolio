import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qrreader/models/scan_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapaPage extends StatefulWidget {
   
  const MapaPage({Key? key}) : super(key: key);

  @override
  State<MapaPage> createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {

  Completer<GoogleMapController> _controller = Completer();

  MapType mapType = MapType.normal;

  @override
  Widget build(BuildContext context) {

    final ScanModel scan = ModalRoute.of(context)!.settings.arguments as ScanModel;    

    CameraPosition puntoInicial = CameraPosition(
      target: scan.getLatLng(),
      zoom: 17.5,
      tilt: 50
    );

    // Marcadores 

    Set<Marker> markers = new Set<Marker>();
    markers.add(Marker(
      markerId: const MarkerId('geo-location-central-point'),
      position: scan.getLatLng()
    ));


    return Scaffold(
      appBar: AppBar(
        title: (Text('Mapa')),
        actions: [
          IconButton(
            onPressed: () async{
              final GoogleMapController controller = await _controller.future;
              controller.animateCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    target: scan.getLatLng(),
                    zoom: 17.5,
                    tilt: 50
                  )
                )
              );
            }, 
            icon: Icon(Icons.location_searching)
          )
        ],
      ),
      body: GoogleMap(
        mapType: mapType,
        initialCameraPosition: puntoInicial,
        markers: markers,
        myLocationEnabled: false,
        zoomControlsEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon (Icons.layers),
        onPressed: (){
          if( mapType == MapType.normal){
            mapType = MapType.satellite;
          }else if( mapType == MapType.satellite) {
            mapType = MapType.hybrid;
          }else if( mapType == MapType.hybrid){
            mapType = MapType.terrain;
          }else {
            mapType = MapType.normal;
          }

          setState(() {
            
          });
        },
      ),
    );
  }
}