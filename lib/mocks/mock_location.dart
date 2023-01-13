import 'package:flutter_application_1_01132023/models/Location.dart';
import 'package:flutter_application_1_01132023/models/Location_fact.dart';

mixin MockLocation implements Location {
  static Location FetchAny() {
    return Location(
        name: 'isha yoga center coimbatore',
        url: '',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  ' Yoga Center is a scenic spiritual destinations set at the foothills of the Majestic Velliangiri mountains in Coimbatore, the uniqueness of the center is one can explore all the four Major Paths of Yoga. Founded by Sadhguru, this destination is a varied mix of various offering for seekers and tourists '),
          LocationFact(
              title: 'How to Get there',
              text:
                  'The nearest railway station to access Coimbatore is Coimbatore junction, where trains from major destinations stop. Besides, the city is well-connected by roads to all the important cities and one can reach the Isha Yoga Center by a good network of taxis and cabs.')
        ]);
  }
}
