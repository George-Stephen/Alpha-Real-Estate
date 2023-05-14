import 'package:alpha_estates/Models/Home_model.dart';
import 'package:alpha_estates/Screens/Detail_screens/Home_detail.dart';
import 'package:alpha_estates/Widgets/Dashboard_widgets/CarouselWidgets/HomeCarouselWidget.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchWidget extends StatefulWidget{
  @override
  _searchState createState() => _searchState();

}
class _searchState extends State<SearchWidget>{
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
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            top: 50,
            child: AnimSearchBar(
              width: MediaQuery.of(context).size.width,
              textController: _controller,
              onSuffixTap: (){
                setState(() {
                  _controller.clear();
                });
              },
              onSubmitted: (String ) {  },
              helpText: "Search....",
            )
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