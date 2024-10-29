import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserordersRecord extends FirestoreRecord {
  UserordersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_order_id" field.
  String? _userOrderId;
  String get userOrderId => _userOrderId ?? '';
  bool hasUserOrderId() => _userOrderId != null;

  // "user_quest_id" field.
  String? _userQuestId;
  String get userQuestId => _userQuestId ?? '';
  bool hasUserQuestId() => _userQuestId != null;

  // "user_user_id" field.
  String? _userUserId;
  String get userUserId => _userUserId ?? '';
  bool hasUserUserId() => _userUserId != null;

  // "user_quest_name" field.
  String? _userQuestName;
  String get userQuestName => _userQuestName ?? '';
  bool hasUserQuestName() => _userQuestName != null;

  // "user_quest_image" field.
  String? _userQuestImage;
  String get userQuestImage => _userQuestImage ?? '';
  bool hasUserQuestImage() => _userQuestImage != null;

  void _initializeFields() {
    _userOrderId = snapshotData['user_order_id'] as String?;
    _userQuestId = snapshotData['user_quest_id'] as String?;
    _userUserId = snapshotData['user_user_id'] as String?;
    _userQuestName = snapshotData['user_quest_name'] as String?;
    _userQuestImage = snapshotData['user_quest_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userorders');

  static Stream<UserordersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserordersRecord.fromSnapshot(s));

  static Future<UserordersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserordersRecord.fromSnapshot(s));

  static UserordersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserordersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserordersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserordersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserordersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserordersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserordersRecordData({
  String? userOrderId,
  String? userQuestId,
  String? userUserId,
  String? userQuestName,
  String? userQuestImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_order_id': userOrderId,
      'user_quest_id': userQuestId,
      'user_user_id': userUserId,
      'user_quest_name': userQuestName,
      'user_quest_image': userQuestImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserordersRecordDocumentEquality implements Equality<UserordersRecord> {
  const UserordersRecordDocumentEquality();

  @override
  bool equals(UserordersRecord? e1, UserordersRecord? e2) {
    return e1?.userOrderId == e2?.userOrderId &&
        e1?.userQuestId == e2?.userQuestId &&
        e1?.userUserId == e2?.userUserId &&
        e1?.userQuestName == e2?.userQuestName &&
        e1?.userQuestImage == e2?.userQuestImage;
  }

  @override
  int hash(UserordersRecord? e) => const ListEquality().hash([
        e?.userOrderId,
        e?.userQuestId,
        e?.userUserId,
        e?.userQuestName,
        e?.userQuestImage
      ]);

  @override
  bool isValidKey(Object? o) => o is UserordersRecord;
}
