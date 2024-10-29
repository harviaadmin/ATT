import '/components/reveal_answer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'hint_widget.dart' show HintWidget;
import 'package:flutter/material.dart';

class HintModel extends FlutterFlowModel<HintWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for RevealAnswer component.
  late RevealAnswerModel revealAnswerModel;

  @override
  void initState(BuildContext context) {
    revealAnswerModel = createModel(context, () => RevealAnswerModel());
  }

  @override
  void dispose() {
    revealAnswerModel.dispose();
  }
}
