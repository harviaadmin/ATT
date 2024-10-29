import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'answer_text_model.dart';
export 'answer_text_model.dart';

class AnswerTextWidget extends StatefulWidget {
  const AnswerTextWidget({super.key});

  @override
  State<AnswerTextWidget> createState() => _AnswerTextWidgetState();
}

class _AnswerTextWidgetState extends State<AnswerTextWidget> {
  late AnswerTextModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnswerTextModel());

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
        List<LocationsRecord> answerTextLocationsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final answerTextLocationsRecord =
            answerTextLocationsRecordList.isNotEmpty
                ? answerTextLocationsRecordList.first
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
                  'laj98gsp' /* Answer */,
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
                          answerTextLocationsRecord!.correctAnswerDe,
                          FFAppState().ttslanguagecode,
                        );
                        FFAppState().isStopped = false;
                        safeSetState(() {});
                      } else if (FFAppState().languagecode == 'it') {
                        await actions.speakTextWithGoogleTTS(
                          answerTextLocationsRecord!.correctAnswerIt,
                          FFAppState().ttslanguagecode,
                        );
                        FFAppState().isStopped = false;
                        safeSetState(() {});
                      } else if (FFAppState().languagecode == 'fr') {
                        await actions.speakTextWithGoogleTTS(
                          answerTextLocationsRecord!.correctAnswerFr,
                          FFAppState().ttslanguagecode,
                        );
                        FFAppState().isStopped = false;
                        safeSetState(() {});
                      } else if (FFAppState().languagecode == 'ru') {
                        await actions.speakTextWithGoogleTTS(
                          answerTextLocationsRecord!.correctAnswerRu,
                          FFAppState().ttslanguagecode,
                        );
                        FFAppState().isStopped = false;
                        safeSetState(() {});
                      } else {
                        await actions.speakTextWithGoogleTTS(
                          answerTextLocationsRecord!.correctAnswer,
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
                                '7htsgmzk' /* Answer */,
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                () {
                                  if (FFAppState().languagecode == 'de') {
                                    return answerTextLocationsRecord
                                        ?.correctAnswerDe;
                                  } else if (FFAppState().languagecode ==
                                      'it') {
                                    return answerTextLocationsRecord
                                        ?.correctAnswerIt;
                                  } else if (FFAppState().languagecode ==
                                      'fr') {
                                    return answerTextLocationsRecord
                                        ?.correctAnswerFr;
                                  } else if (FFAppState().languagecode ==
                                      'ru') {
                                    return answerTextLocationsRecord
                                        ?.correctAnswerRu;
                                  } else {
                                    return answerTextLocationsRecord
                                        ?.correctAnswer;
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
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 0.0, 20.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  safeSetState(() {});
                                  FFAppState().isStopped = true;
                                  safeSetState(() {});
                                  await actions.speakTextWithGoogleTTS(
                                    'test',
                                    'en-EN',
                                  );
                                  FFAppState().isStopped = false;
                                  safeSetState(() {});

                                  context.pushNamed('Directions');
                                },
                                text: FFLocalizations.of(context).getText(
                                  '5jq2me0v' /* Continue */,
                                ),
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 0.8,
                                  height: 50.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF827AE1),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
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
