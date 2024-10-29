import '/backend/backend.dart';
import '/components/custom_nav_store_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'purchases_widget.dart' show PurchasesWidget;
import 'package:flutter/material.dart';

class PurchasesModel extends FlutterFlowModel<PurchasesWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  QuestRecord? selectedquest;
  // Model for CustomNavStore component.
  late CustomNavStoreModel customNavStoreModel;

  @override
  void initState(BuildContext context) {
    customNavStoreModel = createModel(context, () => CustomNavStoreModel());
  }

  @override
  void dispose() {
    customNavStoreModel.dispose();
  }
}
