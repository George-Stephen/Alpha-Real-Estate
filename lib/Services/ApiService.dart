import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:alpha_estates/Models/Home_model.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';


class ApiService{
 static final ApiService _instance = ApiService._internal();

  factory ApiService() {
    return _instance;
  }

  ApiService._internal();

// Generic GET request handler with logging
  Future<http.Response> _get(String endpoint, {Map<String, String>? additionalHeaders}) async {
    final url = Uri.parse("$kBaseUrl$endpoint");

    print("Fetching data: GET $url");

    final response = await http.get(url);

    _logResponse("GET", url, response);

    return response;
  }

  // Generic POST request handler with logging
  Future<http.Response> _post(String endpoint, dynamic body, {Map<String, String>? additionalHeaders}) async {
    final url = Uri.parse("$kBaseUrl$endpoint");
    final jsonBody = jsonEncode(body);

    print("Request: POST $url");
    print("Request Body: $jsonBody");

    final response = await http.post(url, body: jsonBody);

    _logResponse("POST", url, response);

    return response;
  }

  // Generic PUT request handler with logging
  Future<http.Response> _put(String endpoint, dynamic body, {Map<String, String>? additionalHeaders}) async {
    final url = Uri.parse("$kBaseUrl$endpoint");
    final jsonBody = jsonEncode(body);

    print("Request: PUT $url");
    print("Request Body: $jsonBody");

    final response = await http.put(url, body: jsonBody);

    _logResponse("PUT", url, response);

    return response;
  }

  // Helper method to log responses
  void _logResponse(String method, Uri url, http.Response response) {
    print("URL: $url");
    print("Status Code: ${response.statusCode}");

    if (response.statusCode >= 200 && response.statusCode < 300) {
      print("Success");
    } else {
      print("Error: ${response.statusCode}");
      print("Error Response: ${response.body}");
    }

    // For debugging, consider truncating large responses
    if (response.body.length > 500) {
      print("Response Body (truncated): ${response.body.substring(0, 500)}...");
    } else {
      print("Response Body: ${response.body}");
    }
    print("---------------------\n");
  }


  Future<List<Home>> fetchHomes() async{
    List<Home> homes = [];
    final response = await _get("/home");
    if(response.statusCode == 200){
      List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((item) => Home.fromJson(item)).toList();
    }else{
      throw Exception("Failed to load homes");
    }
    return homes;
  }

  Future<Home> getSpecificHome(String id) async {
    final response = await _get("/home/$id");
    if (response.statusCode == 200) {
      return Home.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to load home with ID: $id");
    }
  }
}