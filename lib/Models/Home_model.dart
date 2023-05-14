class Home {
  String imageUrl;
  String title;
  String location;
  String description;
  String bedrooms;
  String bathrooms;
  String parking_spaces;
  String bed_imageUrl;
  String bath_imageUrl;
  String kitchen_imageUrl;
  String lat;
  String long;
  String property_size;
  String realtor_phone_number;
  String year_built;
  String home_state;
  String property_type;
  String price;

  Home({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.description,
    required this.bedrooms,
    required this.bathrooms,
    required this.parking_spaces,
    required this.bed_imageUrl,
    required this.bath_imageUrl,
    required this.kitchen_imageUrl,
    required this.lat,
    required this.long,
    required this.property_size,
    required this.home_state,
    required this.property_type,
    required this.year_built,
    required this.realtor_phone_number,
    required this.price,
  });
}