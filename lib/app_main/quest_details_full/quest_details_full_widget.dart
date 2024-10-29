import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'quest_details_full_model.dart';
export 'quest_details_full_model.dart';

class QuestDetailsFullWidget extends StatefulWidget {
  const QuestDetailsFullWidget({
    super.key,
    required this.questid,
  });

  final String? questid;

  @override
  State<QuestDetailsFullWidget> createState() => _QuestDetailsFullWidgetState();
}

class _QuestDetailsFullWidgetState extends State<QuestDetailsFullWidget> {
  late QuestDetailsFullModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestDetailsFullModel());

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

    return StreamBuilder<List<QuestRecord>>(
      stream: queryQuestRecord(
        queryBuilder: (questRecord) => questRecord.where(
          'quest_id',
          isEqualTo: widget.questid,
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
        List<QuestRecord> questDetailsFullQuestRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final questDetailsFullQuestRecord =
            questDetailsFullQuestRecordList.isNotEmpty
                ? questDetailsFullQuestRecordList.first
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
                  context.safePop();
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'dxe07c8m' /* Quest Details */,
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
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    questDetailsFullQuestRecord!.questImage,
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
                                        return questDetailsFullQuestRecord
                                            .questNameDe;
                                      } else if (FFAppState().languagecode ==
                                          'it') {
                                        return questDetailsFullQuestRecord
                                            .questNameIt;
                                      } else if (FFAppState().languagecode ==
                                          'fr') {
                                        return questDetailsFullQuestRecord
                                            .questNameFr;
                                      } else if (FFAppState().languagecode ==
                                          'ru') {
                                        return questDetailsFullQuestRecord
                                            .questNameRu;
                                      } else {
                                        return questDetailsFullQuestRecord
                                            .questName;
                                      }
                                    }(),
                                    '1',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  '${FFAppState().currencysymbol} ${FFAppState().exchangerate == 0.0 ? questDetailsFullQuestRecord.questPrice.toString() : ((questDetailsFullQuestRecord.questPrice * FFAppState().exchangerate).round()).toString()}',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        fontSize: 16.0,
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
                                    'fgee4037' /* About the City */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
                                        return questDetailsFullQuestRecord
                                            .questDescDe;
                                      } else if (FFAppState().languagecode ==
                                          'it') {
                                        return questDetailsFullQuestRecord
                                            .questDescIt;
                                      } else if (FFAppState().languagecode ==
                                          'fr') {
                                        return questDetailsFullQuestRecord
                                            .questDescFr;
                                      } else if (FFAppState().languagecode ==
                                          'ru') {
                                        return questDetailsFullQuestRecord
                                            .questDescRu;
                                      } else {
                                        return questDetailsFullQuestRecord
                                            .questDesc;
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
                                    16.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '4qgktmzh' /* About the Quest */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
                                        return questDetailsFullQuestRecord
                                            .questGameDescDe;
                                      } else if (FFAppState().languagecode ==
                                          'it') {
                                        return questDetailsFullQuestRecord
                                            .questGameDescIt;
                                      } else if (FFAppState().languagecode ==
                                          'fr') {
                                        return questDetailsFullQuestRecord
                                            .questGameDescFr;
                                      } else if (FFAppState().languagecode ==
                                          'ru') {
                                        return questDetailsFullQuestRecord
                                            .questGameDescRu;
                                      } else {
                                        return questDetailsFullQuestRecord
                                            .questGameDesc;
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
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 1.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          offset: const Offset(
                                            0.0,
                                            1.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 16.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Container(
                                              width: 44.0,
                                              height: 44.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'zbh98odx' /* S */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        25.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    () {
                                                      if (FFAppState()
                                                              .languagecode ==
                                                          'en') {
                                                        return 'Starting Point: ${questDetailsFullQuestRecord.questStart}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'de') {
                                                        return 'Ausgangspunkt: ${questDetailsFullQuestRecord.questStartDe}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'it') {
                                                        return 'Punto di partenza: ${questDetailsFullQuestRecord.questStartIt}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'fr') {
                                                        return 'Point de départ: ${questDetailsFullQuestRecord.questStartFr}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'ru') {
                                                        return 'Начальная точка: ${questDetailsFullQuestRecord.questStartRu}';
                                                      } else {
                                                        return questDetailsFullQuestRecord
                                                            .questStart;
                                                      }
                                                    }(),
                                                    '1',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
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
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 1.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          offset: const Offset(
                                            0.0,
                                            1.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 16.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Container(
                                              width: 44.0,
                                              height: 44.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ikcktksd' /* E */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        25.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    () {
                                                      if (FFAppState()
                                                              .languagecode ==
                                                          'en') {
                                                        return 'Ending Point: ${questDetailsFullQuestRecord.questEnd}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'de') {
                                                        return 'Endpunkt: ${questDetailsFullQuestRecord.questEndDe}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'it') {
                                                        return 'Punto di arrivo: ${questDetailsFullQuestRecord.questEndIt}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'fr') {
                                                        return 'Point d\'arrivée: ${questDetailsFullQuestRecord.questEndFr}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'ru') {
                                                        return 'Конечная точка: ${questDetailsFullQuestRecord.questEndRu}';
                                                      } else {
                                                        return questDetailsFullQuestRecord
                                                            .questEnd;
                                                      }
                                                    }(),
                                                    '1',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
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
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 1.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          offset: const Offset(
                                            0.0,
                                            1.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 16.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Container(
                                              width: 44.0,
                                              height: 44.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFA020F0),
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  questDetailsFullQuestRecord
                                                      .questNumPlaces
                                                      .toString(),
                                                  '1',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        25.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'dhp3pdfj' /* Number of Places */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
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
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 200.0,
                                  child: CarouselSlider(
                                    items: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/bern-473772_1280.jpg',
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/cagetowerfountain.png',
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/lion.png',
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/Laderach%20store.webp',
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                    carouselController:
                                        _model.carouselController ??=
                                            CarouselSliderController(),
                                    options: CarouselOptions(
                                      initialPage: 1,
                                      viewportFraction: 0.5,
                                      disableCenter: true,
                                      enlargeCenterPage: true,
                                      enlargeFactor: 0.25,
                                      enableInfiniteScroll: true,
                                      scrollDirection: Axis.horizontal,
                                      autoPlay: true,
                                      autoPlayAnimationDuration:
                                          const Duration(milliseconds: 800),
                                      autoPlayInterval:
                                          const Duration(milliseconds: (800 + 4000)),
                                      autoPlayCurve: Curves.linear,
                                      pauseAutoPlayInFiniteScroll: true,
                                      onPageChanged: (index, _) =>
                                          _model.carouselCurrentIndex = index,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 1.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          offset: const Offset(
                                            0.0,
                                            1.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 16.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Container(
                                              width: 44.0,
                                              height: 44.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5pu2qkcv' /* D */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        25.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    () {
                                                      if (FFAppState()
                                                              .languagecode ==
                                                          'en') {
                                                        return 'Distance: ${questDetailsFullQuestRecord.questDistance}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'de') {
                                                        return 'Distanz: ${questDetailsFullQuestRecord.questDistance}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'it') {
                                                        return 'Distanza: ${questDetailsFullQuestRecord.questDistance}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'fr') {
                                                        return 'Distance: ${questDetailsFullQuestRecord.questDistance}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'ru') {
                                                        return 'Расстояние: ${questDetailsFullQuestRecord.questDistance}';
                                                      } else {
                                                        return questDetailsFullQuestRecord
                                                            .questDistance;
                                                      }
                                                    }(),
                                                    '1',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
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
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 1.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          offset: const Offset(
                                            0.0,
                                            1.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 16.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Container(
                                              width: 44.0,
                                              height: 44.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFEE606F),
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '0nvz8mn7' /* T */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        25.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    () {
                                                      if (FFAppState()
                                                              .languagecode ==
                                                          'en') {
                                                        return 'Time: ${questDetailsFullQuestRecord.questTime}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'de') {
                                                        return 'Zeit: ${questDetailsFullQuestRecord.questTime}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'it') {
                                                        return 'Tempo: ${questDetailsFullQuestRecord.questTime}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'fr') {
                                                        return 'Temps: ${questDetailsFullQuestRecord.questTime}';
                                                      } else if (FFAppState()
                                                              .languagecode ==
                                                          'ru') {
                                                        return 'Время: ${questDetailsFullQuestRecord.questTime}';
                                                      } else {
                                                        return questDetailsFullQuestRecord
                                                            .questTime;
                                                      }
                                                    }(),
                                                    '1',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
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
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (loggedIn == true) {
                                        _model.orderref =
                                            await queryUserordersRecordOnce(
                                          queryBuilder: (userordersRecord) =>
                                              userordersRecord
                                                  .where(
                                                    'user_user_id',
                                                    isEqualTo: currentUserUid,
                                                  )
                                                  .where(
                                                    'user_quest_id',
                                                    isEqualTo:
                                                        questDetailsFullQuestRecord
                                                            .questId,
                                                  ),
                                        );
                                        if (_model.orderref?.length == 1) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Quest Already Purchased',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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

                                          context.pushNamed('Purchases');
                                        } else {
                                          context.pushNamed(
                                            'Checkout',
                                            queryParameters: {
                                              'questid': serializeParam(
                                                questDetailsFullQuestRecord
                                                    .questId,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        }
                                      } else {
                                        context.pushNamed('Authentication');
                                      }

                                      safeSetState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'bxwj5hk0' /* Unlock Quest */,
                                    ),
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.8,
                                      height: 50.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ].addToEnd(const SizedBox(height: 100.0)),
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
