import '/backend/backend.dart';
import '/components/hintcmp_widget.dart';
import '/components/reveal_answer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'qand_a_choice_model.dart';
export 'qand_a_choice_model.dart';

class QandAChoiceWidget extends StatefulWidget {
  const QandAChoiceWidget({super.key});

  @override
  State<QandAChoiceWidget> createState() => _QandAChoiceWidgetState();
}

class _QandAChoiceWidgetState extends State<QandAChoiceWidget> {
  late QandAChoiceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QandAChoiceModel());

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
        List<LocationsRecord> qandAChoiceLocationsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final qandAChoiceLocationsRecord =
            qandAChoiceLocationsRecordList.isNotEmpty
                ? qandAChoiceLocationsRecordList.first
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
                    'hc25urfi' /* Question: Options */,
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
                            qandAChoiceLocationsRecord!.questionDe,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else if (FFAppState().languagecode == 'it') {
                          await actions.speakTextWithGoogleTTS(
                            qandAChoiceLocationsRecord!.questionIt,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else if (FFAppState().languagecode == 'fr') {
                          await actions.speakTextWithGoogleTTS(
                            qandAChoiceLocationsRecord!.questionFr,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else if (FFAppState().languagecode == 'ru') {
                          await actions.speakTextWithGoogleTTS(
                            qandAChoiceLocationsRecord!.questionRu,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else {
                          await actions.speakTextWithGoogleTTS(
                            qandAChoiceLocationsRecord!.question,
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
                                  'opy05yub' /* Question */,
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
                            if (qandAChoiceLocationsRecord?.questionImage !=
                                    null &&
                                qandAChoiceLocationsRecord?.questionImage != '')
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 16.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      FFAppState().questionimage,
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
                                      return qandAChoiceLocationsRecord
                                          ?.questionDe;
                                    } else if (FFAppState().languagecode ==
                                        'it') {
                                      return qandAChoiceLocationsRecord
                                          ?.questionIt;
                                    } else if (FFAppState().languagecode ==
                                        'fr') {
                                      return qandAChoiceLocationsRecord
                                          ?.questionFr;
                                    } else if (FFAppState().languagecode ==
                                        'ru') {
                                      return qandAChoiceLocationsRecord
                                          ?.questionRu;
                                    } else {
                                      return qandAChoiceLocationsRecord
                                          ?.question;
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
                                                      'xzfixh5c' /* Answer */,
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
                                  16.0, 0.0, 16.0, 0.0),
                              child: FlutterFlowRadioButton(
                                options: () {
                                  if (FFAppState().languagecode == 'de') {
                                    return FFAppState().answeroptionsde;
                                  } else if (FFAppState().languagecode ==
                                      'it') {
                                    return FFAppState().answeroptionsit;
                                  } else if (FFAppState().languagecode ==
                                      'fr') {
                                    return FFAppState().answeroptionsfr;
                                  } else if (FFAppState().languagecode ==
                                      'ru') {
                                    return FFAppState().answeroptionsru;
                                  } else {
                                    return FFAppState().answeroptions;
                                  }
                                }()
                                    .toList(),
                                onChanged: (val) => safeSetState(() {}),
                                controller:
                                    _model.radioButtonValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 75.0,
                                optionWidth:
                                    MediaQuery.sizeOf(context).width * 0.9,
                                textStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                textPadding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.vertical,
                                radioButtonColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveRadioButtonColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.start,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 20.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (FFAppState().languagecode == 'de') {
                                      if (_model.radioButtonValue ==
                                          qandAChoiceLocationsRecord
                                              ?.correctAnswerDe) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              valueOrDefault<String>(
                                                () {
                                                  if (FFAppState()
                                                          .languagecode ==
                                                      'en') {
                                                    return 'You have selected the correct answer.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'de') {
                                                    return 'Sie haben die richtige Antwort ausgewählt.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'it') {
                                                    return 'Hai selezionato la risposta corretta.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'fr') {
                                                    return 'Vous avez sélectionné la bonne réponse.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'ru') {
                                                    return 'Вы выбрали правильный ответ.';
                                                  } else {
                                                    return 'You have selected the correct answer.';
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
                                                  if (FFAppState()
                                                          .languagecode ==
                                                      'en') {
                                                    return 'You have selected the wrong answer. Please try again.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'de') {
                                                    return 'Sie haben die falsche Antwort ausgewählt. Bitte versuchen Sie es erneut.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'it') {
                                                    return 'Hai selezionato la risposta sbagliata. Riprova.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'fr') {
                                                    return 'Vous avez sélectionné la mauvaise réponse. Veuillez réessayer.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'ru') {
                                                    return 'Вы выбрали неправильный ответ. Попробуйте еще раз.';
                                                  } else {
                                                    return 'You have selected the wrong answer. Please try again.';
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
                                    } else if (FFAppState().languagecode ==
                                        'it') {
                                      if (_model.radioButtonValue ==
                                          qandAChoiceLocationsRecord
                                              ?.correctAnswerIt) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              valueOrDefault<String>(
                                                () {
                                                  if (FFAppState()
                                                          .languagecode ==
                                                      'en') {
                                                    return 'You have selected the correct answer.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'de') {
                                                    return 'Sie haben die richtige Antwort ausgewählt.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'it') {
                                                    return 'Hai selezionato la risposta corretta.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'fr') {
                                                    return 'Vous avez sélectionné la bonne réponse.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'ru') {
                                                    return 'Вы выбрали правильный ответ.';
                                                  } else {
                                                    return 'You have selected the correct answer.';
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
                                                  if (FFAppState()
                                                          .languagecode ==
                                                      'en') {
                                                    return 'You have selected the wrong answer. Please try again.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'de') {
                                                    return 'Sie haben die falsche Antwort ausgewählt. Bitte versuchen Sie es erneut.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'it') {
                                                    return 'Hai selezionato la risposta sbagliata. Riprova.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'fr') {
                                                    return 'Vous avez sélectionné la mauvaise réponse. Veuillez réessayer.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'ru') {
                                                    return 'Вы выбрали неправильный ответ. Попробуйте еще раз.';
                                                  } else {
                                                    return 'You have selected the wrong answer. Please try again.';
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
                                    } else if (FFAppState().languagecode ==
                                        'fr') {
                                      if (_model.radioButtonValue ==
                                          qandAChoiceLocationsRecord
                                              ?.correctAnswerFr) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              valueOrDefault<String>(
                                                () {
                                                  if (FFAppState()
                                                          .languagecode ==
                                                      'en') {
                                                    return 'You have selected the correct answer.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'de') {
                                                    return 'Sie haben die richtige Antwort ausgewählt.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'it') {
                                                    return 'Hai selezionato la risposta corretta.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'fr') {
                                                    return 'Vous avez sélectionné la bonne réponse.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'ru') {
                                                    return 'Вы выбрали правильный ответ.';
                                                  } else {
                                                    return 'You have selected the correct answer.';
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
                                                  if (FFAppState()
                                                          .languagecode ==
                                                      'en') {
                                                    return 'You have selected the wrong answer. Please try again.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'de') {
                                                    return 'Sie haben die falsche Antwort ausgewählt. Bitte versuchen Sie es erneut.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'it') {
                                                    return 'Hai selezionato la risposta sbagliata. Riprova.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'fr') {
                                                    return 'Vous avez sélectionné la mauvaise réponse. Veuillez réessayer.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'ru') {
                                                    return 'Вы выбрали неправильный ответ. Попробуйте еще раз.';
                                                  } else {
                                                    return 'You have selected the wrong answer. Please try again.';
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
                                    } else if (FFAppState().languagecode ==
                                        'ru') {
                                      if (_model.radioButtonValue ==
                                          qandAChoiceLocationsRecord
                                              ?.correctAnswerRu) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              valueOrDefault<String>(
                                                () {
                                                  if (FFAppState()
                                                          .languagecode ==
                                                      'en') {
                                                    return 'You have selected the correct answer.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'de') {
                                                    return 'Sie haben die richtige Antwort ausgewählt.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'it') {
                                                    return 'Hai selezionato la risposta corretta.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'fr') {
                                                    return 'Vous avez sélectionné la bonne réponse.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'ru') {
                                                    return 'Вы выбрали правильный ответ.';
                                                  } else {
                                                    return 'You have selected the correct answer.';
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
                                                  if (FFAppState()
                                                          .languagecode ==
                                                      'en') {
                                                    return 'You have selected the wrong answer. Please try again.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'de') {
                                                    return 'Sie haben die falsche Antwort ausgewählt. Bitte versuchen Sie es erneut.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'it') {
                                                    return 'Hai selezionato la risposta sbagliata. Riprova.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'fr') {
                                                    return 'Vous avez sélectionné la mauvaise réponse. Veuillez réessayer.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'ru') {
                                                    return 'Вы выбрали неправильный ответ. Попробуйте еще раз.';
                                                  } else {
                                                    return 'You have selected the wrong answer. Please try again.';
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
                                    } else {
                                      if (_model.radioButtonValue ==
                                          FFAppState().answer) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              valueOrDefault<String>(
                                                () {
                                                  if (FFAppState()
                                                          .languagecode ==
                                                      'en') {
                                                    return 'You have selected the correct answer.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'de') {
                                                    return 'Sie haben die richtige Antwort ausgewählt.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'it') {
                                                    return 'Hai selezionato la risposta corretta.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'fr') {
                                                    return 'Vous avez sélectionné la bonne réponse.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'ru') {
                                                    return 'Вы выбрали правильный ответ.';
                                                  } else {
                                                    return 'You have selected the correct answer.';
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
                                                  if (FFAppState()
                                                          .languagecode ==
                                                      'en') {
                                                    return 'You have selected the wrong answer. Please try again.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'de') {
                                                    return 'Sie haben die falsche Antwort ausgewählt. Bitte versuchen Sie es erneut.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'it') {
                                                    return 'Hai selezionato la risposta sbagliata. Riprova.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'fr') {
                                                    return 'Vous avez sélectionné la mauvaise réponse. Veuillez réessayer.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'ru') {
                                                    return 'Вы выбрали неправильный ответ. Попробуйте еще раз.';
                                                  } else {
                                                    return 'You have selected the wrong answer. Please try again.';
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
                                    }
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'dpgsc7rh' /* Submit */,
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
                                  0.0, 20.0, 0.0, 30.0),
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
