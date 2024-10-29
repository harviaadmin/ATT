import '/components/drawer_menu_widget.dart';
import '/components/english_language_widget.dart';
import '/components/french_language_widget.dart';
import '/components/german_language_widget.dart';
import '/components/italian_language_widget.dart';
import '/components/russian_language_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_language_widget.dart' show SelectLanguageWidget;
import 'package:flutter/material.dart';

class SelectLanguageModel extends FlutterFlowModel<SelectLanguageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for EnglishLanguage component.
  late EnglishLanguageModel englishLanguageModel;
  // Model for ItalianLanguage component.
  late ItalianLanguageModel italianLanguageModel;
  // Model for FrenchLanguage component.
  late FrenchLanguageModel frenchLanguageModel;
  // Model for GermanLanguage component.
  late GermanLanguageModel germanLanguageModel;
  // Model for RussianLanguage component.
  late RussianLanguageModel russianLanguageModel;
  // Model for DrawerMenu component.
  late DrawerMenuModel drawerMenuModel;

  @override
  void initState(BuildContext context) {
    englishLanguageModel = createModel(context, () => EnglishLanguageModel());
    italianLanguageModel = createModel(context, () => ItalianLanguageModel());
    frenchLanguageModel = createModel(context, () => FrenchLanguageModel());
    germanLanguageModel = createModel(context, () => GermanLanguageModel());
    russianLanguageModel = createModel(context, () => RussianLanguageModel());
    drawerMenuModel = createModel(context, () => DrawerMenuModel());
  }

  @override
  void dispose() {
    englishLanguageModel.dispose();
    italianLanguageModel.dispose();
    frenchLanguageModel.dispose();
    germanLanguageModel.dispose();
    russianLanguageModel.dispose();
    drawerMenuModel.dispose();
  }
}
