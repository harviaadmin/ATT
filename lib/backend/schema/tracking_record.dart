import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackingRecord extends FirestoreRecord {
  TrackingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "currentLocation" field.
  LatLng? _currentLocation;
  LatLng? get currentLocation => _currentLocation;
  bool hasCurrentLocation() => _currentLocation != null;

  // "destination" field.
  LatLng? _destination;
  LatLng? get destination => _destination;
  bool hasDestination() => _destination != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _currentLocation = snapshotData['currentLocation'] as LatLng?;
    _destination = snapshotData['destination'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tracking');

  static Stream<TrackingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrackingRecord.fromSnapshot(s));

  static Future<TrackingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrackingRecord.fromSnapshot(s));

  static TrackingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrackingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrackingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrackingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrackingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrackingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrackingRecordData({
  DocumentReference? userRef,
  LatLng? currentLocation,
  LatLng? destination,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'currentLocation': currentLocation,
      'destination': destination,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrackingRecordDocumentEquality implements Equality<TrackingRecord> {
  const TrackingRecordDocumentEquality();

  @override
  bool equals(TrackingRecord? e1, TrackingRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.currentLocation == e2?.currentLocation &&
        e1?.destination == e2?.destination;
  }

  @override
  int hash(TrackingRecord? e) => const ListEquality()
      .hash([e?.userRef, e?.currentLocation, e?.destination]);

  @override
  bool isValidKey(Object? o) => o is TrackingRecord;
}
