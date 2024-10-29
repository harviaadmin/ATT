// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MapStruct extends FFFirebaseStruct {
  MapStruct({
    String? subject,
    String? text,
    String? html,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _subject = subject,
        _text = text,
        _html = html,
        super(firestoreUtilData);

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  set subject(String? val) => _subject = val;

  bool hasSubject() => _subject != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "html" field.
  String? _html;
  String get html => _html ?? '';
  set html(String? val) => _html = val;

  bool hasHtml() => _html != null;

  static MapStruct fromMap(Map<String, dynamic> data) => MapStruct(
        subject: data['subject'] as String?,
        text: data['text'] as String?,
        html: data['html'] as String?,
      );

  static MapStruct? maybeFromMap(dynamic data) =>
      data is Map ? MapStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'subject': _subject,
        'text': _text,
        'html': _html,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'subject': serializeParam(
          _subject,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'html': serializeParam(
          _html,
          ParamType.String,
        ),
      }.withoutNulls;

  static MapStruct fromSerializableMap(Map<String, dynamic> data) => MapStruct(
        subject: deserializeParam(
          data['subject'],
          ParamType.String,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        html: deserializeParam(
          data['html'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MapStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MapStruct &&
        subject == other.subject &&
        text == other.text &&
        html == other.html;
  }

  @override
  int get hashCode => const ListEquality().hash([subject, text, html]);
}

MapStruct createMapStruct({
  String? subject,
  String? text,
  String? html,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MapStruct(
      subject: subject,
      text: text,
      html: html,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MapStruct? updateMapStruct(
  MapStruct? map, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    map
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMapStructData(
  Map<String, dynamic> firestoreData,
  MapStruct? map,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (map == null) {
    return;
  }
  if (map.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && map.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mapData = getMapFirestoreData(map, forFieldValue);
  final nestedData = mapData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = map.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMapFirestoreData(
  MapStruct? map, [
  bool forFieldValue = false,
]) {
  if (map == null) {
    return {};
  }
  final firestoreData = mapToFirestore(map.toMap());

  // Add any Firestore field values
  map.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMapListFirestoreData(
  List<MapStruct>? maps,
) =>
    maps?.map((e) => getMapFirestoreData(e, true)).toList() ?? [];
