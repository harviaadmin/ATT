import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'quest_location_check_model.dart';
export 'quest_location_check_model.dart';

class QuestLocationCheckWidget extends StatefulWidget {
  const QuestLocationCheckWidget({
    super.key,
    required this.questid,
    required this.locationid,
    required this.startlocation,
    required this.currentlocation,
  });

  final String? questid;
  final String? locationid;
  final LatLng? startlocation;
  final LatLng? currentlocation;

  @override
  State<QuestLocationCheckWidget> createState() =>
      _QuestLocationCheckWidgetState();
}

class _QuestLocationCheckWidgetState extends State<QuestLocationCheckWidget> {
  late QuestLocationCheckModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestLocationCheckModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().startlocation = FFAppState().fakegps;
      FFAppState().endlocation = widget.startlocation;
      safeSetState(() {});
      _model.distance = await actions.getDistance(
        FFAppState().startlocation!,
        FFAppState().endlocation!,
      );
      if (_model.distance! <= 50.0) {
        FFAppState().startgamebtnbg = FlutterFlowTheme.of(context).success;
        FFAppState().checkpass =
            'You are in close range to start the game. Press Start Game.';
        FFAppState().checkpassde =
            'Sie befinden sich in unmittelbarer Nähe, um das Spiel zu starten. Drücken Sie „Spiel starten“.';
        FFAppState().checkpassit =
            'Ti trovi a distanza ravvicinata per iniziare la partita. Premi Avvia partita.';
        FFAppState().checkpassfr =
            'Vous êtes à proximité pour démarrer le jeu. Appuyez sur Démarrer le jeu.';
        FFAppState().checkpassru =
            'Вы находитесь в близком расстоянии для начала игры. Нажмите «Начать игру».';
        safeSetState(() {});
      } else {
        FFAppState().startgamebtnbg = FlutterFlowTheme.of(context).alternate;
        FFAppState().checkfail =
            'The Challenge will unlock when you are in close range. Please move towards the starting point.';
        FFAppState().checkfailde =
            'Die Herausforderung wird freigeschaltet, wenn Sie sich in der Nähe befinden. Bitte gehen Sie zum Startpunkt.';
        FFAppState().checkfailit =
            'La sfida si sbloccherà quando sarai a distanza ravvicinata. Muoviti verso il punto di partenza.';
        FFAppState().checkfailfr =
            'Le défi se débloquera lorsque vous serez à proximité. Veuillez vous déplacer vers le point de départ.';
        FFAppState().checkfailru =
            'Испытание разблокируется, когда вы окажетесь на близком расстоянии. Пожалуйста, двигайтесь к начальной точке.';
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
          resizeToAvoidBottomInset: false,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: const Color(0xFF827AE1),
            automaticallyImplyLeading: false,
            title: Text(
              FFLocalizations.of(context).getText(
                '91tkinqz' /* Quest Location Check */,
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
                    if ((FFAppState().languagecode == 'de') &&
                        (FFAppState().distance <= 50.0)) {
                      await actions.speakTextWithGoogleTTS(
                        FFAppState().checkpassde,
                        FFAppState().ttslanguagecode,
                      );
                    } else if ((FFAppState().languagecode == 'it') &&
                        (FFAppState().distance <= 50.0)) {
                      await actions.speakTextWithGoogleTTS(
                        FFAppState().checkpassit,
                        FFAppState().ttslanguagecode,
                      );
                    } else if ((FFAppState().languagecode == 'fr') &&
                        (FFAppState().distance <= 50.0)) {
                      await actions.speakTextWithGoogleTTS(
                        FFAppState().checkpassfr,
                        FFAppState().ttslanguagecode,
                      );
                    } else if ((FFAppState().languagecode == 'ru') &&
                        (FFAppState().distance <= 50.0)) {
                      await actions.speakTextWithGoogleTTS(
                        FFAppState().checkpassru,
                        FFAppState().ttslanguagecode,
                      );
                    } else if ((FFAppState().languagecode == 'de') &&
                        (FFAppState().distance > 50.0)) {
                      await actions.speakTextWithGoogleTTS(
                        FFAppState().checkfailde,
                        FFAppState().ttslanguagecode,
                      );
                    } else if ((FFAppState().languagecode == 'it') &&
                        (FFAppState().distance > 50.0)) {
                      await actions.speakTextWithGoogleTTS(
                        FFAppState().checkfailit,
                        FFAppState().ttslanguagecode,
                      );
                    } else if ((FFAppState().languagecode == 'fr') &&
                        (FFAppState().distance > 50.0)) {
                      await actions.speakTextWithGoogleTTS(
                        FFAppState().checkfailfr,
                        FFAppState().ttslanguagecode,
                      );
                    } else if ((FFAppState().languagecode == 'ru') &&
                        (FFAppState().distance > 50.0)) {
                      await actions.speakTextWithGoogleTTS(
                        FFAppState().checkfailru,
                        FFAppState().ttslanguagecode,
                      );
                    } else {
                      await actions.speakTextWithGoogleTTS(
                        FFAppState().checkpass,
                        FFAppState().ttslanguagecode,
                      );
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
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(
                                      height: 20.0,
                                      thickness: 2.0,
                                      indent: 16.0,
                                      endIndent: 16.0,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.6,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 1.0),
                                        child: Stack(
                                          children: [
                                            Stack(
                                              children: [
                                                FlutterFlowGoogleMap(
                                                  controller: _model
                                                      .googleMapsController,
                                                  onCameraIdle: (latLng) =>
                                                      _model.googleMapsCenter =
                                                          latLng,
                                                  initialLocation: _model
                                                          .googleMapsCenter ??=
                                                      FFAppState()
                                                          .startlocation!,
                                                  markerColor:
                                                      GoogleMarkerColor.violet,
                                                  mapType: MapType.normal,
                                                  style:
                                                      GoogleMapStyle.standard,
                                                  initialZoom: 14.0,
                                                  allowInteraction: true,
                                                  allowZoom: true,
                                                  showZoomControls: true,
                                                  showLocation: false,
                                                  showCompass: false,
                                                  showMapToolbar: false,
                                                  showTraffic: false,
                                                  centerMapOnMarkerTap: true,
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
                            ),
                          ],
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                        ),
                        if (FFAppState().distance < 50.0)
                          Align(
                            alignment: const AlignmentDirectional(0.82, 0.96),
                            child: StreamBuilder<List<LocationsRecord>>(
                              stream: queryLocationsRecord(
                                queryBuilder: (locationsRecord) =>
                                    locationsRecord
                                        .where(
                                          'location_id',
                                          isEqualTo: widget.locationid,
                                        )
                                        .where(
                                          'location_sequence',
                                          isEqualTo: 1,
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<LocationsRecord>
                                    startGameLocationsRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final startGameLocationsRecord =
                                    startGameLocationsRecordList.isNotEmpty
                                        ? startGameLocationsRecordList.first
                                        : null;

                                return FFButtonWidget(
                                  onPressed: () async {
                                    FFAppState().locnum =
                                        startGameLocationsRecord!
                                            .locationSequence;
                                    FFAppState().locname =
                                        startGameLocationsRecord.locationName;
                                    FFAppState().locdesc =
                                        startGameLocationsRecord.locationDesc;
                                    FFAppState().locaddress =
                                        startGameLocationsRecord
                                            .locationAddress;
                                    FFAppState().locimage =
                                        startGameLocationsRecord.locationImage;
                                    FFAppState().currentquestid =
                                        startGameLocationsRecord.questId;
                                    FFAppState().dirname =
                                        startGameLocationsRecord.directionName;
                                    FFAppState().question =
                                        startGameLocationsRecord.question;
                                    FFAppState().answer =
                                        startGameLocationsRecord.correctAnswer;
                                    FFAppState().hint =
                                        startGameLocationsRecord.hint;
                                    FFAppState().hintimage =
                                        startGameLocationsRecord.hintImage;
                                    FFAppState().answer1text =
                                        startGameLocationsRecord.answer1Text;
                                    FFAppState().answer1image =
                                        startGameLocationsRecord.answer1Image;
                                    FFAppState().answer2text =
                                        startGameLocationsRecord.answer2Text;
                                    FFAppState().answer2image =
                                        startGameLocationsRecord.answer2Image;
                                    FFAppState().answer3text =
                                        startGameLocationsRecord.answer3Text;
                                    FFAppState().answer3image =
                                        startGameLocationsRecord.answer3Image;
                                    FFAppState().answer4text =
                                        startGameLocationsRecord.answer4Text;
                                    FFAppState().answer4image =
                                        startGameLocationsRecord.answer4Image;
                                    FFAppState().locationid =
                                        startGameLocationsRecord.locationId;
                                    FFAppState().questiontype =
                                        startGameLocationsRecord.questionType;
                                    FFAppState().questionimage =
                                        startGameLocationsRecord.questionImage;
                                    FFAppState().dirchoice =
                                        startGameLocationsRecord
                                            .directionChoice;
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
                                    '6wlwpxwq' /* Start Game */,
                                  ),
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.5,
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FFAppState().startgamebtnbg,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
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
                                );
                              },
                            ),
                          ),
                        Align(
                          alignment: const AlignmentDirectional(-0.94, 0.97),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().isStopped = true;
                              safeSetState(() {});
                              await actions.speakTextWithGoogleTTS(
                                'test',
                                'en-EN',
                              );
                              FFAppState().isStopped = false;
                              safeSetState(() {});

                              context.pushNamed('Purchases');
                            },
                            text: FFLocalizations.of(context).getText(
                              '1zcg5vm3' /* Back */,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF827AE1),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
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
                        Align(
                          alignment: const AlignmentDirectional(-0.95, 0.64),
                          child: Text(
                            (_model.distance!).toStringAsFixed(2),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.79),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                      child: Text(
                        () {
                          if ((FFAppState().languagecode == 'de') &&
                              (FFAppState().distance <= 50.0)) {
                            return FFAppState().checkpassde;
                          } else if ((FFAppState().languagecode == 'it') &&
                              (FFAppState().distance <= 50.0)) {
                            return FFAppState().checkpassit;
                          } else if ((FFAppState().languagecode == 'fr') &&
                              (FFAppState().distance <= 50.0)) {
                            return FFAppState().checkpassfr;
                          } else if ((FFAppState().languagecode == 'ru') &&
                              (FFAppState().distance <= 50.0)) {
                            return FFAppState().checkpassru;
                          } else if ((FFAppState().languagecode == 'de') &&
                              (FFAppState().distance > 50.0)) {
                            return FFAppState().checkfailde;
                          } else if ((FFAppState().languagecode == 'it') &&
                              (FFAppState().distance > 50.0)) {
                            return FFAppState().checkfailit;
                          } else if ((FFAppState().languagecode == 'fr') &&
                              (FFAppState().distance > 50.0)) {
                            return FFAppState().checkfailfr;
                          } else if ((FFAppState().languagecode == 'ru') &&
                              (FFAppState().distance > 50.0)) {
                            return FFAppState().checkfailru;
                          } else if ((FFAppState().languagecode == 'en') &&
                              (FFAppState().distance > 50.0)) {
                            return FFAppState().checkfail;
                          } else {
                            return FFAppState().checkpass;
                          }
                        }(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
