import '/flutter_flow/flutter_flow_util.dart';
import 'list13_property_listview1_widget.dart'
    show List13PropertyListview1Widget;
import 'package:flutter/material.dart';

class List13PropertyListview1Model
    extends FlutterFlowModel<List13PropertyListview1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
