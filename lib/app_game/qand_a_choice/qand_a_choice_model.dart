import '/components/hintcmp_widget.dart';
import '/components/reveal_answer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'qand_a_choice_widget.dart' show QandAChoiceWidget;
import 'package:flutter/material.dart';

class QandAChoiceModel extends FlutterFlowModel<QandAChoiceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Model for Hintcmp component.
  late HintcmpModel hintcmpModel;
  // Model for RevealAnswer component.
  late RevealAnswerModel revealAnswerModel;

  @override
  void initState(BuildContext context) {
    hintcmpModel = createModel(context, () => HintcmpModel());
    revealAnswerModel = createModel(context, () => RevealAnswerModel());
  }

  @override
  void dispose() {
    hintcmpModel.dispose();
    revealAnswerModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
