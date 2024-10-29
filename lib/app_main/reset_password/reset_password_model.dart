import '/flutter_flow/flutter_flow_util.dart';
import 'reset_password_widget.dart' show ResetPasswordWidget;
import 'package:flutter/material.dart';

class ResetPasswordModel extends FlutterFlowModel<ResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for resetemail widget.
  FocusNode? resetemailFocusNode;
  TextEditingController? resetemailTextController;
  String? Function(BuildContext, String?)? resetemailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    resetemailFocusNode?.dispose();
    resetemailTextController?.dispose();
  }
}
