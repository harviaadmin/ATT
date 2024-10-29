import '/flutter_flow/flutter_flow_util.dart';
import 'directions_map_widget.dart' show DirectionsMapWidget;
import 'package:flutter/material.dart';

class DirectionsMapModel extends FlutterFlowModel<DirectionsMapWidget> {
  ///  Local state fields for this page.

  List<LatLng> routeCoordinates = [];
  void addToRouteCoordinates(LatLng item) => routeCoordinates.add(item);
  void removeFromRouteCoordinates(LatLng item) => routeCoordinates.remove(item);
  void removeAtIndexFromRouteCoordinates(int index) =>
      routeCoordinates.removeAt(index);
  void insertAtIndexInRouteCoordinates(int index, LatLng item) =>
      routeCoordinates.insert(index, item);
  void updateRouteCoordinatesAtIndex(int index, Function(LatLng) updateFn) =>
      routeCoordinates[index] = updateFn(routeCoordinates[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
