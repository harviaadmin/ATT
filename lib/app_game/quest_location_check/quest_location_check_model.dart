import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'quest_location_check_widget.dart' show QuestLocationCheckWidget;
import 'package:flutter/material.dart';

class QuestLocationCheckModel
    extends FlutterFlowModel<QuestLocationCheckWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getDistance] action in QuestLocationCheck widget.
  double? distance;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
