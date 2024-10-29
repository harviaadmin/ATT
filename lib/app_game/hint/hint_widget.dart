import '/backend/backend.dart';
import '/components/reveal_answer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'hint_model.dart';
export 'hint_model.dart';

class HintWidget extends StatefulWidget {
  const HintWidget({super.key});

  @override
  State<HintWidget> createState() => _HintWidgetState();
}

class _HintWidgetState extends State<HintWidget> {
  late HintModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HintModel());

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

    return StreamBuilder<List<LocationsRecord>>(
      stream: queryLocationsRecord(
        queryBuilder: (locationsRecord) => locationsRecord
            .where(
              'quest_id',
              isEqualTo: FFAppState().currentquestid,
            )
            .where(
              'location_sequence',
              isEqualTo: FFAppState().locnum,
            ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<LocationsRecord> hintLocationsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final hintLocationsRecord = hintLocationsRecordList.isNotEmpty
            ? hintLocationsRecordList.first
            : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                  context.pop();
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '1tetg96c' /* Hint */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).info,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: const Color(0xFF827AE1),
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: const Color(0xFF827AE1),
                    icon: Icon(
                      Icons.headphones_rounded,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      if (FFAppState().languagecode == 'de') {
                        await actions.speakTextWithGoogleTTS(
                          hintLocationsRecord!.hintDe,
                          FFAppState().ttslanguagecode,
                        );
                        FFAppState().isStopped = false;
                        safeSetState(() {});
                      } else if (FFAppState().languagecode == 'it') {
                        await actions.speakTextWithGoogleTTS(
                          hintLocationsRecord!.hintIt,
                          FFAppState().ttslanguagecode,
                        );
                        FFAppState().isStopped = false;
                        safeSetState(() {});
                      } else if (FFAppState().languagecode == 'fr') {
                        await actions.speakTextWithGoogleTTS(
                          hintLocationsRecord!.hintFr,
                          FFAppState().ttslanguagecode,
                        );
                        FFAppState().isStopped = false;
                        safeSetState(() {});
                      } else if (FFAppState().languagecode == 'ru') {
                        await actions.speakTextWithGoogleTTS(
                          hintLocationsRecord!.hintRu,
                          FFAppState().ttslanguagecode,
                        );
                        FFAppState().isStopped = false;
                        safeSetState(() {});
                      } else {
                        await actions.speakTextWithGoogleTTS(
                          hintLocationsRecord!.hint,
                          FFAppState().ttslanguagecode,
                        );
                        FFAppState().isStopped = false;
                        safeSetState(() {});
                      }
                    },
                  ),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(7.0),
                child: Container(),
              ),
              centerTitle: true,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'suw0kd86' /* Hint */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Divider(
                            height: 20.0,
                            thickness: 2.0,
                            indent: 16.0,
                            endIndent: 16.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          if (hintLocationsRecord?.hintImage != null &&
                              hintLocationsRecord?.hintImage != '')
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    FFAppState().hintimage,
                                    width: 200.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Text(
                              valueOrDefault<String>(
                                () {
                                  if (FFAppState().languagecode == 'de') {
                                    return hintLocationsRecord?.hintDe;
                                  } else if (FFAppState().languagecode ==
                                      'it') {
                                    return hintLocationsRecord?.hintIt;
                                  } else if (FFAppState().languagecode ==
                                      'fr') {
                                    return hintLocationsRecord?.hintFr;
                                  } else if (FFAppState().languagecode ==
                                      'ru') {
                                    return hintLocationsRecord?.hintRu;
                                  } else {
                                    return hintLocationsRecord?.hint;
                                  }
                                }(),
                                '1',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'st1ego4z' /* Still unable to figure out the... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().isStopped = true;
                                safeSetState(() {});
                                await actions.speakTextWithGoogleTTS(
                                  'test',
                                  'en-EN',
                                );
                                FFAppState().isStopped = false;
                                safeSetState(() {});

                                context.pushNamed('AnswerText');
                              },
                              child: wrapWithModel(
                                model: _model.revealAnswerModel,
                                updateCallback: () => safeSetState(() {}),
                                child: const RevealAnswerWidget(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
