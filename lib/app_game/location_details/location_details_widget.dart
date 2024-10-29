import '/backend/backend.dart';
import '/components/nearby_location_cmp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'location_details_model.dart';
export 'location_details_model.dart';

class LocationDetailsWidget extends StatefulWidget {
  const LocationDetailsWidget({super.key});

  @override
  State<LocationDetailsWidget> createState() => _LocationDetailsWidgetState();
}

class _LocationDetailsWidgetState extends State<LocationDetailsWidget> {
  late LocationDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().directionslist = [];
      FFAppState().answeroptions = [];
      FFAppState().answeroptionsde = [];
      FFAppState().answeroptionsit = [];
      FFAppState().answeroptionsfr = [];
      FFAppState().answeroptionsru = [];
      FFAppState().isStopped = false;
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
        List<LocationsRecord> locationDetailsLocationsRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final locationDetailsLocationsRecord =
            locationDetailsLocationsRecordList.isNotEmpty
                ? locationDetailsLocationsRecordList.first
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
                    'i1hutsok' /* Location Details */,
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
                            locationDetailsLocationsRecord!.locationDescDe,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else if (FFAppState().languagecode == 'it') {
                          await actions.speakTextWithGoogleTTS(
                            locationDetailsLocationsRecord!.locationDescIt,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else if (FFAppState().languagecode == 'fr') {
                          await actions.speakTextWithGoogleTTS(
                            locationDetailsLocationsRecord!.locationDescFr,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else if (FFAppState().languagecode == 'ru') {
                          await actions.speakTextWithGoogleTTS(
                            locationDetailsLocationsRecord!.locationDescRu,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        } else {
                          await actions.speakTextWithGoogleTTS(
                            locationDetailsLocationsRecord!.locationDesc,
                            FFAppState().ttslanguagecode,
                          );
                          FFAppState().isStopped = false;
                          safeSetState(() {});
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.stop_circle,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        FFAppState().isStopped = true;
                        safeSetState(() {});
                        await actions.speakTextWithGoogleTTS(
                          'test',
                          'en-EN',
                        );
                        FFAppState().isStopped = false;
                        safeSetState(() {});
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
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  FFAppState().locimage,
                                  width: double.infinity,
                                  height: 230.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  () {
                                    if (FFAppState().languagecode == 'de') {
                                      return locationDetailsLocationsRecord
                                          ?.locationNameDe;
                                    } else if (FFAppState().languagecode ==
                                        'it') {
                                      return locationDetailsLocationsRecord
                                          ?.locationNameIt;
                                    } else if (FFAppState().languagecode ==
                                        'fr') {
                                      return locationDetailsLocationsRecord
                                          ?.locationNameFr;
                                    } else if (FFAppState().languagecode ==
                                        'ru') {
                                      return locationDetailsLocationsRecord
                                          ?.locationNameRu;
                                    } else {
                                      return locationDetailsLocationsRecord
                                          ?.locationName;
                                    }
                                  }(),
                                  '1',
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
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ui7o6ffx' /* About */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  () {
                                    if (FFAppState().languagecode == 'de') {
                                      return locationDetailsLocationsRecord
                                          ?.locationDescDe;
                                    } else if (FFAppState().languagecode ==
                                        'it') {
                                      return locationDetailsLocationsRecord
                                          ?.locationDescIt;
                                    } else if (FFAppState().languagecode ==
                                        'fr') {
                                      return locationDetailsLocationsRecord
                                          ?.locationDescFr;
                                    } else if (FFAppState().languagecode ==
                                        'ru') {
                                      return locationDetailsLocationsRecord
                                          ?.locationDescRu;
                                    } else {
                                      return locationDetailsLocationsRecord
                                          ?.locationDesc;
                                    }
                                  }(),
                                  '1',
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
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
                                                      '25gxwn27' /* Address */,
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
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          () {
                                            if (FFAppState().languagecode ==
                                                'de') {
                                              return locationDetailsLocationsRecord
                                                  ?.locationAddressDe;
                                            } else if (FFAppState()
                                                    .languagecode ==
                                                'it') {
                                              return locationDetailsLocationsRecord
                                                  ?.locationAddressIt;
                                            } else if (FFAppState()
                                                    .languagecode ==
                                                'fr') {
                                              return locationDetailsLocationsRecord
                                                  ?.locationAddressFr;
                                            } else if (FFAppState()
                                                    .languagecode ==
                                                'ru') {
                                              return locationDetailsLocationsRecord
                                                  ?.locationAddressRu;
                                            } else {
                                              return locationDetailsLocationsRecord
                                                  ?.locationAddress;
                                            }
                                          }(),
                                          '1',
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
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
                                  context.pushNamed('NearbyLocation');
                                },
                                child: wrapWithModel(
                                  model: _model.nearbyLocationCmpModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const NearbyLocationCmpWidget(),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 20.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (FFAppState().questmode == 'full') {
                                      if (FFAppState().questiontype == 'Text') {
                                        FFAppState().isStopped = true;
                                        safeSetState(() {});
                                        await actions.speakTextWithGoogleTTS(
                                          'test',
                                          'en-EN',
                                        );
                                        FFAppState().isStopped = false;
                                        safeSetState(() {});

                                        context.pushNamed('QandAtext');
                                      } else {
                                        if (FFAppState().answer1text != '') {
                                          FFAppState().directionslist = [];
                                          FFAppState().answeroptions = [];
                                          FFAppState().answeroptionsde = [];
                                          FFAppState().answeroptionsit = [];
                                          FFAppState().answeroptionsfr = [];
                                          FFAppState().answeroptionsru = [];
                                          safeSetState(() {});
                                          FFAppState()
                                              .insertAtIndexInAnsweroptions(
                                                  0, FFAppState().answer1text);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsde(
                                                  0,
                                                  locationDetailsLocationsRecord!
                                                      .answer1TextDe);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsit(
                                                  0,
                                                  locationDetailsLocationsRecord
                                                      .answer1TextIt);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsfr(
                                                  0,
                                                  locationDetailsLocationsRecord
                                                      .answer1TextFr);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsru(
                                                  0,
                                                  locationDetailsLocationsRecord
                                                      .answer1TextRu);
                                        }
                                        if (FFAppState().answer2text != '') {
                                          FFAppState()
                                              .insertAtIndexInAnsweroptions(
                                                  1, FFAppState().answer2text);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsde(
                                                  1,
                                                  locationDetailsLocationsRecord!
                                                      .answer2TextDe);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsit(
                                                  1,
                                                  locationDetailsLocationsRecord
                                                      .answer2TextIt);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsfr(
                                                  1,
                                                  locationDetailsLocationsRecord
                                                      .answer2TextFr);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsru(
                                                  1,
                                                  locationDetailsLocationsRecord
                                                      .answer2TextRu);
                                        }
                                        if (FFAppState().answer3text != '') {
                                          FFAppState()
                                              .insertAtIndexInAnsweroptions(
                                                  2, FFAppState().answer3text);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsde(
                                                  2,
                                                  locationDetailsLocationsRecord!
                                                      .answer3TextDe);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsit(
                                                  2,
                                                  locationDetailsLocationsRecord
                                                      .answer3TextIt);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsfr(
                                                  2,
                                                  locationDetailsLocationsRecord
                                                      .answer3TextFr);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsru(
                                                  2,
                                                  locationDetailsLocationsRecord
                                                      .answer3TextRu);
                                        }
                                        if (FFAppState().answer4text != '') {
                                          FFAppState()
                                              .insertAtIndexInAnsweroptions(
                                                  3, FFAppState().answer4text);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsde(
                                                  3,
                                                  locationDetailsLocationsRecord!
                                                      .answer4TextDe);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsit(
                                                  3,
                                                  locationDetailsLocationsRecord
                                                      .answer4TextIt);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsfr(
                                                  3,
                                                  locationDetailsLocationsRecord
                                                      .answer4TextFr);
                                          FFAppState()
                                              .insertAtIndexInAnsweroptionsru(
                                                  3,
                                                  locationDetailsLocationsRecord
                                                      .answer4TextRu);
                                        }
                                        FFAppState().isStopped = true;
                                        safeSetState(() {});
                                        await actions.speakTextWithGoogleTTS(
                                          'test',
                                          'en-EN',
                                        );
                                        FFAppState().isStopped = false;
                                        safeSetState(() {});

                                        context.pushNamed('QandAChoice');
                                      }
                                    } else {
                                      if (FFAppState().locnum == 12) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              valueOrDefault<String>(
                                                () {
                                                  if (FFAppState()
                                                          .languagecode ==
                                                      'en') {
                                                    return 'Quest is Completed. Thanks. ';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'de') {
                                                    return 'Die Quest ist abgeschlossen. Danke.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'it') {
                                                    return 'La missione è completata. Grazie.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'fr') {
                                                    return 'La quête est terminée. Merci.';
                                                  } else if (FFAppState()
                                                          .languagecode ==
                                                      'ru') {
                                                    return 'Квест выполнен. Спасибо.';
                                                  } else {
                                                    return 'Quest is Completed. Thanks. ';
                                                  }
                                                }(),
                                                '1',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
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
                                      } else {
                                        FFAppState().isStopped = true;
                                        safeSetState(() {});
                                        await actions.speakTextWithGoogleTTS(
                                          'test',
                                          'en-EN',
                                        );
                                        FFAppState().isStopped = false;
                                        safeSetState(() {});

                                        context.pushNamed('DirectionsMap');
                                      }
                                    }
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '7tijo8ms' /* Continue */,
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
