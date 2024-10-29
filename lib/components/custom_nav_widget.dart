import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_nav_model.dart';
export 'custom_nav_model.dart';

class CustomNavWidget extends StatefulWidget {
  const CustomNavWidget({super.key});

  @override
  State<CustomNavWidget> createState() => _CustomNavWidgetState();
}

class _CustomNavWidgetState extends State<CustomNavWidget> {
  late CustomNavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavModel());

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
        width: MediaQuery.sizeOf(context).width * 0.8,
        height: 70.0,
        decoration: const BoxDecoration(
          color: Color(0xFFF1F5F8),
          borderRadius: BorderRadius.only(
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
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          hoverColor: const Color(0xFFD9E17A),
                          hoverIconColor: const Color(0xFFD9E17A),
                          icon: const Icon(
                            Icons.home,
                            color: Color(0xFFC0C0C0),
                            size: 32.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('Authentication');
                          },
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.66, 0.74),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'zseuwhtt' /* Home */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFC0C0C0),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 32.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          hoverColor: const Color(0xFFD9E17A),
                          hoverIconColor: const Color(0xFFD9E17A),
                          icon: const Icon(
                            Icons.person,
                            color: Color(0xFFC0C0C0),
                            size: 32.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('Authentication');
                          },
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.03, 0.74),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'oh3n8fvd' /* Profile */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFC0C0C0),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Color(0xFFC0C0C0),
                            size: 32.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('Shop');
                          },
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.7, 0.75),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'oqs9e60n' /* Store */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFC0C0C0),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
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
