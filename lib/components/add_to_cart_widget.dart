import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'add_to_cart_model.dart';
export 'add_to_cart_model.dart';

class AddToCartWidget extends StatefulWidget {
  const AddToCartWidget({super.key});

  @override
  State<AddToCartWidget> createState() => _AddToCartWidgetState();
}

class _AddToCartWidgetState extends State<AddToCartWidget> {
  late AddToCartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddToCartModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: FFLocalizations.of(context).getText(
        'vzs6erex' /* Unlock Game */,
      ),
      options: FFButtonOptions(
        width: 330.0,
        height: 50.0,
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).labelLarge.override(
              fontFamily: 'Readex Pro',
              color: Colors.white,
              letterSpacing: 0.0,
            ),
        elevation: 2.0,
      ),
    );
  }
}
