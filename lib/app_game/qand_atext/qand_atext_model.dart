import '/components/hintcmp_widget.dart';
import '/components/reveal_answer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'qand_atext_widget.dart' show QandAtextWidget;
import 'package:flutter/material.dart';

class QandAtextModel extends FlutterFlowModel<QandAtextWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for answer widget.
  FocusNode? answerFocusNode;
  TextEditingController? answerTextController;
  String? Function(BuildContext, String?)? answerTextControllerValidator;
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
    answerFocusNode?.dispose();
    answerTextController?.dispose();

    hintcmpModel.dispose();
    revealAnswerModel.dispose();
  }
}
