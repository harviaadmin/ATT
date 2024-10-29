import '/backend/backend.dart';
import '/components/hintcmp_widget.dart';
import '/components/reveal_answer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'qand_atext_model.dart';
export 'qand_atext_model.dart';

class QandAtextWidget extends StatefulWidget {
  const QandAtextWidget({super.key});

  @override
  State<QandAtextWidget> createState() => _QandAtextWidgetState();
}

class _QandAtextWidgetState extends State<QandAtextWidget> {
  late QandAtextModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QandAtextModel());

    _model.answerTextController ??= TextEditingController();
    _model.answerFocusNode ??= FocusNode();

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
        List<LocationsRecord> qandAtextLocationsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final qandAtextLocationsRecord = qandAtextLocationsRecordList.isNotEmpty
            ? qandAtextLocationsRecordList.first
            : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              appBar: AppBar(
                backgroundColor: const Color(0xFF827AE1),
                automaticallyImplyLeading: false,
                title: Text(
                  FFLocalizations.of(context).getText(
                    '2z4hx81j' /* Question: Textual */,
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
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
                            qandAtextLocationsRecord!.questionDe,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else if (FFAppState().languagecode == 'it') {
                          await actions.speakTextWithGoogleTTS(
                            qandAtextLocationsRecord!.questionIt,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else if (FFAppState().languagecode == 'fr') {
                          await actions.speakTextWithGoogleTTS(
                            qandAtextLocationsRecord!.questionFr,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else if (FFAppState().languagecode == 'ru') {
                          await actions.speakTextWithGoogleTTS(
                            qandAtextLocationsRecord!.questionRu,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else {
                          await actions.speakTextWithGoogleTTS(
                            qandAtextLocationsRecord!.question,
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
                                  '5ql31095' /* Question */,
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
                                  16.0, 16.0, 16.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  () {
                                    if (FFAppState().languagecode == 'de') {
                                      return qandAtextLocationsRecord
                                          ?.questionDe;
                                    } else if (FFAppState().languagecode ==
                                        'it') {
                                      return qandAtextLocationsRecord
                                          ?.questionIt;
                                    } else if (FFAppState().languagecode ==
                                        'fr') {
                                      return qandAtextLocationsRecord
                                          ?.questionFr;
                                    } else if (FFAppState().languagecode ==
                                        'ru') {
                                      return qandAtextLocationsRecord
                                          ?.questionRu;
                                    } else {
                                      return qandAtextLocationsRecord?.question;
                                    }
                                  }(),
                                  '1',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 8.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      alignment:
                                          const AlignmentDirectional(-0.9, 0.0),
                                      child: Stack(
                                        children: [
                                          Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          40.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9mht5mio' /* Answer */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -0.97, -0.28),
                                                child: Icon(
                                                  Icons.calendar_month,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: TextFormField(
                                controller: _model.answerTextController,
                                focusNode: _model.answerFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    '3ws03l4d' /* Type Your Answer */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model.answerTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 20.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.answerTextController.text ==
                                        FFAppState().answer) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            valueOrDefault<String>(
                                              () {
                                                if (FFAppState().languagecode ==
                                                    'en') {
                                                  return 'Answer is Correct. You will be taken to the next part of the Game.';
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'de') {
                                                  return 'Die Antwort ist richtig. Sie gelangen zum nächsten Teil des Spiels.';
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'it') {
                                                  return 'La risposta è corretta. Verrai portato alla parte successiva del gioco.';
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'fr') {
                                                  return 'La réponse est correcte. Vous serez redirigé vers la partie suivante du jeu.';
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'ru') {
                                                  return 'Ответ правильный. Вы перейдете к следующей части игры.';
                                                } else {
                                                  return 'Answer is Correct. You will be taken to the next part of the Game';
                                                }
                                              }(),
                                              '1',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      FFAppState().isStopped = true;
                                      safeSetState(() {});
                                      await actions.speakTextWithGoogleTTS(
                                        'test',
                                        'en-EN',
                                      );
                                      FFAppState().isStopped = false;
                                      safeSetState(() {});
                                      await Future.delayed(
                                          const Duration(milliseconds: 2000));

                                      context.pushNamed('Directions');
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            valueOrDefault<String>(
                                              () {
                                                if (FFAppState().languagecode ==
                                                    'en') {
                                                  return 'Answer you entered is wrong. Please try again';
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'de') {
                                                  return 'Die von Ihnen eingegebene Antwort ist falsch. Bitte versuchen Sie es erneut';
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'it') {
                                                  return 'La risposta che hai inserito è sbagliata. Riprova.';
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'fr') {
                                                  return 'La réponse que vous avez saisie est incorrecte. Veuillez réessayer.';
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'ru') {
                                                  return 'Ответ, который вы ввели, неверный. Попробуйте еще раз.';
                                                } else {
                                                  return 'Answer you entered is wrong. Please try again';
                                                }
                                              }(),
                                              '1',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      FFAppState().isStopped = true;
                                      safeSetState(() {});
                                      await actions.speakTextWithGoogleTTS(
                                        'test',
                                        'en-EN',
                                      );
                                      FFAppState().isStopped = false;
                                      safeSetState(() {});
                                    }
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'pjgaruvt' /* Submit */,
                                  ),
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
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

                                  context.pushNamed('Hint');
                                },
                                child: wrapWithModel(
                                  model: _model.hintcmpModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const HintcmpWidget(),
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
          ),
        );
      },
    );
  }
}
