import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NearbylocationsRecord extends FirestoreRecord {
  NearbylocationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "near_location_id" field.
  String? _nearLocationId;
  String get nearLocationId => _nearLocationId ?? '';
  bool hasNearLocationId() => _nearLocationId != null;

  // "location_id" field.
  String? _locationId;
  String get locationId => _locationId ?? '';
  bool hasLocationId() => _locationId != null;

  // "near_location_name" field.
  String? _nearLocationName;
  String get nearLocationName => _nearLocationName ?? '';
  bool hasNearLocationName() => _nearLocationName != null;

  // "near_location_description" field.
  String? _nearLocationDescription;
  String get nearLocationDescription => _nearLocationDescription ?? '';
  bool hasNearLocationDescription() => _nearLocationDescription != null;

  // "near_location_website" field.
  String? _nearLocationWebsite;
  String get nearLocationWebsite => _nearLocationWebsite ?? '';
  bool hasNearLocationWebsite() => _nearLocationWebsite != null;

  // "near_location_image" field.
  String? _nearLocationImage;
  String get nearLocationImage => _nearLocationImage ?? '';
  bool hasNearLocationImage() => _nearLocationImage != null;

  // "near_location_address" field.
  String? _nearLocationAddress;
  String get nearLocationAddress => _nearLocationAddress ?? '';
  bool hasNearLocationAddress() => _nearLocationAddress != null;

  // "near_location_name_de" field.
  String? _nearLocationNameDe;
  String get nearLocationNameDe => _nearLocationNameDe ?? '';
  bool hasNearLocationNameDe() => _nearLocationNameDe != null;

  // "near_location_name_it" field.
  String? _nearLocationNameIt;
  String get nearLocationNameIt => _nearLocationNameIt ?? '';
  bool hasNearLocationNameIt() => _nearLocationNameIt != null;

  // "near_location_name_fr" field.
  String? _nearLocationNameFr;
  String get nearLocationNameFr => _nearLocationNameFr ?? '';
  bool hasNearLocationNameFr() => _nearLocationNameFr != null;

  // "near_location_name_ru" field.
  String? _nearLocationNameRu;
  String get nearLocationNameRu => _nearLocationNameRu ?? '';
  bool hasNearLocationNameRu() => _nearLocationNameRu != null;

  // "near_location_description_de" field.
  String? _nearLocationDescriptionDe;
  String get nearLocationDescriptionDe => _nearLocationDescriptionDe ?? '';
  bool hasNearLocationDescriptionDe() => _nearLocationDescriptionDe != null;

  // "near_location_description_it" field.
  String? _nearLocationDescriptionIt;
  String get nearLocationDescriptionIt => _nearLocationDescriptionIt ?? '';
  bool hasNearLocationDescriptionIt() => _nearLocationDescriptionIt != null;

  // "near_location_description_fr" field.
  String? _nearLocationDescriptionFr;
  String get nearLocationDescriptionFr => _nearLocationDescriptionFr ?? '';
  bool hasNearLocationDescriptionFr() => _nearLocationDescriptionFr != null;

  // "near_location_description_ru" field.
  String? _nearLocationDescriptionRu;
  String get nearLocationDescriptionRu => _nearLocationDescriptionRu ?? '';
  bool hasNearLocationDescriptionRu() => _nearLocationDescriptionRu != null;

  // "near_location_address_de" field.
  String? _nearLocationAddressDe;
  String get nearLocationAddressDe => _nearLocationAddressDe ?? '';
  bool hasNearLocationAddressDe() => _nearLocationAddressDe != null;

  // "near_location_address_it" field.
  String? _nearLocationAddressIt;
  String get nearLocationAddressIt => _nearLocationAddressIt ?? '';
  bool hasNearLocationAddressIt() => _nearLocationAddressIt != null;

  // "near_location_address_fr" field.
  String? _nearLocationAddressFr;
  String get nearLocationAddressFr => _nearLocationAddressFr ?? '';
  bool hasNearLocationAddressFr() => _nearLocationAddressFr != null;

  // "near_location_address_ru" field.
  String? _nearLocationAddressRu;
  String get nearLocationAddressRu => _nearLocationAddressRu ?? '';
  bool hasNearLocationAddressRu() => _nearLocationAddressRu != null;

  void _initializeFields() {
    _nearLocationId = snapshotData['near_location_id'] as String?;
    _locationId = snapshotData['location_id'] as String?;
    _nearLocationName = snapshotData['near_location_name'] as String?;
    _nearLocationDescription =
        snapshotData['near_location_description'] as String?;
    _nearLocationWebsite = snapshotData['near_location_website'] as String?;
    _nearLocationImage = snapshotData['near_location_image'] as String?;
    _nearLocationAddress = snapshotData['near_location_address'] as String?;
    _nearLocationNameDe = snapshotData['near_location_name_de'] as String?;
    _nearLocationNameIt = snapshotData['near_location_name_it'] as String?;
    _nearLocationNameFr = snapshotData['near_location_name_fr'] as String?;
    _nearLocationNameRu = snapshotData['near_location_name_ru'] as String?;
    _nearLocationDescriptionDe =
        snapshotData['near_location_description_de'] as String?;
    _nearLocationDescriptionIt =
        snapshotData['near_location_description_it'] as String?;
    _nearLocationDescriptionFr =
        snapshotData['near_location_description_fr'] as String?;
    _nearLocationDescriptionRu =
        snapshotData['near_location_description_ru'] as String?;
    _nearLocationAddressDe =
        snapshotData['near_location_address_de'] as String?;
    _nearLocationAddressIt =
        snapshotData['near_location_address_it'] as String?;
    _nearLocationAddressFr =
        snapshotData['near_location_address_fr'] as String?;
    _nearLocationAddressRu =
        snapshotData['near_location_address_ru'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nearbylocations');

  static Stream<NearbylocationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NearbylocationsRecord.fromSnapshot(s));

  static Future<NearbylocationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NearbylocationsRecord.fromSnapshot(s));

  static NearbylocationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NearbylocationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NearbylocationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NearbylocationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NearbylocationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NearbylocationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNearbylocationsRecordData({
  String? nearLocationId,
  String? locationId,
  String? nearLocationName,
  String? nearLocationDescription,
  String? nearLocationWebsite,
  String? nearLocationImage,
  String? nearLocationAddress,
  String? nearLocationNameDe,
  String? nearLocationNameIt,
  String? nearLocationNameFr,
  String? nearLocationNameRu,
  String? nearLocationDescriptionDe,
  String? nearLocationDescriptionIt,
  String? nearLocationDescriptionFr,
  String? nearLocationDescriptionRu,
  String? nearLocationAddressDe,
  String? nearLocationAddressIt,
  String? nearLocationAddressFr,
  String? nearLocationAddressRu,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'near_location_id': nearLocationId,
      'location_id': locationId,
      'near_location_name': nearLocationName,
      'near_location_description': nearLocationDescription,
      'near_location_website': nearLocationWebsite,
      'near_location_image': nearLocationImage,
      'near_location_address': nearLocationAddress,
      'near_location_name_de': nearLocationNameDe,
      'near_location_name_it': nearLocationNameIt,
      'near_location_name_fr': nearLocationNameFr,
      'near_location_name_ru': nearLocationNameRu,
      'near_location_description_de': nearLocationDescriptionDe,
      'near_location_description_it': nearLocationDescriptionIt,
      'near_location_description_fr': nearLocationDescriptionFr,
      'near_location_description_ru': nearLocationDescriptionRu,
      'near_location_address_de': nearLocationAddressDe,
      'near_location_address_it': nearLocationAddressIt,
      'near_location_address_fr': nearLocationAddressFr,
      'near_location_address_ru': nearLocationAddressRu,
    }.withoutNulls,
  );

  return firestoreData;
}

class NearbylocationsRecordDocumentEquality
    implements Equality<NearbylocationsRecord> {
  const NearbylocationsRecordDocumentEquality();

  @override
  bool equals(NearbylocationsRecord? e1, NearbylocationsRecord? e2) {
    return e1?.nearLocationId == e2?.nearLocationId &&
        e1?.locationId == e2?.locationId &&
        e1?.nearLocationName == e2?.nearLocationName &&
        e1?.nearLocationDescription == e2?.nearLocationDescription &&
        e1?.nearLocationWebsite == e2?.nearLocationWebsite &&
        e1?.nearLocationImage == e2?.nearLocationImage &&
        e1?.nearLocationAddress == e2?.nearLocationAddress &&
        e1?.nearLocationNameDe == e2?.nearLocationNameDe &&
        e1?.nearLocationNameIt == e2?.nearLocationNameIt &&
        e1?.nearLocationNameFr == e2?.nearLocationNameFr &&
        e1?.nearLocationNameRu == e2?.nearLocationNameRu &&
        e1?.nearLocationDescriptionDe == e2?.nearLocationDescriptionDe &&
        e1?.nearLocationDescriptionIt == e2?.nearLocationDescriptionIt &&
        e1?.nearLocationDescriptionFr == e2?.nearLocationDescriptionFr &&
        e1?.nearLocationDescriptionRu == e2?.nearLocationDescriptionRu &&
        e1?.nearLocationAddressDe == e2?.nearLocationAddressDe &&
        e1?.nearLocationAddressIt == e2?.nearLocationAddressIt &&
        e1?.nearLocationAddressFr == e2?.nearLocationAddressFr &&
        e1?.nearLocationAddressRu == e2?.nearLocationAddressRu;
  }

  @override
  int hash(NearbylocationsRecord? e) => const ListEquality().hash([
        e?.nearLocationId,
        e?.locationId,
        e?.nearLocationName,
        e?.nearLocationDescription,
        e?.nearLocationWebsite,
        e?.nearLocationImage,
        e?.nearLocationAddress,
        e?.nearLocationNameDe,
        e?.nearLocationNameIt,
        e?.nearLocationNameFr,
        e?.nearLocationNameRu,
        e?.nearLocationDescriptionDe,
        e?.nearLocationDescriptionIt,
        e?.nearLocationDescriptionFr,
        e?.nearLocationDescriptionRu,
        e?.nearLocationAddressDe,
        e?.nearLocationAddressIt,
        e?.nearLocationAddressFr,
        e?.nearLocationAddressRu
      ]);

  @override
  bool isValidKey(Object? o) => o is NearbylocationsRecord;
}
