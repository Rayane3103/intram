import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/Constants/constants.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late GoogleMapController _mapController;
  late BitmapDescriptor _markerIcon;
  late Set<Marker> _markers;

  @override
  void initState() {
    super.initState();
    _loadMarkerIcon();
  }

  Future<void> _loadMarkerIcon() async {
    const ImageConfiguration configuration =
        ImageConfiguration(size: Size(50, 50));
    final BitmapDescriptor bitmapDescriptor =
        await BitmapDescriptor.fromAssetImage(
      configuration,
      'assets/tram.png',
      // Set the size of the image
    );
    setState(() {
      _markerIcon = bitmapDescriptor;
      _markers = _createMarkers();
    });
  }

  Set<Marker> _createMarkers() {
    return {
      Marker(
        markerId: const MarkerId('Wiam Station'),
        icon: _markerIcon,
        position: const LatLng(35.21134438573, -0.6278880531234288),
        infoWindow: const InfoWindow(
          title: 'Wiam Station',
          snippet: 'El Wiam الوئام',
        ),
        anchor:
            const Offset(0.5, 0.5), // Set the anchor to the middle of the icon
      ),
      Marker(
        icon: _markerIcon,
        markerId: const MarkerId('Sidi Djilali Station'),
        position: const LatLng(35.215720, -0.623615),
        infoWindow: const InfoWindow(
          title: 'Sidi Djilali Station',
          snippet: 'Sidi Djilali',
        ),
      ),
      Marker(
        icon: _markerIcon,
        markerId: const MarkerId('Benhamouda Station'),
        position: const LatLng(35.217368, -0.621165),
        infoWindow: const InfoWindow(
          title: 'Benhamouda Station',
          snippet: 'Benhamouda',
        ),
      ),
      Marker(
        icon: _markerIcon,
        markerId: const MarkerId('Rocher Station'),
        position: const LatLng(35.216810, -0.614936),
        infoWindow: const InfoWindow(
          title: 'Rocher Station',
          snippet: 'Rocher',
        ),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(35.21134438573, -0.6278880531234288),
              zoom: 14.0,
            ),
            onMapCreated: (controller) {
              _mapController = controller;
            },
            markers: _markers.toSet(),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.3,
            maxChildSize: 0.45,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  border: BorderDirectional(
                    top: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      height: 2,
                      width: 60,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.business_center,
                          color: primaryColor,
                        ),
                        SizedBox(width: 15),
                        Text(
                          'El Wiam الوئام',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 25,
                        itemBuilder: (BuildContext context, int index) {
                          return const ListTile(
                            leading: Icon(
                              Icons.schedule_rounded,
                              color: primaryColor,
                            ),
                            title: Text(
                              'Gare Routiere Sud',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                            subtitle: Text(
                              'المحطة الجنوبية',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            trailing: Text(
                              '10:22',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
