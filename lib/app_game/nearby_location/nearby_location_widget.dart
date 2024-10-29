import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'nearby_location_model.dart';
export 'nearby_location_model.dart';

class NearbyLocationWidget extends StatefulWidget {
  const NearbyLocationWidget({super.key});

  @override
  State<NearbyLocationWidget> createState() => _NearbyLocationWidgetState();
}

class _NearbyLocationWidgetState extends State<NearbyLocationWidget> {
  late NearbyLocationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NearbyLocationModel());

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
              Icons.arrow_back_outlined,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'gah1h6s6' /* Nearby Locations */,
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    StreamBuilder<List<NearbylocationsRecord>>(
                      stream: queryNearbylocationsRecord(
                        queryBuilder: (nearbylocationsRecord) =>
                            nearbylocationsRecord.where(
                          'location_id',
                          isEqualTo: FFAppState().locationid,
                        ),
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
                        List<NearbylocationsRecord>
                            listViewNearbylocationsRecordList = snapshot.data!;

                        return ListView.builder(
                          padding: const EdgeInsets.fromLTRB(
                            0,
                            0,
                            0,
                            25.0,
                          ),
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewNearbylocationsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewNearbylocationsRecord =
                                listViewNearbylocationsRecordList[
                                    listViewIndex];
                            return Container(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 30.0, 16.0, 12.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.network(
                                          listViewNearbylocationsRecord
                                              .nearLocationImage,
                                          width: double.infinity,
                                          height: 230.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF1F5F8),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'iwgm2km4' /* Nearby Location */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Text(
                                              () {
                                                if (FFAppState().languagecode ==
                                                    'de') {
                                                  return listViewNearbylocationsRecord
                                                      .nearLocationNameDe;
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'it') {
                                                  return listViewNearbylocationsRecord
                                                      .nearLocationNameIt;
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'fr') {
                                                  return listViewNearbylocationsRecord
                                                      .nearLocationNameFr;
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'ru') {
                                                  return listViewNearbylocationsRecord
                                                      .nearLocationNameRu;
                                                } else {
                                                  return listViewNearbylocationsRecord
                                                      .nearLocationName;
                                                }
                                              }(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF1F5F8),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                            ),
                                          ),
                                          child: Align(
                                            alignment: const AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 16.0, 16.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'wtornhcv' /* Description */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 16.0, 16.0, 16.0),
                                        child: Text(
                                          () {
                                            if (FFAppState().languagecode ==
                                                'de') {
                                              return listViewNearbylocationsRecord
                                                  .nearLocationDescriptionDe;
                                            } else if (FFAppState()
                                                    .languagecode ==
                                                'it') {
                                              return listViewNearbylocationsRecord
                                                  .nearLocationDescriptionIt;
                                            } else if (FFAppState()
                                                    .languagecode ==
                                                'fr') {
                                              return listViewNearbylocationsRecord
                                                  .nearLocationDescriptionFr;
                                            } else if (FFAppState()
                                                    .languagecode ==
                                                'ru') {
                                              return listViewNearbylocationsRecord
                                                  .nearLocationDescriptionRu;
                                            } else {
                                              return listViewNearbylocationsRecord
                                                  .nearLocationDescription;
                                            }
                                          }(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF1F5F8),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'w93ckcgs' /* Address */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 0.0),
                                            child: Text(
                                              () {
                                                if (FFAppState().languagecode ==
                                                    'de') {
                                                  return listViewNearbylocationsRecord
                                                      .nearLocationAddressDe;
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'it') {
                                                  return listViewNearbylocationsRecord
                                                      .nearLocationAddressIt;
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'fr') {
                                                  return listViewNearbylocationsRecord
                                                      .nearLocationAddressFr;
                                                } else if (FFAppState()
                                                        .languagecode ==
                                                    'ru') {
                                                  return listViewNearbylocationsRecord
                                                      .nearLocationAddressRu;
                                                } else {
                                                  return listViewNearbylocationsRecord
                                                      .nearLocationAddress;
                                                }
                                              }(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF1F5F8),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '83pnwnqp' /* Website */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 0.0),
                                            child: Text(
                                              listViewNearbylocationsRecord
                                                  .nearLocationWebsite,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
