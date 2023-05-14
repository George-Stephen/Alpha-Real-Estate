import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Models/Home_model.dart';
import 'package:alpha_estates/Screens/Detail_screens/Home_detail.dart';
import 'package:alpha_estates/Widgets/Dashboard_widgets/CarouselWidgets/HomeCarouselWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWidget extends StatefulWidget{
  const HomeWidget({super.key});

  @override
  _HomeState createState() => _HomeState();
  
}

class _HomeState extends State<HomeWidget>{
  String selected_value = "Location";

  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Location"),value: "Location"),
      DropdownMenuItem(child: Text("USA"),value: "USA"),
      DropdownMenuItem(child: Text("Canada"),value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"),value: "Brazil"),
      DropdownMenuItem(child: Text("England"),value: "England"),
    ];
    return menuItems;
  }

  List<Home> homes = [
    Home(
        imageUrl: "https://media.istockphoto.com/id/1177797403/photo/modern-apartment-buildings-on-a-sunny-day-with-a-blue-sky.jpg?s=612x612&w=0&k=20&c=DWSGDBDTRVlA7KbY_xjDXgrA3bA4nshwaPKwKj35rrY=",
        title: "Black Modern\nAbbells House",
        location: "Mountain street, California",
        description: "This romantic apartment is perfectly suited for business trip, couple or couple with children. Located in the strong central area includes a cozy studio equiped with nice sofa and queen bed, also there is fully equiped kitchen. Excellent WIFI network.",
        bedrooms: "3",
        bathrooms: "2",
        parking_spaces: "2",
        bed_imageUrl: "https://media.istockphoto.com/id/1194145443/photo/interior-design-of-bedroom-in-studio-apartment-with-kitchen.jpg?s=612x612&w=0&k=20&c=ODZrXYEv7oO6KZdf4wkcoVqkUoHyp44Dhe-AIaripYk=",
        bath_imageUrl: "https://www.homestratosphere.com/wp-content/uploads/2020/03/apartment-master-bathroom-mar162020-min.jpg",
        kitchen_imageUrl: "https://media.istockphoto.com/id/1158673011/photo/modern-living-interior-design.jpg?s=612x612&w=0&k=20&c=v0Uv3oHJGbgtbBkaoX07N2Eh2Nkp0aJPHhjWDt-A3Is=",
        lat: "51.507351",
        long: "-0.127758",
        home_state: "rent",
        property_type: "Apartment",
        year_built: "2010",
        realtor_phone_number: "0711575678",
        price: "25000",
        property_size: "132"
    ),
    Home(
        imageUrl: "https://media.istockphoto.com/id/1177797403/photo/modern-apartment-buildings-on-a-sunny-day-with-a-blue-sky.jpg?s=612x612&w=0&k=20&c=DWSGDBDTRVlA7KbY_xjDXgrA3bA4nshwaPKwKj35rrY=",
        title: "Black Modern\nAbbells House",
        location: "Mountain street, California",
        description: "This romantic apartment is perfectly suited for business trip, couple or couple with children. Located in the strong central area includes a cozy studio equiped with nice sofa and queen bed, also there is fully equiped kitchen. Excellent WIFI network.",
        bedrooms: "3",
        bathrooms: "2",
        parking_spaces: "2",
        bed_imageUrl: "https://media.istockphoto.com/id/1194145443/photo/interior-design-of-bedroom-in-studio-apartment-with-kitchen.jpg?s=612x612&w=0&k=20&c=ODZrXYEv7oO6KZdf4wkcoVqkUoHyp44Dhe-AIaripYk=",
        bath_imageUrl: "https://www.homestratosphere.com/wp-content/uploads/2020/03/apartment-master-bathroom-mar162020-min.jpg",
        kitchen_imageUrl: "https://media.istockphoto.com/id/1158673011/photo/modern-living-interior-design.jpg?s=612x612&w=0&k=20&c=v0Uv3oHJGbgtbBkaoX07N2Eh2Nkp0aJPHhjWDt-A3Is=",
        lat: "51.507351",
        long: "-0.127758",
        home_state: "rent",
        property_type: "Apartment",
        year_built: "2010",
        realtor_phone_number: "0711575678",
        price: "25000",
        property_size: "132"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            top: 30,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: selected_value,
                      icon: const Icon(Icons.keyboard_arrow_down,color:kContentColorTheme,),
                      dropdownColor: kBackgroundColor,
                      style: Theme.of(context).textTheme.bodyText2,
                      items: dropdownItems,
                      onChanged: (String? value) {
                        selected_value = value!;
                      },
                    ),
                  ),
                ),
                RichText(
                    text: const TextSpan(
                        children: [
                          WidgetSpan(
                              child: Icon(Icons.location_pin, color: kContentColorTheme, size: 27,)
                          ),
                          TextSpan(
                            text: "California, USA",
                            style: TextStyle(
                              color: kContentColorTheme,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          )
                        ]
                    )
                )
              ],
            ),
        ),
        Positioned(
          top: 40,
          right: 20,
          child: SizedBox(
            height: 40,
            width: 40,
            child: OutlinedButton(
            onPressed: (){
            },
            style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(10.0)),
                side: BorderSide.none
                ),
            padding: const EdgeInsets.symmetric(vertical: kButtonHeight/4),
            backgroundColor: Colors.transparent.withOpacity(0.3),
            ),
            child: const Icon(Icons.notifications, color: kContentColorTheme, size: 25,)
            ),
    ),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.65,
                width: MediaQuery.sizeOf(context).width,
                child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: homes.length,
                      controller: PageController(viewportFraction: 1.0),
                      itemBuilder: (BuildContext context, int index){
                      Home home = homes[index];
                      return GestureDetector(
                        onTap: () {
                          Get.to(()=> HomeDetailScreen(home: home,));
                        },
                        child: HomeCarouselWidget(home: home),
                      );
                    }
                ),
              ),
            ],
          )
        )
      ],
    );
  }
  
}


