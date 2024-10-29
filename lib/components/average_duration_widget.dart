import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'average_duration_model.dart';
export 'average_duration_model.dart';

class AverageDurationWidget extends StatefulWidget {
  const AverageDurationWidget({super.key});

  @override
  State<AverageDurationWidget> createState() => _AverageDurationWidgetState();
}

class _AverageDurationWidgetState extends State<AverageDurationWidget> {
  late AverageDurationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AverageDurationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.9,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).alternate,
            boxShadow: [
              BoxShadow(
                blurRadius: 0.0,
                color: FlutterFlowTheme.of(context).primaryBackground,
                offset: const Offset(
                  0.0,
                  1.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryBackground,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 16.0, 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Container(
                    width: 44.0,
                    height: 44.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEE606F),
                      shape: BoxShape.circle,
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'jhz4n6qk' /* T */,
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'hktyibds' /* Average Time: 1 hr 30 mins - 2... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
