import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameTextController;
  String? Function(BuildContext, String?)? displayNameTextControllerValidator;
  String? _displayNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9nh61ubr' /* Invalid Input. */,
      );
    }

    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'ae2xwcqu' /* Max 20 chars allowed */,
      );
    }

    return null;
  }

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zl80aovk' /* Invalid Input */,
      );
    }

    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'a8y133ss' /* Max 20 chars allowed */,
      );
    }

    return null;
  }

  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'uqxtfcgl' /* Field is required */,
      );
    }

    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'mq7ejtfx' /* Max 20 chars allowed */,
      );
    }

    return null;
  }

  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  String? _lastNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8e4u40z1' /* Invalid Input */,
      );
    }

    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'oy6buge5' /* Max 20 chars allowed */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    displayNameTextControllerValidator = _displayNameTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
  }

  @override
  void dispose() {
    displayNameFocusNode?.dispose();
    displayNameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();
  }
}
