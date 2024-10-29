import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'directions_map_model.dart';
export 'directions_map_model.dart';

class DirectionsMapWidget extends StatefulWidget {
  const DirectionsMapWidget({super.key});

  @override
  State<DirectionsMapWidget> createState() => _DirectionsMapWidgetState();
}

class _DirectionsMapWidgetState extends State<DirectionsMapWidget> {
  late DirectionsMapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DirectionsMapModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

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
            backgroundColor: const Color(0xFFF1F5F8),
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
        List<LocationsRecord> directionsMapLocationsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final directionsMapLocationsRecord =
            directionsMapLocationsRecordList.isNotEmpty
                ? directionsMapLocationsRecordList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFFF1F5F8),
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
                  'd912mna8' /* Directions Map */,
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
            ),
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-0.06, 0.12),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().locnum = FFAppState().locnum + 1;
                              safeSetState(() {});

                              context.pushNamed('LocationDetails');
                            },
                            text: FFLocalizations.of(context).getText(
                              'txt3r8l2' /* Next Location */,
                            ),
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF827AE1),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.13, -0.16),
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
                                  await actions.openGoogleDirections(
                                    buttonLocationsRecord?.locationStartGps,
                                    buttonLocationsRecord?.locationEndGps,
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  'p3g8n11q' /* Launch Directions Map */,
                                ),
                                options: FFButtonOptions(
                                  height: 50.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF827AE1),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                            child: Image.network(
                              directionsMapLocationsRecord!.locationImage,
                              width: double.infinity,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.1, -0.31),
                          child: Text(
                            valueOrDefault<String>(
                              () {
                                if (FFAppState().languagecode == 'de') {
                                  return directionsMapLocationsRecord
                                      .directionNameDe;
                                } else if (FFAppState().languagecode == 'it') {
                                  return directionsMapLocationsRecord
                                      .directionNameIt;
                                } else if (FFAppState().languagecode == 'fr') {
                                  return directionsMapLocationsRecord
                                      .directionNameFr;
                                } else if (FFAppState().languagecode == 'ru') {
                                  return directionsMapLocationsRecord
                                      .directionNameRu;
                                } else {
                                  return directionsMapLocationsRecord
                                      .directionName;
                                }
                              }(),
                              '1',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
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
