import '/components/drawer_menu_widget.dart';
import '/components/english_language_widget.dart';
import '/components/french_language_widget.dart';
import '/components/german_language_widget.dart';
import '/components/italian_language_widget.dart';
import '/components/russian_language_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'select_language_model.dart';
export 'select_language_model.dart';

class SelectLanguageWidget extends StatefulWidget {
  const SelectLanguageWidget({super.key});

  @override
  State<SelectLanguageWidget> createState() => _SelectLanguageWidgetState();
}

class _SelectLanguageWidgetState extends State<SelectLanguageWidget> {
  late SelectLanguageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectLanguageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().ttslanguagecode = '';
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16.0,
        child: wrapWithModel(
          model: _model.drawerMenuModel,
          updateCallback: () => safeSetState(() {}),
          child: const DrawerMenuWidget(),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xFF827AE1),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: const Color(0xFF827AE1),
          borderRadius: 20.0,
          borderWidth: 1.0,
          buttonSize: 40.0,
          fillColor: const Color(0xFF827AE1),
          icon: Icon(
            Icons.arrow_back_sharp,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
          onPressed: () async {
            context.pushNamed('Start');
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '8827705q' /* Select Language */,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).info,
                fontSize: 16.0,
                letterSpacing: 0.0,
              ),
        ),
        actions: const [],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(7.0),
          child: Container(),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      85.0, 12.0, 0.0, 12.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'tfiylhqv' /* Select your preferred language */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                wrapWithModel(
                                  model: _model.englishLanguageModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const EnglishLanguageWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                wrapWithModel(
                                  model: _model.italianLanguageModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const ItalianLanguageWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                wrapWithModel(
                                  model: _model.frenchLanguageModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const FrenchLanguageWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                wrapWithModel(
                                  model: _model.germanLanguageModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const GermanLanguageWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                wrapWithModel(
                                  model: _model.russianLanguageModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const RussianLanguageWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
