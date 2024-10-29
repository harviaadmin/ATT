import '/components/custom_nav_profile_widget.dart';
import '/components/drawer_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_confirm_widget.dart' show OrderConfirmWidget;
import 'package:flutter/material.dart';

class OrderConfirmModel extends FlutterFlowModel<OrderConfirmWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CustomNavProfile component.
  late CustomNavProfileModel customNavProfileModel;
  // Model for DrawerMenu component.
  late DrawerMenuModel drawerMenuModel;

  @override
  void initState(BuildContext context) {
    customNavProfileModel = createModel(context, () => CustomNavProfileModel());
    drawerMenuModel = createModel(context, () => DrawerMenuModel());
  }

  @override
  void dispose() {
    customNavProfileModel.dispose();
    drawerMenuModel.dispose();
  }
}
