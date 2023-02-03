import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  LatLng initialLocation = const LatLng(37.47865, 126.8813);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '차량 위치',
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.grey),
        ),
        iconTheme: const IconThemeData(color: Colors.black45),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: AbsorbPointer(
        absorbing: true,
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: initialLocation,
                    zoom: 19.2,
                  ),
                  markers: {
                    const Marker(
                      markerId: MarkerId("신한이노플렉스"),
                      position: LatLng(37.47865, 126.88132),
                      draggable: false,
                    ),
                  },
                  onCameraMove: (_) {},
                  myLocationButtonEnabled: false,
                  mapType: MapType.normal,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 0.5, color: Colors.black.withOpacity(0.2)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, -0.5),
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '신한이노플렉스',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '신한이노플렉스',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '신한이노플렉스',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
