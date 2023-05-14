import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Models/Home_model.dart';
import 'package:alpha_estates/Screens/Detail_screens/Home_detail.dart';
import 'package:alpha_estates/Screens/Detail_screens/full_screen.dart';
import 'package:alpha_estates/Widgets/Detail_widgets/Detail_footer.dart';
import 'package:alpha_estates/Widgets/Detail_widgets/detail_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';


class HomeDetailScreen extends StatefulWidget{
  final Home home ;

  const HomeDetailScreen({super.key,
    required this.home});
  @override
  _homedetailState createState() => _homedetailState();
  
}


class _homedetailState extends State<HomeDetailScreen>{
  late GoogleMapController _controller;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Detail_header(home: widget.home),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text('Description',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: kContentColorTheme
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ReadMoreText(
                          widget.home.description,
                          trimLines: 2,
                          style: Theme.of(context).textTheme.bodyText1,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: "Expand",
                          trimExpandedText: "Collapse",
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15,top: 15),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white12),
                                            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                                            color: Colors.white12.withOpacity(0.1)
                                        ),
                                        child: const Icon(
                                          Icons.king_bed_rounded,
                                          color: kContentColorTheme,
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(left: 15.0),
                                          child: Column(
                                            children: [
                                              const Text(
                                                "Bedrooms",
                                                style: TextStyle(
                                                  color: kContentColorTheme,
                                                  fontSize: 12.0
                                                ),
                                              ),
                                              Text(
                                                "${widget.home.bedrooms} Rooms",
                                                style: const TextStyle(
                                                  color: kContentColorTheme,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.0
                                                ),
                                              )
                                            ],
                                          ),
                                      )
                                    ],
                                  )
                              ),
                              Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15,top: 15),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white12),
                                            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                                            color: Colors.white12.withOpacity(0.1)
                                        ),
                                        child: const Icon(
                                          Icons.bathtub,
                                          color: kContentColorTheme,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Bathrooms",
                                              style: TextStyle(
                                                  color: kContentColorTheme,
                                                  fontSize: 12.0
                                              ),
                                            ),
                                            Text(
                                              "${widget.home.bathrooms} Rooms",
                                              style: const TextStyle(
                                                  color: kContentColorTheme,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.0
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15,top: 15),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white12),
                                            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                                            color: Colors.white12.withOpacity(0.1)
                                        ),
                                        child: const Icon(
                                          Icons.calendar_month,
                                          color: kContentColorTheme,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Year built",
                                              style: TextStyle(
                                                  color: kContentColorTheme,
                                                  fontSize: 12.0
                                              ),
                                            ),
                                            Text(
                                              widget.home.year_built,
                                              style: const TextStyle(
                                                  color: kContentColorTheme,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.0
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              ),
                              Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15,top: 15),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white12),
                                            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                                            color: Colors.white12.withOpacity(0.1)
                                        ),
                                        child: const Icon(
                                          Icons.apartment,
                                          color: kContentColorTheme,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Property type",
                                              style: TextStyle(
                                                  color: kContentColorTheme,
                                                  fontSize: 12.0
                                              ),
                                            ),
                                            Text(
                                              widget.home.property_type,
                                              style: const TextStyle(
                                                  color: kContentColorTheme,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.0
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15,top: 15),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white12),
                                            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                                            color: Colors.white12.withOpacity(0.1)
                                        ),
                                        child: const Icon(
                                          Icons.local_parking,
                                          color: kContentColorTheme,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Parking spaces",
                                              style: TextStyle(
                                                  color: kContentColorTheme,
                                                  fontSize: 12.0
                                              ),
                                            ),
                                            Text(
                                              "${widget.home.parking_spaces} spaces",
                                              style: const TextStyle(
                                                  color: kContentColorTheme,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.0
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              ),
                              Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15,top: 15),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white12),
                                            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                                            color: Colors.white12.withOpacity(0.1)
                                        ),
                                        child: const Icon(
                                          Icons.map,
                                          color: kContentColorTheme,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Property size",
                                              style: TextStyle(
                                                  color: kContentColorTheme,
                                                  fontSize: 12.0
                                              ),
                                            ),
                                            Text(
                                              "${widget.home.property_size} m²",
                                              style: const TextStyle(
                                                  color: kContentColorTheme,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.0
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 400,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(kDefaultPadding)),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              heightFactor: 0.3,
                              widthFactor: 2.5,
                              child: GoogleMap(
                                  initialCameraPosition: CameraPosition(
                                      target: LatLng(double.parse(widget.home.lat), double.parse(widget.home.long)),
                                      zoom: 15,
                                      bearing: 15
                                  ),
                                myLocationEnabled: true,
                                myLocationButtonEnabled: true,
                                mapType: MapType.normal,
                                zoomGesturesEnabled: true,
                                zoomControlsEnabled: false,
                                onMapCreated: (GoogleMapController controller) async{
                                    _controller = controller;
                                    String value = await DefaultAssetBundle.of(context).loadString('assets/map_style.json');
                                    _controller.setMapStyle(value);
                                },
                                markers: _createMarkers(LatLng(double.parse(widget.home.lat), double.parse(widget.home.long)))
                            ),
                          ),
                        ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 300,
                              // width: double.infinity,
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
                                          image: NetworkImage(widget.home.bed_imageUrl)
                                      )
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
                                              onPressed: (){
                                                Get.to(()=> ImageFullScreen(), arguments: [widget.home.bed_imageUrl]);
                                              },
                                              style: OutlinedButton.styleFrom(
                                                  shape: const RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                      side: BorderSide.none
                                                  ),
                                                  padding: const EdgeInsets.symmetric(vertical: kButtonHeight/2),
                                                  backgroundColor: Colors.transparent
                                              ),
                                              child: const Icon(
                                                Icons.fullscreen,
                                                color: Colors.white,
                                                size: 18,
                                              ),
                                            ),
                                          )
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
                                                    borderRadius: const BorderRadius.all(Radius.circular(15.0))
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Bedroom",
                                                      textAlign: TextAlign.justify,
                                                      style: Theme.of(context).textTheme.headline5,
                                                    ),
                                                  ],
                                                )
                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 300,
                              // width: double.infinity,
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
                                          image: NetworkImage(widget.home.bath_imageUrl)
                                      )
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
                                              onPressed: (){
                                                Get.to(()=> ImageFullScreen(), arguments: [widget.home.bath_imageUrl]);
                                              },
                                              style: OutlinedButton.styleFrom(
                                                  shape: const RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                      side: BorderSide.none
                                                  ),
                                                  padding: const EdgeInsets.symmetric(vertical: kButtonHeight/2),
                                                  backgroundColor: Colors.transparent
                                              ),
                                              child: const Icon(
                                                Icons.fullscreen,
                                                color: Colors.white,
                                                size: 18,
                                              ),
                                            ),
                                          )
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
                                                    borderRadius: const BorderRadius.all(Radius.circular(15.0))
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Bathroom ",
                                                      textAlign: TextAlign.justify,
                                                      style: Theme.of(context).textTheme.headline5,
                                                    ),
                                                  ],
                                                )
                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 300,
                              // width: double.infinity,
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
                                          image: NetworkImage(widget.home.kitchen_imageUrl)
                                      )
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
                                              onPressed: (){
                                                Get.to(()=> ImageFullScreen(), arguments: [widget.home.kitchen_imageUrl]);
                                              },
                                              style: OutlinedButton.styleFrom(
                                                  shape: const RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                      side: BorderSide.none
                                                  ),
                                                  padding: const EdgeInsets.symmetric(vertical: kButtonHeight/2),
                                                  backgroundColor: Colors.transparent
                                              ),
                                              child: const Icon(
                                                Icons.fullscreen,
                                                color: Colors.white,
                                                size: 18,
                                              ),
                                            ),
                                          )
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
                                                    borderRadius: const BorderRadius.all(Radius.circular(15.0))
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Kitchen ",
                                                      textAlign: TextAlign.justify,
                                                      style: Theme.of(context).textTheme.headline5,
                                                    ),
                                                  ],
                                                )
                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Detail_footer(home: widget.home),
          ],
        )
      ),
    );
  }

  Set<Marker>_createMarkers(LatLng latlng) {
      return {
            Marker(
            position: latlng,
            markerId: const MarkerId("new_marker")
          )
      };
  }
}


