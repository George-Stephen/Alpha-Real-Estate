import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Models/Home_model.dart';
import 'package:alpha_estates/Screens/Detail_screens/full_screen.dart';
import 'package:alpha_estates/Widgets/Detail_widgets/Detail_footer.dart';
import 'package:alpha_estates/Widgets/Detail_widgets/detail_header.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart'; // Uncomment if using cached_network_image

class HomeDetailScreen extends StatefulWidget {
  final Home home;

  const HomeDetailScreen({super.key, required this.home});

  @override
  _HomeDetailState createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetailScreen> {
  late GoogleMapController _controller;
  late LatLng _mapPosition;

  @override
  void initState() {
    super.initState();
    // Safely parse lat and long, default to (0.0, 0.0) if invalid
    double? lat = double.tryParse(widget.home.lat ?? '');
    double? long = double.tryParse(widget.home.long ?? '');
    _mapPosition = (lat != null && long != null) ? LatLng(lat, long) : const LatLng(0.0, 0.0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Home data: lat=${widget.home.lat}, long=${widget.home.long}');
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Detail_header(home: widget.home),
                      const SizedBox(height: 10.0),
                      const Text(
                        'Description',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: kContentColorTheme,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      ReadMoreText(
                        widget.home.description.isNotEmpty
                            ? widget.home.description
                            : 'No description available',
                        trimLines: 2,
                        style: Theme.of(context).textTheme.bodyLarge,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Expand',
                        trimExpandedText: 'Collapse',
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          _propertyDetailItem(
                            Icons.king_bed_rounded,
                            'Bedrooms',
                            '${widget.home.bedrooms} Rooms',
                          ),
                          _propertyDetailItem(
                            Icons.bathtub,
                            'Bathrooms',
                            '${widget.home.bathrooms} Rooms',
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          _propertyDetailItem(
                            Icons.calendar_month,
                            'Year built',
                            widget.home.year_built,
                          ),
                          _propertyDetailItem(
                            Icons.apartment,
                            'Property type',
                            widget.home.property_type,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          _propertyDetailItem(
                            Icons.local_parking,
                            'Parking spaces',
                            '${widget.home.parking_spaces} spaces',
                          ),
                          _propertyDetailItem(
                            Icons.map,
                            'Property size',
                            '${widget.home.property_size} m²',
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        height: 400,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(kDefaultPadding)),
                          child: _mapPosition == const LatLng(0.0, 0.0)
                              ? Container(
                            color: Colors.grey[200],
                            child: const Center(
                              child: Text('Map unavailable: Invalid coordinates'),
                            ),
                          )
                              : GoogleMap(
                            initialCameraPosition: CameraPosition(
                              target: _mapPosition,
                              zoom: 15,
                              bearing: 15,
                            ),
                            myLocationEnabled: true,
                            myLocationButtonEnabled: true,
                            mapType: MapType.normal,
                            zoomGesturesEnabled: true,
                            zoomControlsEnabled: false,
                            onMapCreated: (GoogleMapController controller) async {
                              _controller = controller;
                              String value = await DefaultAssetBundle.of(context)
                                  .loadString('assets/map_style.json');
                              _controller.setMapStyle(value);
                            },
                            markers: _createMarkers(_mapPosition),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Column(
                        children: [
                          _imageCard(widget.home.bed_imageUrl, 'Bedroom'),
                          _imageCard(widget.home.bath_imageUrl, 'Bathroom'),
                          _imageCard(widget.home.kitchen_imageUrl, 'Kitchen'),
                        ],
                      ),
                    ],

                  ),
                ),
              ),
            ),
            const SizedBox(
                height: 100.0
            ),
            Detail_footer(home: widget.home),
          ],
        ),
      ),
    );
  }

  // Reusable widget for property details
  Widget _propertyDetailItem(IconData icon, String label, String value) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white12),
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              color: Colors.white12.withOpacity(0.1),
            ),
            child: Icon(icon, color: kContentColorTheme),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: kContentColorTheme,
                    fontSize: 12.0,
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(
                    color: kContentColorTheme,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Reusable widget for image cards
  Widget _imageCard(String imageUrl, String label) {
    return SizedBox(
      height: 300,
      child: Card(
        semanticContainer: false,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        margin: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imageUrl),
              // Use CachedNetworkImage for better performance (requires package)
              // image: CachedNetworkImageProvider(imageUrl),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                right: 10,
                child: SizedBox(
                  height: 30,
                  width: 40,
                  child: OutlinedButton(
                    onPressed: () {
                      Get.to(() => const ImageFullScreen(), arguments: [imageUrl]);
                    },
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: kButtonHeight / 2),
                      backgroundColor: Colors.transparent,
                    ),
                    child: const Icon(
                      Icons.fullscreen,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.2),
                      borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          label,
                          textAlign: TextAlign.justify,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Create map markers
  Set<Marker> _createMarkers(LatLng latlng) {
    return {
      Marker(
        position: latlng,
        markerId: const MarkerId('new_marker'),
      ),
    };
  }
}