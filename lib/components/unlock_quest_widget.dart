import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'unlock_quest_model.dart';
export 'unlock_quest_model.dart';

class UnlockQuestWidget extends StatefulWidget {
  const UnlockQuestWidget({super.key});

  @override
  State<UnlockQuestWidget> createState() => _UnlockQuestWidgetState();
}

class _UnlockQuestWidgetState extends State<UnlockQuestWidget> {
  late UnlockQuestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnlockQuestModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).success,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Stack(
          alignment: const AlignmentDirectional(0.0, 0.0),
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      'w6z3yrjh' /* Unlock Quest */,
                    ),
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).success,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ]
                    .divide(const SizedBox(width: 16.0))
                    .addToStart(const SizedBox(width: 16.0))
                    .addToEnd(const SizedBox(width: 16.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
