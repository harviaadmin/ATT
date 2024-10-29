import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_nav_profile_model.dart';
export 'custom_nav_profile_model.dart';

class CustomNavProfileWidget extends StatefulWidget {
  const CustomNavProfileWidget({super.key});

  @override
  State<CustomNavProfileWidget> createState() => _CustomNavProfileWidgetState();
}

class _CustomNavProfileWidgetState extends State<CustomNavProfileWidget> {
  late CustomNavProfileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavProfileModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        width: double.infinity,
        height: 70.0,
        decoration: const BoxDecoration(
          color: Color(0xFFF1F5F8),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
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
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Start');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
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
                              context.pushNamed('Start');
                            },
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.66, 0.74),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'sho9g08s' /* Home */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFFC0C0C0),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (loggedIn == true) {
                        context.pushNamed(
                          'Profile',
                          queryParameters: {
                            'userid': serializeParam(
                              currentUserUid,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        context.pushNamed('Authentication');
                      }
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 32.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            hoverColor: const Color(0xFFD9E17A),
                            hoverIconColor: const Color(0xFFD9E17A),
                            icon: Icon(
                              Icons.person,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 32.0,
                            ),
                            onPressed: () async {
                              if (loggedIn == true) {
                                context.pushNamed(
                                  'Profile',
                                  queryParameters: {
                                    'userid': serializeParam(
                                      currentUserUid,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                context.pushNamed('Authentication');
                              }
                            },
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.03, 0.74),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '1g6mh5nb' /* Profile */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Shop');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
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
                              'lq8bht3k' /* Store */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFFC0C0C0),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
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
