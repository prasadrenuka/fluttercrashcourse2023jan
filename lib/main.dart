import 'package:flutter/material.dart';
import 'package:flutter_application_1_01132023/location_detail.dart';
import 'package:flutter_application_1_01132023/mocks/mock_location.dart';
import 'package:flutter_application_1_01132023/models/Location.dart';
import 'mocks/mock_location.dart';
void main() {
  final Location mocklocation=MockLocation.FetchAny();
  runApp(MaterialApp(
    home:LocationDetail(mocklocation)
  ));
}
