import 'package:flutter/material.dart';
import 'package:flutter_application_1_01132023/models/Location.dart';

class LocationDetail extends StatelessWidget {
  // new variable location
  final Location location;

// constructor
  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: renderbody(context, location),
    ));
  }
}

// custom method
Widget section(String title, Color color) {
  return Container(decoration: BoxDecoration(color: color), child: Text(title));
}

// to define private funtion starts with underscore _
//private: can't be use outside of the class

//
List<Widget> renderbody(BuildContext context, Location location) {
  // empty list 
  var result = <Widget>[];


  
    result.add(bannerImage(location.url, 170));
    result.addAll(renderFacts(context, location));
    
  
  return result;
}

List<Widget> renderFacts(BuildContext context, Location location) {
  // empty list 
  var result = <Widget>[];

  for (int i = 0; i < location.facts.length; i++) {
  
    result.add(sectionTitle(location.facts[i].title));
    result.add(sectionText(location.facts[i].text));
  }
  return result;
}

Widget sectionTitle(String text) {
  return Container(
    padding:  EdgeInsets.fromLTRB(25, 25, 25, 10),
    child: Text(text, textAlign: TextAlign.left,  style: TextStyle(
    fontSize: 25.0,
    color: Colors.black
  ),)
  ) ;
}

Widget sectionText(String text) {
  return  Container(
    padding:  EdgeInsets.fromLTRB(25, 15, 25, 15),
    child: Text(text, textAlign: TextAlign.left,  style: TextStyle(
   //fontSize: 25.0,
    color: Colors.black
  ),)
  ) ;
}
Widget bannerImage(String url, double height)
{
  return Container(
constraints: BoxConstraints.tightFor(height: height),
    child: Image.network(url, fit: BoxFit.fitWidth,)
  );
}

