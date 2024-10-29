import '/components/nearby_location_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'location_details_widget.dart' show LocationDetailsWidget;
import 'package:flutter/material.dart';

class LocationDetailsModel extends FlutterFlowModel<LocationDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NearbyLocationCmp component.
  late NearbyLocationCmpModel nearbyLocationCmpModel;

  @override
  void initState(BuildContext context) {
    nearbyLocationCmpModel =
        createModel(context, () => NearbyLocationCmpModel());
  }

  @override
  void dispose() {
    nearbyLocationCmpModel.dispose();
  }
}
