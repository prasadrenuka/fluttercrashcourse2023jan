import 'package:flutter_application_1_01132023/models/Location_fact.dart';

class Location {
  final String name;
  final String url;
 final List<LocationFact> facts;

 Location({required this.name, required this.url,  required this.facts});
 // curl {} indicates optional parameters
}