import '/auth/base_auth_user_provider.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/custom_nav_home_widget.dart';
import '/components/drawer_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'start_model.dart';
export 'start_model.dart';

class StartWidget extends StatefulWidget {
  const StartWidget({super.key});

  @override
  State<StartWidget> createState() => _StartWidgetState();
}

class _StartWidgetState extends State<StartWidget> {
  late StartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.ipaddress = await GetIpaddressCall.call();

      _model.getCurrency = await GetCurrencyCall.call(
        ipaddress: GetIpaddressCall.ipaddress(
          (_model.ipaddress?.jsonBody ?? ''),
        ),
        baseCurrency: 'CHF',
      );

      if ((_model.getCurrency?.succeeded ?? true)) {
        FFAppState().currencycode = GetCurrencyCall.currencycode(
          (_model.getCurrency?.jsonBody ?? ''),
        )!;
        FFAppState().currencysymbol = GetCurrencyCall.currencysymbol(
          (_model.getCurrency?.jsonBody ?? ''),
        )!;
        FFAppState().exchangerate = GetCurrencyCall.exchange(
          (_model.getCurrency?.jsonBody ?? ''),
        )!;
        safeSetState(() {});
      } else {
        FFAppState().currencycode = 'CHF';
        FFAppState().currencysymbol = 'Fr';
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F5F8),
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.drawerMenuModel,
            updateCallback: () => safeSetState(() {}),
            child: const DrawerMenuWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFF827AE1),
          automaticallyImplyLeading: false,
          leading: Visibility(
            visible: loggedIn == true,
            child: FlutterFlowIconButton(
              borderColor: const Color(0xFF827AE1),
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: const Color(0xFF827AE1),
              icon: Icon(
                Icons.menu,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
              onPressed: () async {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'cuuvs4if' /* Home */,
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
                  Icons.flag,
                  color: FlutterFlowTheme.of(context).warning,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed('SelectLanguage');
                },
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: SizedBox(
              height: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              StreamBuilder<List<QuestRecord>>(
                                stream: queryQuestRecord(),
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
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<QuestRecord> listViewQuestRecordList =
                                      snapshot.data!;

                                  return ListView.builder(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      0,
                                      75.0,
                                    ),
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listViewQuestRecordList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewQuestRecord =
                                          listViewQuestRecordList[
                                              listViewIndex];
                                      return Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFF1F5F8),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 8.0, 16.0, 12.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      'QuestDetailsFull',
                                                      queryParameters: {
                                                        'questid':
                                                            serializeParam(
                                                          listViewQuestRecord
                                                              .questId,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    child: Image.network(
                                                      listViewQuestRecord
                                                          .questImage,
                                                      width: double.infinity,
                                                      height: 230.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 4.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      () {
                                                        if (FFAppState()
                                                                .languagecode ==
                                                            'de') {
                                                          return listViewQuestRecord
                                                              .questNameDe;
                                                        } else if (FFAppState()
                                                                .languagecode ==
                                                            'it') {
                                                          return listViewQuestRecord
                                                              .questNameIt;
                                                        } else if (FFAppState()
                                                                .languagecode ==
                                                            'fr') {
                                                          return listViewQuestRecord
                                                              .questNameFr;
                                                        } else if (FFAppState()
                                                                .languagecode ==
                                                            'ru') {
                                                          return listViewQuestRecord
                                                              .questNameRu;
                                                        } else {
                                                          return listViewQuestRecord
                                                              .questName;
                                                        }
                                                      }(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '${FFAppState().currencysymbol} ${FFAppState().exchangerate == 0.0 ? listViewQuestRecord.questPrice.toString() : ((double questprice, double exchangerate, String result) {
                                                            return result =
                                                                (questprice *
                                                                        exchangerate)
                                                                    .toStringAsFixed(
                                                                        2);
                                                          }(listViewQuestRecord.questPrice, FFAppState().exchangerate, ''))}',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 4.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Total Distane: ${listViewQuestRecord.questDistance}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y2tkc6v9' /* 4.25 */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
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
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.customNavHomeModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const CustomNavHomeWidget(),
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
