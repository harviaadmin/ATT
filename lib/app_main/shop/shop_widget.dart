import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/custom_nav_store_widget.dart';
import '/components/drawer_menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'shop_model.dart';
export 'shop_model.dart';

class ShopWidget extends StatefulWidget {
  const ShopWidget({super.key});

  @override
  State<ShopWidget> createState() => _ShopWidgetState();
}

class _ShopWidgetState extends State<ShopWidget> with TickerProviderStateMixin {
  late ShopModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 40.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.8, 0.8),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
          leading: FlutterFlowIconButton(
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
          title: Text(
            FFLocalizations.of(context).getText(
              'sszkpybu' /* Shop */,
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
          child: SizedBox(
            height: double.infinity,
            child: Stack(
              children: [
                Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
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
                                  100.0,
                                ),
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewQuestRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewQuestRecord =
                                      listViewQuestRecordList[listViewIndex];
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'QuestDetailsFull',
                                          queryParameters: {
                                            'questid': serializeParam(
                                              listViewQuestRecord.questId,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 230.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.network(
                                              listViewQuestRecord.questImage,
                                            ).image,
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x250F1113),
                                              offset: Offset(
                                                0.0,
                                                1.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0x430F1113),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 12.0, 12.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  70.0,
                                                                  0.0),
                                                      child: Text(
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
                                                            .headlineMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  70.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          '${FFAppState().currencysymbol} ${FFAppState().exchangerate == 0.0 ? listViewQuestRecord.questPrice.toString() : ((listViewQuestRecord.questPrice * FFAppState().exchangerate).round()).toString()}',
                                                          '1',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .headlineMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  75.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          75.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  if (loggedIn ==
                                                                      true) {
                                                                    _model.orderref =
                                                                        await queryUserordersRecordOnce(
                                                                      queryBuilder: (userordersRecord) => userordersRecord
                                                                          .where(
                                                                            'user_user_id',
                                                                            isEqualTo:
                                                                                currentUserUid,
                                                                          )
                                                                          .where(
                                                                            'user_quest_id',
                                                                            isEqualTo:
                                                                                listViewQuestRecord.questId,
                                                                          ),
                                                                    );
                                                                    if (_model
                                                                            .orderref
                                                                            ?.length ==
                                                                        1) {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Quest Already Purchased',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              const Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );

                                                                      context.pushNamed(
                                                                          'Purchases');
                                                                    } else {
                                                                      context
                                                                          .pushNamed(
                                                                        'Checkout',
                                                                        queryParameters:
                                                                            {
                                                                          'questid':
                                                                              serializeParam(
                                                                            listViewQuestRecord.questId,
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    }
                                                                  } else {
                                                                    context.pushNamed(
                                                                        'Authentication');
                                                                  }

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                text: FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'hqxb1ptb' /* Add to Cart */,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.5,
                                                                  height: 44.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: const Color(
                                                                      0xFF827AE1),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                  elevation:
                                                                      2.0,
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation']!),
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
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.customNavStoreModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const CustomNavStoreWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
