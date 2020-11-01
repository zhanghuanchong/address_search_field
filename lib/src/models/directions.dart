import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:address_search_field/src/models/coords.dart';
import 'package:address_search_field/src/models/bounds.dart';
import 'package:address_search_field/src/models/address.dart';

/// Result of request to Google Directions API
class Directions {
  /// Origin point of a route.
  final Address origin;

  /// Destination point of a route.
  final Address destination;

  /// Points beetwen origin and destination of a route.
  final List<Address> waypoints;

  /// Distance of a route.
  final String distance;

  /// Duration of a route.
  final String duration;

  /// Bounds of a route.
  final Bounds bounds;

  /// Points of [Polyline] in a route.
  final List<Coords> points;

  /// Constructor for [Directions].
  Directions({
    @required this.origin,
    @required this.destination,
    @required this.waypoints,
    @required this.distance,
    @required this.duration,
    @required this.bounds,
    @required this.points,
  });

  @override
  String toString() {
    String value =
        "origin: ${origin.toString()}\ndestination: ${destination.toString()}\ndistance: $distance\nduration: $duration\ndirections ${bounds.toString()}\npolyline:";
    points.forEach((element) => value += "\n\t[${element.toString()}]");
    return value;
  }
}
