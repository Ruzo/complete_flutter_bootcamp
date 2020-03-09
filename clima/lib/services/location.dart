import 'package:geolocator/geolocator.dart';
import 'package:location_permissions/location_permissions.dart';

class Location {
  PermissionStatus _permission = PermissionStatus.unknown;
  ServiceStatus _serviceStatus = ServiceStatus.unknown;
  Position _position;
  double _latitude;
  double _longitude;
  String errorMessage;

  Future<String> getPosition() async {
    errorMessage = null;
    try {
      await getServiceStatus();
      if (_serviceStatus == ServiceStatus.enabled) {
        if (_permission != PermissionStatus.granted) await getPermission();
        if (_permission == PermissionStatus.granted) {
          print('Getting position');
          _position = await Geolocator()
              .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
          print('Got position: $_position');
          _latitude = _position.latitude;
          _longitude = _position.longitude;
          print('$_latitude, $_longitude');
          return null;
        } else {
          throw ('Location permission is not granted!');
        }
      } else {
        throw ('Location service is not enabled!');
      }
    } catch (e) {
      print(e);
      errorMessage = e;
      return e;
    }
  }

  Future getPermission() async {
    print('Getting permission');
    _permission = await LocationPermissions().requestPermissions(
        permissionLevel: LocationPermissionLevel.locationWhenInUse);
  }

  Future getServiceStatus() async {
    print('Getting status');
    _serviceStatus = await LocationPermissions()
        .checkServiceStatus(level: LocationPermissionLevel.locationWhenInUse);
  }

  Position get position => _position;

  double get latitude => _latitude;

  double get longitude => _longitude;
}
