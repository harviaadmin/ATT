import '/components/custom_nav_profile_widget.dart';
import '/components/drawer_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'order_confirm_model.dart';
export 'order_confirm_model.dart';

class OrderConfirmWidget extends StatefulWidget {
  const OrderConfirmWidget({
    super.key,
    required this.orderid,
  });

  final String? orderid;

  @override
  State<OrderConfirmWidget> createState() => _OrderConfirmWidgetState();
}

class _OrderConfirmWidgetState extends State<OrderConfirmWidget> {
  late OrderConfirmModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderConfirmModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
              '0rokvnbx' /* Order Confirmation */,
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
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Icon(
                      Icons.check_circle_outline_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 80.0,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.orderid,
                        '1',
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 16.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'w1045338' /* Order Confirmed! */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(50.0, 10.0, 50.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'bsjtwkbg' /* Thank You For Your Order.    A... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(32.0, 50.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('Purchases');
                        },
                        text: FFLocalizations.of(context).getText(
                          'sq2wbp58' /* My Purchases */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 3.0,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.customNavProfileModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const CustomNavProfileWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
