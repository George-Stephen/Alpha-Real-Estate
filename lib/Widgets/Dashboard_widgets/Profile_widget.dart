import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_images.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Models/Home_model.dart';
import 'package:alpha_estates/Screens/Update%20profile/Update_profile.dart';
import 'package:alpha_estates/Widgets/Dashboard_widgets/CarouselWidgets/profile_collection_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileWidget extends StatelessWidget{
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(onPressed: (){},icon: const Icon(CupertinoIcons.info),),
        title: Text(kProfile, style: Theme.of(context).textTheme.headline5,),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body : SingleChildScrollView(
        child:  Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: const Image(image: AssetImage(kProfileImage))
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: kContentColorTheme,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: const Icon(
                              CupertinoIcons.pencil,
                              color: kBackgroundColor,
                              size: 25,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration:  BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 120,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(kProfileName, style : TextStyle(
                                fontSize: 15
                              )
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(kProfileEmail, style: TextStyle(
                                fontSize: 10
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () => Get.to(()=> UpdateProfileScreen()),
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                        side: const BorderSide(color: kContentColorTheme)
                                    ),
                                    backgroundColor: kContentColorTheme,
                                    padding: const EdgeInsets.symmetric(vertical: 8)
                                ),
                                child: Text(
                                  kEditProfile.toUpperCase(),
                                  style: const TextStyle(
                                      color: kBackgroundColor
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: kContentColorTheme.withOpacity(0.5), width: 1.0),
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                        text: "About me: ",
                        style: Theme.of(context).textTheme.headline6,
                        children: [
                          TextSpan(
                            text: "I'm a young bachelor looking for a home in the suburbs. Just a single 2 bedroom apartment close to the main road and unlimited "
                                "access to both internet connection as well as water and electricity",
                            style: Theme.of(context).textTheme.bodyText1
                          )
                        ]
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: kContentColorTheme.withOpacity(0.5), width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)
                    )
                ),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("My collection", style:Theme.of(context).textTheme.headline6,),
                        GridView.count(
                            crossAxisCount: 1,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: (350 / 400),
                            controller: ScrollController(keepScrollOffset: false),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: List.generate(homes.length, (index){
                                return profile_collection_widget(home: homes[index]);
                              }
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: kContentColorTheme.withOpacity(0.5), width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: const BorderSide(width: 5.0,color: kContentColorTheme)
                                ),
                                padding: const EdgeInsets.symmetric(vertical: kButtonHeight)
                            ),
                            child: Text(kLogout.toUpperCase(), style: const TextStyle(
                              color: kContentColorTheme,
                            ),)
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: const BorderSide(color: kContentColorTheme)
                                ),
                                backgroundColor: kContentColorTheme,
                                padding: const EdgeInsets.symmetric(vertical: kButtonHeight)
                            ),
                            child: Text(kDeleteAccount.toUpperCase(),
                              style: const TextStyle(
                                  color: kBackgroundColor
                              ),
                            )
                        ),
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

