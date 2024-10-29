import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pictures_section_model.dart';
export 'pictures_section_model.dart';

class PicturesSectionWidget extends StatefulWidget {
  const PicturesSectionWidget({super.key});

  @override
  State<PicturesSectionWidget> createState() => _PicturesSectionWidgetState();
}

class _PicturesSectionWidgetState extends State<PicturesSectionWidget> {
  late PicturesSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PicturesSectionModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        height: 40.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        alignment: const AlignmentDirectional(-0.9, 0.0),
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.9,
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '73biuah4' /* Pictures */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.98, 0.04),
                    child: Icon(
                      Icons.picture_in_picture,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
