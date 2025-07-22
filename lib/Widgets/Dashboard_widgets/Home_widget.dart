import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Models/Home_model.dart';
import 'package:alpha_estates/Screens/Detail_screens/Home_detail.dart';
import 'package:alpha_estates/Services/ApiService.dart';
import 'package:alpha_estates/Widgets/Dashboard_widgets/CarouselWidgets/HomeCarouselWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWidget extends StatefulWidget{
  const HomeWidget({super.key});

  @override
  _HomeState createState() => _HomeState();
  
}

class _HomeState extends State<HomeWidget>{
  String selected_value = "Location";
  late ApiService apiService;

  @override
  void initState() {
    super.initState();
    apiService = ApiService();
    _initializeData();
  }

  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Location", child: Text("Location")),
      const DropdownMenuItem(value: "USA", child: Text("USA")),
      const DropdownMenuItem(value: "Canada", child: Text("Canada")),
      const DropdownMenuItem(value: "Brazil", child: Text("Brazil")),
      const DropdownMenuItem(value: "England", child: Text("England")),
    ];
    return menuItems;
  }

  List<Home> homes = [];

  Future<void> _initializeData() async{
    try{
      List<Home> homeList = await apiService.fetchHomes();
      setState(() {
        homes = homeList;
      });
    } catch (e) {
      print("Error fetching homes: $e");
      Get.snackbar("Error", "Failed to load homes. Please try again later.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withOpacity(0.8),
          colorText: Colors.white);
    }
  }

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
                      style: Theme.of(context).textTheme.bodyMedium,
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
              const SizedBox(
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
                          Get.to(()=> HomeDetailScreen(home: home));
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


