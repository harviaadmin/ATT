import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DirectionsRecord extends FirestoreRecord {
  DirectionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "direction_id" field.
  String? _directionId;
  String get directionId => _directionId ?? '';
  bool hasDirectionId() => _directionId != null;

  // "location_id" field.
  String? _locationId;
  String get locationId => _locationId ?? '';
  bool hasLocationId() => _locationId != null;

  // "direction_image" field.
  String? _directionImage;
  String get directionImage => _directionImage ?? '';
  bool hasDirectionImage() => _directionImage != null;

  // "direction_step" field.
  String? _directionStep;
  String get directionStep => _directionStep ?? '';
  bool hasDirectionStep() => _directionStep != null;

  // "direction_info" field.
  String? _directionInfo;
  String get directionInfo => _directionInfo ?? '';
  bool hasDirectionInfo() => _directionInfo != null;

  // "direction_sequence" field.
  int? _directionSequence;
  int get directionSequence => _directionSequence ?? 0;
  bool hasDirectionSequence() => _directionSequence != null;

  // "order_sequence" field.
  int? _orderSequence;
  int get orderSequence => _orderSequence ?? 0;
  bool hasOrderSequence() => _orderSequence != null;

  // "direction_step_de" field.
  String? _directionStepDe;
  String get directionStepDe => _directionStepDe ?? '';
  bool hasDirectionStepDe() => _directionStepDe != null;

  // "direction_step_it" field.
  String? _directionStepIt;
  String get directionStepIt => _directionStepIt ?? '';
  bool hasDirectionStepIt() => _directionStepIt != null;

  // "direction_step_fr" field.
  String? _directionStepFr;
  String get directionStepFr => _directionStepFr ?? '';
  bool hasDirectionStepFr() => _directionStepFr != null;

  // "direction_step_ru" field.
  String? _directionStepRu;
  String get directionStepRu => _directionStepRu ?? '';
  bool hasDirectionStepRu() => _directionStepRu != null;

  // "direction_info_de" field.
  String? _directionInfoDe;
  String get directionInfoDe => _directionInfoDe ?? '';
  bool hasDirectionInfoDe() => _directionInfoDe != null;

  // "direction_info_it" field.
  String? _directionInfoIt;
  String get directionInfoIt => _directionInfoIt ?? '';
  bool hasDirectionInfoIt() => _directionInfoIt != null;

  // "direction_info_fr" field.
  String? _directionInfoFr;
  String get directionInfoFr => _directionInfoFr ?? '';
  bool hasDirectionInfoFr() => _directionInfoFr != null;

  // "direction_info_ru" field.
  String? _directionInfoRu;
  String get directionInfoRu => _directionInfoRu ?? '';
  bool hasDirectionInfoRu() => _directionInfoRu != null;

  void _initializeFields() {
    _directionId = snapshotData['direction_id'] as String?;
    _locationId = snapshotData['location_id'] as String?;
    _directionImage = snapshotData['direction_image'] as String?;
    _directionStep = snapshotData['direction_step'] as String?;
    _directionInfo = snapshotData['direction_info'] as String?;
    _directionSequence = castToType<int>(snapshotData['direction_sequence']);
    _orderSequence = castToType<int>(snapshotData['order_sequence']);
    _directionStepDe = snapshotData['direction_step_de'] as String?;
    _directionStepIt = snapshotData['direction_step_it'] as String?;
    _directionStepFr = snapshotData['direction_step_fr'] as String?;
    _directionStepRu = snapshotData['direction_step_ru'] as String?;
    _directionInfoDe = snapshotData['direction_info_de'] as String?;
    _directionInfoIt = snapshotData['direction_info_it'] as String?;
    _directionInfoFr = snapshotData['direction_info_fr'] as String?;
    _directionInfoRu = snapshotData['direction_info_ru'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('directions');

  static Stream<DirectionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DirectionsRecord.fromSnapshot(s));

  static Future<DirectionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DirectionsRecord.fromSnapshot(s));

  static DirectionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DirectionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DirectionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DirectionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DirectionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DirectionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDirectionsRecordData({
  String? directionId,
  String? locationId,
  String? directionImage,
  String? directionStep,
  String? directionInfo,
  int? directionSequence,
  int? orderSequence,
  String? directionStepDe,
  String? directionStepIt,
  String? directionStepFr,
  String? directionStepRu,
  String? directionInfoDe,
  String? directionInfoIt,
  String? directionInfoFr,
  String? directionInfoRu,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'direction_id': directionId,
      'location_id': locationId,
      'direction_image': directionImage,
      'direction_step': directionStep,
      'direction_info': directionInfo,
      'direction_sequence': directionSequence,
      'order_sequence': orderSequence,
      'direction_step_de': directionStepDe,
      'direction_step_it': directionStepIt,
      'direction_step_fr': directionStepFr,
      'direction_step_ru': directionStepRu,
      'direction_info_de': directionInfoDe,
      'direction_info_it': directionInfoIt,
      'direction_info_fr': directionInfoFr,
      'direction_info_ru': directionInfoRu,
    }.withoutNulls,
  );

  return firestoreData;
}

class DirectionsRecordDocumentEquality implements Equality<DirectionsRecord> {
  const DirectionsRecordDocumentEquality();

  @override
  bool equals(DirectionsRecord? e1, DirectionsRecord? e2) {
    return e1?.directionId == e2?.directionId &&
        e1?.locationId == e2?.locationId &&
        e1?.directionImage == e2?.directionImage &&
        e1?.directionStep == e2?.directionStep &&
        e1?.directionInfo == e2?.directionInfo &&
        e1?.directionSequence == e2?.directionSequence &&
        e1?.orderSequence == e2?.orderSequence &&
        e1?.directionStepDe == e2?.directionStepDe &&
        e1?.directionStepIt == e2?.directionStepIt &&
        e1?.directionStepFr == e2?.directionStepFr &&
        e1?.directionStepRu == e2?.directionStepRu &&
        e1?.directionInfoDe == e2?.directionInfoDe &&
        e1?.directionInfoIt == e2?.directionInfoIt &&
        e1?.directionInfoFr == e2?.directionInfoFr &&
        e1?.directionInfoRu == e2?.directionInfoRu;
  }

  @override
  int hash(DirectionsRecord? e) => const ListEquality().hash([
        e?.directionId,
        e?.locationId,
        e?.directionImage,
        e?.directionStep,
        e?.directionInfo,
        e?.directionSequence,
        e?.orderSequence,
        e?.directionStepDe,
        e?.directionStepIt,
        e?.directionStepFr,
        e?.directionStepRu,
        e?.directionInfoDe,
        e?.directionInfoIt,
        e?.directionInfoFr,
        e?.directionInfoRu
      ]);

  @override
  bool isValidKey(Object? o) => o is DirectionsRecord;
}
