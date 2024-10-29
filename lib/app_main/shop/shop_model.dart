import '/backend/backend.dart';
import '/components/custom_nav_store_widget.dart';
import '/components/drawer_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shop_widget.dart' show ShopWidget;
import 'package:flutter/material.dart';

class ShopModel extends FlutterFlowModel<ShopWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserordersRecord>? orderref;
  // Model for CustomNavStore component.
  late CustomNavStoreModel customNavStoreModel;
  // Model for DrawerMenu component.
  late DrawerMenuModel drawerMenuModel;

  @override
  void initState(BuildContext context) {
    customNavStoreModel = createModel(context, () => CustomNavStoreModel());
    drawerMenuModel = createModel(context, () => DrawerMenuModel());
  }

  @override
  void dispose() {
    customNavStoreModel.dispose();
    drawerMenuModel.dispose();
  }
}
