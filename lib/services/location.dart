import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    if (position != null) {
      print(position.toString());

      longitude = position.longitude;
      latitude = position.latitude;
    }
  }

  String getLatitude() {
    return latitude != null ? latitude.toString() : null;
  }

  String getLongitude() {
    return longitude != null ? longitude.toString() : null;
  }
}
