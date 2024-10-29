import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestRecord extends FirestoreRecord {
  QuestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "quest_name" field.
  String? _questName;
  String get questName => _questName ?? '';
  bool hasQuestName() => _questName != null;

  // "quest_desc" field.
  String? _questDesc;
  String get questDesc => _questDesc ?? '';
  bool hasQuestDesc() => _questDesc != null;

  // "quest_id" field.
  String? _questId;
  String get questId => _questId ?? '';
  bool hasQuestId() => _questId != null;

  // "quest_start" field.
  String? _questStart;
  String get questStart => _questStart ?? '';
  bool hasQuestStart() => _questStart != null;

  // "quest_end" field.
  String? _questEnd;
  String get questEnd => _questEnd ?? '';
  bool hasQuestEnd() => _questEnd != null;

  // "quest_time" field.
  String? _questTime;
  String get questTime => _questTime ?? '';
  bool hasQuestTime() => _questTime != null;

  // "quest_distance" field.
  String? _questDistance;
  String get questDistance => _questDistance ?? '';
  bool hasQuestDistance() => _questDistance != null;

  // "quest_game_desc" field.
  String? _questGameDesc;
  String get questGameDesc => _questGameDesc ?? '';
  bool hasQuestGameDesc() => _questGameDesc != null;

  // "quest_image" field.
  String? _questImage;
  String get questImage => _questImage ?? '';
  bool hasQuestImage() => _questImage != null;

  // "quest_price" field.
  double? _questPrice;
  double get questPrice => _questPrice ?? 0.0;
  bool hasQuestPrice() => _questPrice != null;

  // "quest_num_places" field.
  int? _questNumPlaces;
  int get questNumPlaces => _questNumPlaces ?? 0;
  bool hasQuestNumPlaces() => _questNumPlaces != null;

  // "quest_price_euro" field.
  double? _questPriceEuro;
  double get questPriceEuro => _questPriceEuro ?? 0.0;
  bool hasQuestPriceEuro() => _questPriceEuro != null;

  // "quest_name_de" field.
  String? _questNameDe;
  String get questNameDe => _questNameDe ?? '';
  bool hasQuestNameDe() => _questNameDe != null;

  // "quest_desc_de" field.
  String? _questDescDe;
  String get questDescDe => _questDescDe ?? '';
  bool hasQuestDescDe() => _questDescDe != null;

  // "quest_game_desc_de" field.
  String? _questGameDescDe;
  String get questGameDescDe => _questGameDescDe ?? '';
  bool hasQuestGameDescDe() => _questGameDescDe != null;

  // "quest_name_it" field.
  String? _questNameIt;
  String get questNameIt => _questNameIt ?? '';
  bool hasQuestNameIt() => _questNameIt != null;

  // "quest_desc_it" field.
  String? _questDescIt;
  String get questDescIt => _questDescIt ?? '';
  bool hasQuestDescIt() => _questDescIt != null;

  // "quest_game_desc_it" field.
  String? _questGameDescIt;
  String get questGameDescIt => _questGameDescIt ?? '';
  bool hasQuestGameDescIt() => _questGameDescIt != null;

  // "quest_name_fr" field.
  String? _questNameFr;
  String get questNameFr => _questNameFr ?? '';
  bool hasQuestNameFr() => _questNameFr != null;

  // "quest_desc_fr" field.
  String? _questDescFr;
  String get questDescFr => _questDescFr ?? '';
  bool hasQuestDescFr() => _questDescFr != null;

  // "quest_game_desc_fr" field.
  String? _questGameDescFr;
  String get questGameDescFr => _questGameDescFr ?? '';
  bool hasQuestGameDescFr() => _questGameDescFr != null;

  // "quest_name_ru" field.
  String? _questNameRu;
  String get questNameRu => _questNameRu ?? '';
  bool hasQuestNameRu() => _questNameRu != null;

  // "quest_desc_ru" field.
  String? _questDescRu;
  String get questDescRu => _questDescRu ?? '';
  bool hasQuestDescRu() => _questDescRu != null;

  // "quest_game_desc_ru" field.
  String? _questGameDescRu;
  String get questGameDescRu => _questGameDescRu ?? '';
  bool hasQuestGameDescRu() => _questGameDescRu != null;

  // "quest_start_de" field.
  String? _questStartDe;
  String get questStartDe => _questStartDe ?? '';
  bool hasQuestStartDe() => _questStartDe != null;

  // "quest_end_de" field.
  String? _questEndDe;
  String get questEndDe => _questEndDe ?? '';
  bool hasQuestEndDe() => _questEndDe != null;

  // "quest_start_it" field.
  String? _questStartIt;
  String get questStartIt => _questStartIt ?? '';
  bool hasQuestStartIt() => _questStartIt != null;

  // "quest_end_it" field.
  String? _questEndIt;
  String get questEndIt => _questEndIt ?? '';
  bool hasQuestEndIt() => _questEndIt != null;

  // "quest_start_fr" field.
  String? _questStartFr;
  String get questStartFr => _questStartFr ?? '';
  bool hasQuestStartFr() => _questStartFr != null;

  // "quest_end_fr" field.
  String? _questEndFr;
  String get questEndFr => _questEndFr ?? '';
  bool hasQuestEndFr() => _questEndFr != null;

  // "quest_start_ru" field.
  String? _questStartRu;
  String get questStartRu => _questStartRu ?? '';
  bool hasQuestStartRu() => _questStartRu != null;

  // "quest_end_ru" field.
  String? _questEndRu;
  String get questEndRu => _questEndRu ?? '';
  bool hasQuestEndRu() => _questEndRu != null;

  // "quest_mode" field.
  String? _questMode;
  String get questMode => _questMode ?? '';
  bool hasQuestMode() => _questMode != null;

  void _initializeFields() {
    _questName = snapshotData['quest_name'] as String?;
    _questDesc = snapshotData['quest_desc'] as String?;
    _questId = snapshotData['quest_id'] as String?;
    _questStart = snapshotData['quest_start'] as String?;
    _questEnd = snapshotData['quest_end'] as String?;
    _questTime = snapshotData['quest_time'] as String?;
    _questDistance = snapshotData['quest_distance'] as String?;
    _questGameDesc = snapshotData['quest_game_desc'] as String?;
    _questImage = snapshotData['quest_image'] as String?;
    _questPrice = castToType<double>(snapshotData['quest_price']);
    _questNumPlaces = castToType<int>(snapshotData['quest_num_places']);
    _questPriceEuro = castToType<double>(snapshotData['quest_price_euro']);
    _questNameDe = snapshotData['quest_name_de'] as String?;
    _questDescDe = snapshotData['quest_desc_de'] as String?;
    _questGameDescDe = snapshotData['quest_game_desc_de'] as String?;
    _questNameIt = snapshotData['quest_name_it'] as String?;
    _questDescIt = snapshotData['quest_desc_it'] as String?;
    _questGameDescIt = snapshotData['quest_game_desc_it'] as String?;
    _questNameFr = snapshotData['quest_name_fr'] as String?;
    _questDescFr = snapshotData['quest_desc_fr'] as String?;
    _questGameDescFr = snapshotData['quest_game_desc_fr'] as String?;
    _questNameRu = snapshotData['quest_name_ru'] as String?;
    _questDescRu = snapshotData['quest_desc_ru'] as String?;
    _questGameDescRu = snapshotData['quest_game_desc_ru'] as String?;
    _questStartDe = snapshotData['quest_start_de'] as String?;
    _questEndDe = snapshotData['quest_end_de'] as String?;
    _questStartIt = snapshotData['quest_start_it'] as String?;
    _questEndIt = snapshotData['quest_end_it'] as String?;
    _questStartFr = snapshotData['quest_start_fr'] as String?;
    _questEndFr = snapshotData['quest_end_fr'] as String?;
    _questStartRu = snapshotData['quest_start_ru'] as String?;
    _questEndRu = snapshotData['quest_end_ru'] as String?;
    _questMode = snapshotData['quest_mode'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quest');

  static Stream<QuestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestRecord.fromSnapshot(s));

  static Future<QuestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestRecord.fromSnapshot(s));

  static QuestRecord fromSnapshot(DocumentSnapshot snapshot) => QuestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestRecordData({
  String? questName,
  String? questDesc,
  String? questId,
  String? questStart,
  String? questEnd,
  String? questTime,
  String? questDistance,
  String? questGameDesc,
  String? questImage,
  double? questPrice,
  int? questNumPlaces,
  double? questPriceEuro,
  String? questNameDe,
  String? questDescDe,
  String? questGameDescDe,
  String? questNameIt,
  String? questDescIt,
  String? questGameDescIt,
  String? questNameFr,
  String? questDescFr,
  String? questGameDescFr,
  String? questNameRu,
  String? questDescRu,
  String? questGameDescRu,
  String? questStartDe,
  String? questEndDe,
  String? questStartIt,
  String? questEndIt,
  String? questStartFr,
  String? questEndFr,
  String? questStartRu,
  String? questEndRu,
  String? questMode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'quest_name': questName,
      'quest_desc': questDesc,
      'quest_id': questId,
      'quest_start': questStart,
      'quest_end': questEnd,
      'quest_time': questTime,
      'quest_distance': questDistance,
      'quest_game_desc': questGameDesc,
      'quest_image': questImage,
      'quest_price': questPrice,
      'quest_num_places': questNumPlaces,
      'quest_price_euro': questPriceEuro,
      'quest_name_de': questNameDe,
      'quest_desc_de': questDescDe,
      'quest_game_desc_de': questGameDescDe,
      'quest_name_it': questNameIt,
      'quest_desc_it': questDescIt,
      'quest_game_desc_it': questGameDescIt,
      'quest_name_fr': questNameFr,
      'quest_desc_fr': questDescFr,
      'quest_game_desc_fr': questGameDescFr,
      'quest_name_ru': questNameRu,
      'quest_desc_ru': questDescRu,
      'quest_game_desc_ru': questGameDescRu,
      'quest_start_de': questStartDe,
      'quest_end_de': questEndDe,
      'quest_start_it': questStartIt,
      'quest_end_it': questEndIt,
      'quest_start_fr': questStartFr,
      'quest_end_fr': questEndFr,
      'quest_start_ru': questStartRu,
      'quest_end_ru': questEndRu,
      'quest_mode': questMode,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestRecordDocumentEquality implements Equality<QuestRecord> {
  const QuestRecordDocumentEquality();

  @override
  bool equals(QuestRecord? e1, QuestRecord? e2) {
    return e1?.questName == e2?.questName &&
        e1?.questDesc == e2?.questDesc &&
        e1?.questId == e2?.questId &&
        e1?.questStart == e2?.questStart &&
        e1?.questEnd == e2?.questEnd &&
        e1?.questTime == e2?.questTime &&
        e1?.questDistance == e2?.questDistance &&
        e1?.questGameDesc == e2?.questGameDesc &&
        e1?.questImage == e2?.questImage &&
        e1?.questPrice == e2?.questPrice &&
        e1?.questNumPlaces == e2?.questNumPlaces &&
        e1?.questPriceEuro == e2?.questPriceEuro &&
        e1?.questNameDe == e2?.questNameDe &&
        e1?.questDescDe == e2?.questDescDe &&
        e1?.questGameDescDe == e2?.questGameDescDe &&
        e1?.questNameIt == e2?.questNameIt &&
        e1?.questDescIt == e2?.questDescIt &&
        e1?.questGameDescIt == e2?.questGameDescIt &&
        e1?.questNameFr == e2?.questNameFr &&
        e1?.questDescFr == e2?.questDescFr &&
        e1?.questGameDescFr == e2?.questGameDescFr &&
        e1?.questNameRu == e2?.questNameRu &&
        e1?.questDescRu == e2?.questDescRu &&
        e1?.questGameDescRu == e2?.questGameDescRu &&
        e1?.questStartDe == e2?.questStartDe &&
        e1?.questEndDe == e2?.questEndDe &&
        e1?.questStartIt == e2?.questStartIt &&
        e1?.questEndIt == e2?.questEndIt &&
        e1?.questStartFr == e2?.questStartFr &&
        e1?.questEndFr == e2?.questEndFr &&
        e1?.questStartRu == e2?.questStartRu &&
        e1?.questEndRu == e2?.questEndRu &&
        e1?.questMode == e2?.questMode;
  }

  @override
  int hash(QuestRecord? e) => const ListEquality().hash([
        e?.questName,
        e?.questDesc,
        e?.questId,
        e?.questStart,
        e?.questEnd,
        e?.questTime,
        e?.questDistance,
        e?.questGameDesc,
        e?.questImage,
        e?.questPrice,
        e?.questNumPlaces,
        e?.questPriceEuro,
        e?.questNameDe,
        e?.questDescDe,
        e?.questGameDescDe,
        e?.questNameIt,
        e?.questDescIt,
        e?.questGameDescIt,
        e?.questNameFr,
        e?.questDescFr,
        e?.questGameDescFr,
        e?.questNameRu,
        e?.questDescRu,
        e?.questGameDescRu,
        e?.questStartDe,
        e?.questEndDe,
        e?.questStartIt,
        e?.questEndIt,
        e?.questStartFr,
        e?.questEndFr,
        e?.questStartRu,
        e?.questEndRu,
        e?.questMode
      ]);

  @override
  bool isValidKey(Object? o) => o is QuestRecord;
}
