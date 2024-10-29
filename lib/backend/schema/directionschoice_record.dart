import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DirectionschoiceRecord extends FirestoreRecord {
  DirectionschoiceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "location_id" field.
  String? _locationId;
  String get locationId => _locationId ?? '';
  bool hasLocationId() => _locationId != null;

  // "choice" field.
  String? _choice;
  String get choice => _choice ?? '';
  bool hasChoice() => _choice != null;

  // "directions" field.
  List<int>? _directions;
  List<int> get directions => _directions ?? const [];
  bool hasDirections() => _directions != null;

  void _initializeFields() {
    _locationId = snapshotData['location_id'] as String?;
    _choice = snapshotData['choice'] as String?;
    _directions = getDataList(snapshotData['directions']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('directionschoice');

  static Stream<DirectionschoiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DirectionschoiceRecord.fromSnapshot(s));

  static Future<DirectionschoiceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DirectionschoiceRecord.fromSnapshot(s));

  static DirectionschoiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DirectionschoiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DirectionschoiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DirectionschoiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DirectionschoiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DirectionschoiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDirectionschoiceRecordData({
  String? locationId,
  String? choice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location_id': locationId,
      'choice': choice,
    }.withoutNulls,
  );

  return firestoreData;
}

class DirectionschoiceRecordDocumentEquality
    implements Equality<DirectionschoiceRecord> {
  const DirectionschoiceRecordDocumentEquality();

  @override
  bool equals(DirectionschoiceRecord? e1, DirectionschoiceRecord? e2) {
    const listEquality = ListEquality();
    return e1?.locationId == e2?.locationId &&
        e1?.choice == e2?.choice &&
        listEquality.equals(e1?.directions, e2?.directions);
  }

  @override
  int hash(DirectionschoiceRecord? e) =>
      const ListEquality().hash([e?.locationId, e?.choice, e?.directions]);

  @override
  bool isValidKey(Object? o) => o is DirectionschoiceRecord;
}
