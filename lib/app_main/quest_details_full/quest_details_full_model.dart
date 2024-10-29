import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'quest_details_full_widget.dart' show QuestDetailsFullWidget;
import 'package:flutter/material.dart';

class QuestDetailsFullModel extends FlutterFlowModel<QuestDetailsFullWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserordersRecord>? orderref;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
