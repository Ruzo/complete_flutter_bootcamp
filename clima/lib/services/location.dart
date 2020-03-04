import 'package:geolocator/geolocator.dart';
import 'package:location_permissions/location_permissions.dart';

class Location {
  PermissionStatus _permission = PermissionStatus.unknown;
  ServiceStatus _serviceStatus = ServiceStatus.unknown;
  Position _position;
  double _latitude;
  double _longitude;

  Future getPosition() async {
    if (_serviceStatus != ServiceStatus.enabled) await getServiceStatus();
    if (_serviceStatus == ServiceStatus.enabled) {
      if (_permission != PermissionStatus.granted) await getPermission();
      if (_permission == PermissionStatus.granted) {
        print('Getting position');
        _position = await Geolocator()
            .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
        _latitude = _position.latitude;
        _longitude = _position.longitude;
      } else {
        return throw ('Location permission is not granted!');
      }
    } else {
      return throw ('Location service is not enabled!');
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

  Future<int> get latitude async {
    if (_latitude != null)
      return _latitude.toInt();
    else {
      await getPosition();
      return _latitude.toInt();
    }
  }

  Future<int> get longitude async {
    if (_longitude != null)
      return _longitude.toInt();
    else {
      await getPosition();
      return _longitude.toInt();
    }
  }
}
