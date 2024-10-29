import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'directions_model.dart';
export 'directions_model.dart';

class DirectionsWidget extends StatefulWidget {
  const DirectionsWidget({super.key});

  @override
  State<DirectionsWidget> createState() => _DirectionsWidgetState();
}

class _DirectionsWidgetState extends State<DirectionsWidget> {
  late DirectionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DirectionsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().dirchoice == 'yes') {
        if (FFAppState().locationid == 'l_234_6') {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text(valueOrDefault<String>(
                      () {
                        if (FFAppState().languagecode == 'en') {
                          return 'Skip Location';
                        } else if (FFAppState().languagecode == 'de') {
                          return 'Standort überspringen';
                        } else if (FFAppState().languagecode == 'it') {
                          return 'Salta posizione';
                        } else if (FFAppState().languagecode == 'fr') {
                          return 'Sauter l\'emplacement';
                        } else if (FFAppState().languagecode == 'ru') {
                          return 'Пропустить Местоположение';
                        } else {
                          return 'Skip Location';
                        }
                      }(),
                      '1',
                    )),
                    content: Text(valueOrDefault<String>(
                      () {
                        if (FFAppState().languagecode == 'en') {
                          return 'Do you want to make the walk to the Rosengarten viewing platform or skip this stop? (Distance 450 meters and 100 meters difference in altitude, 5 minutes)';
                        } else if (FFAppState().languagecode == 'de') {
                          return 'Möchtest du den Spaziergang zur Aussichtsplattform Rosengarten machen oder diesen Stopp auslassen? (Entfernung 450 Meter und 100 Meter Höhenunterschied, 5 Minuten)';
                        } else if (FFAppState().languagecode == 'it') {
                          return 'Vuoi fare la passeggiata fino alla piattaforma panoramica del Catinaccio o saltare questa fermata? (Distanza 450 metri e 100 metri di dislivello, 5 minuti)';
                        } else if (FFAppState().languagecode == 'fr') {
                          return 'Voulez-vous faire la promenade jusqu\'à la plate-forme panoramique du Rosengarten ou sauter cet arrêt ? (Distance 450 mètres et 100 mètres de dénivelé, 5 minutes)';
                        } else if (FFAppState().languagecode == 'ru') {
                          return 'Хотите ли вы прогуляться до смотровой площадки Розенгартен или пропустить эту остановку? (Расстояние 450 метров и перепад высот 100 метров, 5 минут)';
                        } else {
                          return 'Do you want to make the walk to the Rosengarten viewing platform or skip this stop? (Distance 450 meters and 100 meters difference in altitude, 5 minutes)';
                        }
                      }(),
                      '1',
                    )),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: Text(valueOrDefault<String>(
                          () {
                            if (FFAppState().languagecode == 'en') {
                              return 'Walk';
                            } else if (FFAppState().languagecode == 'de') {
                              return 'Gehen';
                            } else if (FFAppState().languagecode == 'it') {
                              return 'Camminare';
                            } else if (FFAppState().languagecode == 'fr') {
                              return 'Marcher';
                            } else if (FFAppState().languagecode == 'ru') {
                              return 'Ходить';
                            } else {
                              return 'Walk';
                            }
                          }(),
                          '1',
                        )),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: Text(valueOrDefault<String>(
                          () {
                            if (FFAppState().languagecode == 'en') {
                              return 'Skip';
                            } else if (FFAppState().languagecode == 'de') {
                              return 'Überspringen';
                            } else if (FFAppState().languagecode == 'it') {
                              return 'Saltare';
                            } else if (FFAppState().languagecode == 'fr') {
                              return 'Sauter';
                            } else if (FFAppState().languagecode == 'ru') {
                              return 'Пропускать';
                            } else {
                              return 'Skip';
                            }
                          }(),
                          '1',
                        )),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          if (confirmDialogResponse) {
            _model.bearparkyes = await queryDirectionschoiceRecordOnce(
              queryBuilder: (directionschoiceRecord) => directionschoiceRecord
                  .where(
                    'location_id',
                    isEqualTo: 'l_234_6',
                  )
                  .where(
                    'choice',
                    isEqualTo: 'skip',
                  ),
              singleRecord: true,
            ).then((s) => s.firstOrNull);
            FFAppState().directionslist =
                _model.bearparkyes!.directions.toList().cast<int>();
            FFAppState().locnum = FFAppState().locnum + 2;
            safeSetState(() {});
          } else {
            _model.bearparkno = await queryDirectionschoiceRecordOnce(
              queryBuilder: (directionschoiceRecord) => directionschoiceRecord
                  .where(
                    'location_id',
                    isEqualTo: 'l_234_6',
                  )
                  .where(
                    'choice',
                    isEqualTo: 'walk',
                  ),
              singleRecord: true,
            ).then((s) => s.firstOrNull);
            FFAppState().directionslist =
                _model.bearparkno!.directions.toList().cast<int>();
            FFAppState().locnum = FFAppState().locnum + 1;
            safeSetState(() {});
          }
        } else if (FFAppState().locationid == 'l_234_9') {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text(valueOrDefault<String>(
                      () {
                        if (FFAppState().languagecode == 'en') {
                          return 'Walk or Lift';
                        } else if (FFAppState().languagecode == 'de') {
                          return 'Gehen oder heben';
                        } else if (FFAppState().languagecode == 'it') {
                          return 'Camminare o sollevare';
                        } else if (FFAppState().languagecode == 'fr') {
                          return 'Marcher ou soulever';
                        } else if (FFAppState().languagecode == 'ru') {
                          return 'Прогулка или подъем';
                        } else {
                          return 'Walk or Lift';
                        }
                      }(),
                      '1',
                    )),
                    content: Text(valueOrDefault<String>(
                      () {
                        if (FFAppState().languagecode == 'en') {
                          return 'Do you take the cable car up (price 1.50 Fr.) or do you walk?';
                        } else if (FFAppState().languagecode == 'de') {
                          return 'Fährst du mit der Seilbahn hoch (Preis 1.50 Fr.) oder gehst du zu Fuß?';
                        } else if (FFAppState().languagecode == 'it') {
                          return 'Si sale in funivia (prezzo 1,50 Fr.) oppure a piedi?';
                        } else if (FFAppState().languagecode == 'fr') {
                          return 'Vous prenez le téléphérique (prix 1,50 Fr.) ou vous marchez ?';
                        } else if (FFAppState().languagecode == 'ru') {
                          return 'Подняться наверх можно на канатной дороге (стоимость 1,50 франка) или пройтись пешком?';
                        } else {
                          return 'Do you take the cable car up (price 1.50 Fr.) or do you walk?';
                        }
                      }(),
                      '1',
                    )),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: Text(valueOrDefault<String>(
                          () {
                            if (FFAppState().languagecode == 'en') {
                              return 'Cable';
                            } else if (FFAppState().languagecode == 'de') {
                              return 'Kabel';
                            } else if (FFAppState().languagecode == 'it') {
                              return 'Cavo';
                            } else if (FFAppState().languagecode == 'fr') {
                              return 'Câble';
                            } else if (FFAppState().languagecode == 'ru') {
                              return 'Кабель';
                            } else {
                              return 'Cable';
                            }
                          }(),
                          '1',
                        )),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: Text(valueOrDefault<String>(
                          () {
                            if (FFAppState().languagecode == 'en') {
                              return 'Walk';
                            } else if (FFAppState().languagecode == 'de') {
                              return 'Gehen';
                            } else if (FFAppState().languagecode == 'it') {
                              return 'Camminare';
                            } else if (FFAppState().languagecode == 'fr') {
                              return 'Marcher';
                            } else if (FFAppState().languagecode == 'ru') {
                              return 'Ходить';
                            } else {
                              return 'Walk';
                            }
                          }(),
                          '1',
                        )),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          if (confirmDialogResponse) {
            _model.munsteryes = await queryDirectionschoiceRecordOnce(
              queryBuilder: (directionschoiceRecord) => directionschoiceRecord
                  .where(
                    'location_id',
                    isEqualTo: 'l_234_9',
                  )
                  .where(
                    'choice',
                    isEqualTo: 'walk',
                  ),
              singleRecord: true,
            ).then((s) => s.firstOrNull);
            FFAppState().directionslist =
                _model.munsteryes!.directions.toList().cast<int>();
            FFAppState().locnum = FFAppState().locnum + 1;
            safeSetState(() {});
          } else {
            _model.munsterno = await queryDirectionschoiceRecordOnce(
              queryBuilder: (directionschoiceRecord) => directionschoiceRecord
                  .where(
                    'location_id',
                    isEqualTo: 'l_234_9',
                  )
                  .where(
                    'choice',
                    isEqualTo: 'lift',
                  ),
              singleRecord: true,
            ).then((s) => s.firstOrNull);
            FFAppState().directionslist =
                _model.munsterno!.directions.toList().cast<int>();
            FFAppState().locnum = FFAppState().locnum + 1;
            safeSetState(() {});
          }
        } else if (FFAppState().locationid == 'l_234_10') {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text(valueOrDefault<String>(
                      () {
                        if (FFAppState().languagecode == 'en') {
                          return 'Walk or Cable Car';
                        } else if (FFAppState().languagecode == 'de') {
                          return 'Zu Fuß oder mit der Seilbahn';
                        } else if (FFAppState().languagecode == 'it') {
                          return 'A piedi o in funivia';
                        } else if (FFAppState().languagecode == 'fr') {
                          return 'Promenade à pied ou en téléphérique';
                        } else if (FFAppState().languagecode == 'ru') {
                          return 'Пешком или на канатной дороге';
                        } else {
                          return 'Walk or Cable Car';
                        }
                      }(),
                      '1',
                    )),
                    content: Text(valueOrDefault<String>(
                      () {
                        if (FFAppState().languagecode == 'en') {
                          return 'Do you take the cable car up (price 1.50 Fr.) or do you walk?';
                        } else if (FFAppState().languagecode == 'de') {
                          return 'Fährst du mit der Seilbahn hoch (Preis 1.50 Fr.) oder gehst du zu Fuß?';
                        } else if (FFAppState().languagecode == 'it') {
                          return 'Si sale in funivia (prezzo 1,50 Fr.) oppure a piedi?';
                        } else if (FFAppState().languagecode == 'fr') {
                          return 'Vous prenez le téléphérique (prix 1,50 Fr.) ou vous marchez ?';
                        } else if (FFAppState().languagecode == 'ru') {
                          return 'Подняться наверх можно на канатной дороге (стоимость 1,50 франка) или пройтись пешком?';
                        } else {
                          return 'Do you take the cable car up (price 1.50 Fr.) or do you walk?';
                        }
                      }(),
                      '1',
                    )),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: Text(valueOrDefault<String>(
                          () {
                            if (FFAppState().languagecode == 'en') {
                              return 'Cable';
                            } else if (FFAppState().languagecode == 'de') {
                              return 'Kabel';
                            } else if (FFAppState().languagecode == 'it') {
                              return 'Cavo';
                            } else if (FFAppState().languagecode == 'fr') {
                              return 'Câble';
                            } else if (FFAppState().languagecode == 'ru') {
                              return 'Кабель';
                            } else {
                              return 'Cable';
                            }
                          }(),
                          '1',
                        )),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: Text(valueOrDefault<String>(
                          () {
                            if (FFAppState().languagecode == 'en') {
                              return 'Walk';
                            } else if (FFAppState().languagecode == 'de') {
                              return 'Gehen';
                            } else if (FFAppState().languagecode == 'it') {
                              return 'Camminare';
                            } else if (FFAppState().languagecode == 'fr') {
                              return 'Marcher';
                            } else if (FFAppState().languagecode == 'ru') {
                              return 'Ходить';
                            } else {
                              return 'Walk';
                            }
                          }(),
                          '1',
                        )),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          if (confirmDialogResponse) {
            _model.marzilyes = await queryDirectionschoiceRecordOnce(
              queryBuilder: (directionschoiceRecord) => directionschoiceRecord
                  .where(
                    'location_id',
                    isEqualTo: 'l_234_10',
                  )
                  .where(
                    'choice',
                    isEqualTo: 'walk',
                  ),
              singleRecord: true,
            ).then((s) => s.firstOrNull);
            FFAppState().directionslist =
                _model.marzilyes!.directions.toList().cast<int>();
            FFAppState().locnum = FFAppState().locnum + 1;
            safeSetState(() {});
          } else {
            _model.marzilno = await queryDirectionschoiceRecordOnce(
              queryBuilder: (directionschoiceRecord) => directionschoiceRecord
                  .where(
                    'location_id',
                    isEqualTo: 'l_234_10',
                  )
                  .where(
                    'choice',
                    isEqualTo: 'cable',
                  ),
              singleRecord: true,
            ).then((s) => s.firstOrNull);
            FFAppState().directionslist =
                _model.marzilno!.directions.toList().cast<int>();
            FFAppState().locnum = FFAppState().locnum + 1;
            safeSetState(() {});
          }
        }
      } else {
        FFAppState().locnum = FFAppState().locnum + 1;
        safeSetState(() {});
      }
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
                'c8roincv' /* Directions */,
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
                        'Klicken Sie auf den Text auf der Seite und die App liest den Text für Sie vor.',
                        FFAppState().ttslanguagecode,
                      );
                      FFAppState().isStopped = false;
                      safeSetState(() {});
                    } else if (FFAppState().languagecode == 'it') {
                      await actions.speakTextWithGoogleTTS(
                        'Fai clic sul testo nella pagina e l\'app leggerà il testo per te.lin',
                        FFAppState().ttslanguagecode,
                      );
                      FFAppState().isStopped = false;
                      safeSetState(() {});
                    } else if (FFAppState().languagecode == 'fr') {
                      await actions.speakTextWithGoogleTTS(
                        'Cliquez sur le texte de la page et l\'application lira le texte pour vous.lin',
                        FFAppState().ttslanguagecode,
                      );
                      FFAppState().isStopped = false;
                      safeSetState(() {});
                    } else if (FFAppState().languagecode == 'ru') {
                      await actions.speakTextWithGoogleTTS(
                        'Нажмите на текст на странице, и приложение прочитает его для вас.lin',
                        FFAppState().ttslanguagecode,
                      );
                      FFAppState().isStopped = false;
                      safeSetState(() {});
                    } else {
                      await actions.speakTextWithGoogleTTS(
                        'Click on the text in the page and the app will read the text for you.',
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  StreamBuilder<List<DirectionsRecord>>(
                    stream: queryDirectionsRecord(
                      queryBuilder: (directionsRecord) => directionsRecord
                          .where(
                            'location_id',
                            isEqualTo: FFAppState().locationid,
                          )
                          .whereIn('direction_sequence',
                              FFAppState().directionslist),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<DirectionsRecord> listViewDirectionsRecordList =
                          snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewDirectionsRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewDirectionsRecord =
                              listViewDirectionsRecordList[listViewIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: SafeArea(
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 16.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            listViewDirectionsRecord
                                                .directionImage,
                                            width: double.infinity,
                                            height: 350.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().languagecode ==
                                                'de') {
                                              await actions
                                                  .speakTextWithGoogleTTS(
                                                listViewDirectionsRecord
                                                    .directionStepDe,
                                                FFAppState().ttslanguagecode,
                                              );
                                              FFAppState().isStopped = false;
                                              safeSetState(() {});
                                            } else if (FFAppState()
                                                    .languagecode ==
                                                'it') {
                                              await actions
                                                  .speakTextWithGoogleTTS(
                                                listViewDirectionsRecord
                                                    .directionStepIt,
                                                FFAppState().ttslanguagecode,
                                              );
                                              FFAppState().isStopped = false;
                                              safeSetState(() {});
                                            } else if (FFAppState()
                                                    .languagecode ==
                                                'fr') {
                                              await actions
                                                  .speakTextWithGoogleTTS(
                                                listViewDirectionsRecord
                                                    .directionStepFr,
                                                FFAppState().ttslanguagecode,
                                              );
                                              FFAppState().isStopped = false;
                                              safeSetState(() {});
                                            } else if (FFAppState()
                                                    .languagecode ==
                                                'ru') {
                                              await actions
                                                  .speakTextWithGoogleTTS(
                                                listViewDirectionsRecord
                                                    .directionStepRu,
                                                FFAppState().ttslanguagecode,
                                              );
                                              FFAppState().isStopped = false;
                                              safeSetState(() {});
                                            } else {
                                              await actions
                                                  .speakTextWithGoogleTTS(
                                                listViewDirectionsRecord
                                                    .directionStep,
                                                FFAppState().ttslanguagecode,
                                              );
                                              FFAppState().isStopped = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFF827AE1),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(25.0),
                                                bottomRight:
                                                    Radius.circular(25.0),
                                                topLeft: Radius.circular(25.0),
                                                topRight: Radius.circular(25.0),
                                              ),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        18.0, 16.0, 16.0, 16.0),
                                                child: Text(
                                                  () {
                                                    if (FFAppState()
                                                            .languagecode ==
                                                        'de') {
                                                      return listViewDirectionsRecord
                                                          .directionStepDe;
                                                    } else if (FFAppState()
                                                            .languagecode ==
                                                        'it') {
                                                      return listViewDirectionsRecord
                                                          .directionStepIt;
                                                    } else if (FFAppState()
                                                            .languagecode ==
                                                        'fr') {
                                                      return listViewDirectionsRecord
                                                          .directionStepFr;
                                                    } else if (FFAppState()
                                                            .languagecode ==
                                                        'ru') {
                                                      return listViewDirectionsRecord
                                                          .directionStepRu;
                                                    } else {
                                                      return listViewDirectionsRecord
                                                          .directionStep;
                                                    }
                                                  }(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (listViewDirectionsRecord
                                                  .directionInfo !=
                                              '')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (FFAppState().languagecode ==
                                                  'de') {
                                                await actions
                                                    .speakTextWithGoogleTTS(
                                                  listViewDirectionsRecord
                                                      .directionInfoDe,
                                                  FFAppState().ttslanguagecode,
                                                );
                                                FFAppState().isStopped = false;
                                                safeSetState(() {});
                                              } else if (FFAppState()
                                                      .languagecode ==
                                                  'it') {
                                                await actions
                                                    .speakTextWithGoogleTTS(
                                                  listViewDirectionsRecord
                                                      .directionInfoIt,
                                                  FFAppState().ttslanguagecode,
                                                );
                                                FFAppState().isStopped = false;
                                                safeSetState(() {});
                                              } else if (FFAppState()
                                                      .languagecode ==
                                                  'fr') {
                                                await actions
                                                    .speakTextWithGoogleTTS(
                                                  listViewDirectionsRecord
                                                      .directionInfoFr,
                                                  FFAppState().ttslanguagecode,
                                                );
                                                FFAppState().isStopped = false;
                                                safeSetState(() {});
                                              } else if (FFAppState()
                                                      .languagecode ==
                                                  'ru') {
                                                await actions
                                                    .speakTextWithGoogleTTS(
                                                  listViewDirectionsRecord
                                                      .directionInfoRu,
                                                  FFAppState().ttslanguagecode,
                                                );
                                                FFAppState().isStopped = false;
                                                safeSetState(() {});
                                              } else {
                                                await actions
                                                    .speakTextWithGoogleTTS(
                                                  listViewDirectionsRecord
                                                      .directionInfo,
                                                  FFAppState().ttslanguagecode,
                                                );
                                                FFAppState().isStopped = false;
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFD9E17A),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(25.0),
                                                  bottomRight:
                                                      Radius.circular(25.0),
                                                  topLeft:
                                                      Radius.circular(25.0),
                                                  topRight:
                                                      Radius.circular(25.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Text(
                                                  () {
                                                    if (FFAppState()
                                                            .languagecode ==
                                                        'de') {
                                                      return listViewDirectionsRecord
                                                          .directionInfoDe;
                                                    } else if (FFAppState()
                                                            .languagecode ==
                                                        'it') {
                                                      return listViewDirectionsRecord
                                                          .directionInfoIt;
                                                    } else if (FFAppState()
                                                            .languagecode ==
                                                        'fr') {
                                                      return listViewDirectionsRecord
                                                          .directionInfoFr;
                                                    } else if (FFAppState()
                                                            .languagecode ==
                                                        'ru') {
                                                      return listViewDirectionsRecord
                                                          .directionInfoRu;
                                                    } else {
                                                      return listViewDirectionsRecord
                                                          .directionInfo;
                                                    }
                                                  }(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
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
                        },
                      );
                    },
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: StreamBuilder<List<LocationsRecord>>(
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
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<LocationsRecord> buttonLocationsRecordList =
                            snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final buttonLocationsRecord =
                            buttonLocationsRecordList.isNotEmpty
                                ? buttonLocationsRecordList.first
                                : null;

                        return FFButtonWidget(
                          onPressed: () async {
                            FFAppState().locnum = FFAppState().locnum;
                            FFAppState().locname =
                                buttonLocationsRecord!.locationName;
                            FFAppState().locdesc =
                                buttonLocationsRecord.locationDesc;
                            FFAppState().locaddress =
                                buttonLocationsRecord.locationAddress;
                            FFAppState().locimage =
                                buttonLocationsRecord.locationImage;
                            FFAppState().currentquestid =
                                buttonLocationsRecord.questId;
                            FFAppState().dirname =
                                buttonLocationsRecord.directionName;
                            FFAppState().question =
                                buttonLocationsRecord.question;
                            FFAppState().answer =
                                buttonLocationsRecord.correctAnswer;
                            FFAppState().hint = buttonLocationsRecord.hint;
                            FFAppState().hintimage =
                                buttonLocationsRecord.hintImage;
                            FFAppState().answer1text =
                                buttonLocationsRecord.answer1Text;
                            FFAppState().answer1image =
                                buttonLocationsRecord.answer1Image;
                            FFAppState().answer2text =
                                buttonLocationsRecord.answer2Text;
                            FFAppState().answer2image =
                                buttonLocationsRecord.answer2Image;
                            FFAppState().answer3text =
                                buttonLocationsRecord.answer3Text;
                            FFAppState().answer3image =
                                buttonLocationsRecord.answer3Image;
                            FFAppState().answer4text =
                                buttonLocationsRecord.answer4Text;
                            FFAppState().answer4image =
                                buttonLocationsRecord.answer4Image;
                            FFAppState().locationid =
                                buttonLocationsRecord.locationId;
                            FFAppState().questiontype =
                                buttonLocationsRecord.questionType;
                            FFAppState().questionimage =
                                buttonLocationsRecord.questionImage;
                            FFAppState().dirchoice =
                                buttonLocationsRecord.directionChoice;
                            safeSetState(() {});
                            FFAppState().isStopped = true;
                            safeSetState(() {});
                            await actions.speakTextWithGoogleTTS(
                              'test',
                              'en-EN',
                            );
                            FFAppState().isStopped = false;
                            safeSetState(() {});

                            context.pushNamed('LocationDetails');
                          },
                          text: FFLocalizations.of(context).getText(
                            '1qavso7o' /* Continue */,
                          ),
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.75,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF827AE1),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        );
                      },
                    ),
                  ),
                  if (FFAppState().locnum > 12)
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.locationscount =
                              await queryLocationsRecordOnce(
                            queryBuilder: (locationsRecord) =>
                                locationsRecord.where(
                              'quest_id',
                              isEqualTo: FFAppState().currentquestid,
                            ),
                          );
                          if (FFAppState().locnum >
                              _model.locationscount!.length) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  valueOrDefault<String>(
                                    () {
                                      if (FFAppState().languagecode == 'en') {
                                        return 'Quest is Completed. Thanks. ';
                                      } else if (FFAppState().languagecode ==
                                          'de') {
                                        return 'Die Quest ist abgeschlossen. Danke.';
                                      } else if (FFAppState().languagecode ==
                                          'it') {
                                        return 'La missione è completata. Grazie.';
                                      } else if (FFAppState().languagecode ==
                                          'fr') {
                                        return 'La quête est terminée. Merci.';
                                      } else if (FFAppState().languagecode ==
                                          'ru') {
                                        return 'Квест выполнен. Спасибо.';
                                      } else {
                                        return 'Quest is Completed. Thanks. ';
                                      }
                                    }(),
                                    '1',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor: const Color(0xFF827AE1),
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

                            context.pushNamed('Start');
                          }

                          safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          'oqkujok4' /* Continue */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.75,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF827AE1),
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                ].addToEnd(const SizedBox(height: 25.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
