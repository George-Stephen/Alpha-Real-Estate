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

  factory Home.fromJson(Map<String, dynamic> json) {
    return Home(
      imageUrl: json['imageUrl'] ?? '',
      title: json['title'] ?? '',
      location: json['location'] ?? '',
      description: json['description'] ?? '',
      bedrooms: json['bedrooms'] ?? '',
      bathrooms: json['bathrooms'] ?? '',
      parking_spaces: json['parking_spaces'] ?? '',
      bed_imageUrl: json['bed_imageUrl'] ?? '',
      bath_imageUrl: json['bath_imageUrl'] ?? '',
      kitchen_imageUrl: json['kitchen_imageUrl'] ?? '',
      lat: json['lat'] ?? '',
      long: json['long'] ?? '',
      property_size: json['property_size'] ?? '',
      home_state: json['home_state'] ?? '',
      property_type: json['property_type'] ?? '',
      year_built: json['year_built'] ?? '',
      realtor_phone_number: json['realtor_phone_number'] ?? '',
      price: json['price']?.toString() ?? '0',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'imageUrl': imageUrl,
      'title': title,
      'location': location,
      'description': description,
      'bedrooms': bedrooms,
      'bathrooms': bathrooms,
      'parking_spaces': parking_spaces,
      'bed_imageUrl': bed_imageUrl,
      'bath_imageUrl': bath_imageUrl,
      'kitchen_imageUrl': kitchen_imageUrl,
      'lat': lat,
      'long': long,
      'property_size': property_size,
      'home_state': home_state,
      'property_type': property_type,
      'year_built': year_built,
      'realtor_phone_number': realtor_phone_number,
      'price': price,
    };
  }
}