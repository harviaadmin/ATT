import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'german_language_model.dart';
export 'german_language_model.dart';

class GermanLanguageWidget extends StatefulWidget {
  const GermanLanguageWidget({super.key});

  @override
  State<GermanLanguageWidget> createState() => _GermanLanguageWidgetState();
}

class _GermanLanguageWidgetState extends State<GermanLanguageWidget> {
  late GermanLanguageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GermanLanguageModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          setAppLanguage(context, 'de');
          FFAppState().ttslanguagecode = 'de-DE';
          FFAppState().languagecode = 'de';
          safeSetState(() {});

          context.pushNamed('Start');
        },
        child: Material(
          color: Colors.transparent,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            width: 200.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    1.0,
                  ),
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
            ),
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FaIcon(
                    FontAwesomeIcons.language,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'livxc3tn' /* German */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.9, 0.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
