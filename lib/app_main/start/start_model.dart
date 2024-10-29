import '/backend/api_requests/api_calls.dart';
import '/components/custom_nav_home_widget.dart';
import '/components/drawer_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'start_widget.dart' show StartWidget;
import 'package:flutter/material.dart';

class StartModel extends FlutterFlowModel<StartWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getIpaddress)] action in Start widget.
  ApiCallResponse? ipaddress;
  // Stores action output result for [Backend Call - API (getCurrency)] action in Start widget.
  ApiCallResponse? getCurrency;
  // Model for DrawerMenu component.
  late DrawerMenuModel drawerMenuModel;
  // Model for CustomNavHome component.
  late CustomNavHomeModel customNavHomeModel;

  @override
  void initState(BuildContext context) {
    drawerMenuModel = createModel(context, () => DrawerMenuModel());
    customNavHomeModel = createModel(context, () => CustomNavHomeModel());
  }

  @override
  void dispose() {
    drawerMenuModel.dispose();
    customNavHomeModel.dispose();
  }
}
