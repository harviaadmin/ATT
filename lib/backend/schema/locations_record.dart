import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationsRecord extends FirestoreRecord {
  LocationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "location_id" field.
  String? _locationId;
  String get locationId => _locationId ?? '';
  bool hasLocationId() => _locationId != null;

  // "quest_id" field.
  String? _questId;
  String get questId => _questId ?? '';
  bool hasQuestId() => _questId != null;

  // "location_sequence" field.
  int? _locationSequence;
  int get locationSequence => _locationSequence ?? 0;
  bool hasLocationSequence() => _locationSequence != null;

  // "location_name" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "location_address" field.
  String? _locationAddress;
  String get locationAddress => _locationAddress ?? '';
  bool hasLocationAddress() => _locationAddress != null;

  // "location_image" field.
  String? _locationImage;
  String get locationImage => _locationImage ?? '';
  bool hasLocationImage() => _locationImage != null;

  // "question_type" field.
  String? _questionType;
  String get questionType => _questionType ?? '';
  bool hasQuestionType() => _questionType != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "question_image" field.
  String? _questionImage;
  String get questionImage => _questionImage ?? '';
  bool hasQuestionImage() => _questionImage != null;

  // "hint" field.
  String? _hint;
  String get hint => _hint ?? '';
  bool hasHint() => _hint != null;

  // "answer1_text" field.
  String? _answer1Text;
  String get answer1Text => _answer1Text ?? '';
  bool hasAnswer1Text() => _answer1Text != null;

  // "answer1_image" field.
  String? _answer1Image;
  String get answer1Image => _answer1Image ?? '';
  bool hasAnswer1Image() => _answer1Image != null;

  // "hint_image" field.
  String? _hintImage;
  String get hintImage => _hintImage ?? '';
  bool hasHintImage() => _hintImage != null;

  // "answer2_text" field.
  String? _answer2Text;
  String get answer2Text => _answer2Text ?? '';
  bool hasAnswer2Text() => _answer2Text != null;

  // "answer2_image" field.
  String? _answer2Image;
  String get answer2Image => _answer2Image ?? '';
  bool hasAnswer2Image() => _answer2Image != null;

  // "answer3_text" field.
  String? _answer3Text;
  String get answer3Text => _answer3Text ?? '';
  bool hasAnswer3Text() => _answer3Text != null;

  // "answer3_image" field.
  String? _answer3Image;
  String get answer3Image => _answer3Image ?? '';
  bool hasAnswer3Image() => _answer3Image != null;

  // "answer4_text" field.
  String? _answer4Text;
  String get answer4Text => _answer4Text ?? '';
  bool hasAnswer4Text() => _answer4Text != null;

  // "answer4_image" field.
  String? _answer4Image;
  String get answer4Image => _answer4Image ?? '';
  bool hasAnswer4Image() => _answer4Image != null;

  // "correct_answer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  bool hasCorrectAnswer() => _correctAnswer != null;

  // "location_start_gps" field.
  LatLng? _locationStartGps;
  LatLng? get locationStartGps => _locationStartGps;
  bool hasLocationStartGps() => _locationStartGps != null;

  // "location_end_gps" field.
  LatLng? _locationEndGps;
  LatLng? get locationEndGps => _locationEndGps;
  bool hasLocationEndGps() => _locationEndGps != null;

  // "direction_name" field.
  String? _directionName;
  String get directionName => _directionName ?? '';
  bool hasDirectionName() => _directionName != null;

  // "location_desc" field.
  String? _locationDesc;
  String get locationDesc => _locationDesc ?? '';
  bool hasLocationDesc() => _locationDesc != null;

  // "direction_choice" field.
  String? _directionChoice;
  String get directionChoice => _directionChoice ?? '';
  bool hasDirectionChoice() => _directionChoice != null;

  // "location_name_de" field.
  String? _locationNameDe;
  String get locationNameDe => _locationNameDe ?? '';
  bool hasLocationNameDe() => _locationNameDe != null;

  // "location_name_it" field.
  String? _locationNameIt;
  String get locationNameIt => _locationNameIt ?? '';
  bool hasLocationNameIt() => _locationNameIt != null;

  // "location_name_fr" field.
  String? _locationNameFr;
  String get locationNameFr => _locationNameFr ?? '';
  bool hasLocationNameFr() => _locationNameFr != null;

  // "location_name_ru" field.
  String? _locationNameRu;
  String get locationNameRu => _locationNameRu ?? '';
  bool hasLocationNameRu() => _locationNameRu != null;

  // "location_address_de" field.
  String? _locationAddressDe;
  String get locationAddressDe => _locationAddressDe ?? '';
  bool hasLocationAddressDe() => _locationAddressDe != null;

  // "location_address_it" field.
  String? _locationAddressIt;
  String get locationAddressIt => _locationAddressIt ?? '';
  bool hasLocationAddressIt() => _locationAddressIt != null;

  // "location_address_fr" field.
  String? _locationAddressFr;
  String get locationAddressFr => _locationAddressFr ?? '';
  bool hasLocationAddressFr() => _locationAddressFr != null;

  // "location_address_ru" field.
  String? _locationAddressRu;
  String get locationAddressRu => _locationAddressRu ?? '';
  bool hasLocationAddressRu() => _locationAddressRu != null;

  // "location_desc_de" field.
  String? _locationDescDe;
  String get locationDescDe => _locationDescDe ?? '';
  bool hasLocationDescDe() => _locationDescDe != null;

  // "location_desc_it" field.
  String? _locationDescIt;
  String get locationDescIt => _locationDescIt ?? '';
  bool hasLocationDescIt() => _locationDescIt != null;

  // "location_desc_fr" field.
  String? _locationDescFr;
  String get locationDescFr => _locationDescFr ?? '';
  bool hasLocationDescFr() => _locationDescFr != null;

  // "location_desc_ru" field.
  String? _locationDescRu;
  String get locationDescRu => _locationDescRu ?? '';
  bool hasLocationDescRu() => _locationDescRu != null;

  // "question_de" field.
  String? _questionDe;
  String get questionDe => _questionDe ?? '';
  bool hasQuestionDe() => _questionDe != null;

  // "question_it" field.
  String? _questionIt;
  String get questionIt => _questionIt ?? '';
  bool hasQuestionIt() => _questionIt != null;

  // "question_fr" field.
  String? _questionFr;
  String get questionFr => _questionFr ?? '';
  bool hasQuestionFr() => _questionFr != null;

  // "question_ru" field.
  String? _questionRu;
  String get questionRu => _questionRu ?? '';
  bool hasQuestionRu() => _questionRu != null;

  // "hint_de" field.
  String? _hintDe;
  String get hintDe => _hintDe ?? '';
  bool hasHintDe() => _hintDe != null;

  // "hint_it" field.
  String? _hintIt;
  String get hintIt => _hintIt ?? '';
  bool hasHintIt() => _hintIt != null;

  // "hint_fr" field.
  String? _hintFr;
  String get hintFr => _hintFr ?? '';
  bool hasHintFr() => _hintFr != null;

  // "hint_ru" field.
  String? _hintRu;
  String get hintRu => _hintRu ?? '';
  bool hasHintRu() => _hintRu != null;

  // "answer1_text_de" field.
  String? _answer1TextDe;
  String get answer1TextDe => _answer1TextDe ?? '';
  bool hasAnswer1TextDe() => _answer1TextDe != null;

  // "answer1_text_it" field.
  String? _answer1TextIt;
  String get answer1TextIt => _answer1TextIt ?? '';
  bool hasAnswer1TextIt() => _answer1TextIt != null;

  // "answer1_text_fr" field.
  String? _answer1TextFr;
  String get answer1TextFr => _answer1TextFr ?? '';
  bool hasAnswer1TextFr() => _answer1TextFr != null;

  // "answer1_text_ru" field.
  String? _answer1TextRu;
  String get answer1TextRu => _answer1TextRu ?? '';
  bool hasAnswer1TextRu() => _answer1TextRu != null;

  // "answer2_text_de" field.
  String? _answer2TextDe;
  String get answer2TextDe => _answer2TextDe ?? '';
  bool hasAnswer2TextDe() => _answer2TextDe != null;

  // "answer2_text_it" field.
  String? _answer2TextIt;
  String get answer2TextIt => _answer2TextIt ?? '';
  bool hasAnswer2TextIt() => _answer2TextIt != null;

  // "answer2_text_fr" field.
  String? _answer2TextFr;
  String get answer2TextFr => _answer2TextFr ?? '';
  bool hasAnswer2TextFr() => _answer2TextFr != null;

  // "answer2_text_ru" field.
  String? _answer2TextRu;
  String get answer2TextRu => _answer2TextRu ?? '';
  bool hasAnswer2TextRu() => _answer2TextRu != null;

  // "answer3_text_de" field.
  String? _answer3TextDe;
  String get answer3TextDe => _answer3TextDe ?? '';
  bool hasAnswer3TextDe() => _answer3TextDe != null;

  // "answer3_text_it" field.
  String? _answer3TextIt;
  String get answer3TextIt => _answer3TextIt ?? '';
  bool hasAnswer3TextIt() => _answer3TextIt != null;

  // "answer3_text_fr" field.
  String? _answer3TextFr;
  String get answer3TextFr => _answer3TextFr ?? '';
  bool hasAnswer3TextFr() => _answer3TextFr != null;

  // "answer3_text_ru" field.
  String? _answer3TextRu;
  String get answer3TextRu => _answer3TextRu ?? '';
  bool hasAnswer3TextRu() => _answer3TextRu != null;

  // "answer4_text_de" field.
  String? _answer4TextDe;
  String get answer4TextDe => _answer4TextDe ?? '';
  bool hasAnswer4TextDe() => _answer4TextDe != null;

  // "answer4_text_it" field.
  String? _answer4TextIt;
  String get answer4TextIt => _answer4TextIt ?? '';
  bool hasAnswer4TextIt() => _answer4TextIt != null;

  // "answer4_text_fr" field.
  String? _answer4TextFr;
  String get answer4TextFr => _answer4TextFr ?? '';
  bool hasAnswer4TextFr() => _answer4TextFr != null;

  // "answer4_text_ru" field.
  String? _answer4TextRu;
  String get answer4TextRu => _answer4TextRu ?? '';
  bool hasAnswer4TextRu() => _answer4TextRu != null;

  // "correct_answer_de" field.
  String? _correctAnswerDe;
  String get correctAnswerDe => _correctAnswerDe ?? '';
  bool hasCorrectAnswerDe() => _correctAnswerDe != null;

  // "correct_answer_it" field.
  String? _correctAnswerIt;
  String get correctAnswerIt => _correctAnswerIt ?? '';
  bool hasCorrectAnswerIt() => _correctAnswerIt != null;

  // "correct_answer_fr" field.
  String? _correctAnswerFr;
  String get correctAnswerFr => _correctAnswerFr ?? '';
  bool hasCorrectAnswerFr() => _correctAnswerFr != null;

  // "correct_answer_ru" field.
  String? _correctAnswerRu;
  String get correctAnswerRu => _correctAnswerRu ?? '';
  bool hasCorrectAnswerRu() => _correctAnswerRu != null;

  // "direction_name_de" field.
  String? _directionNameDe;
  String get directionNameDe => _directionNameDe ?? '';
  bool hasDirectionNameDe() => _directionNameDe != null;

  // "direction_name_it" field.
  String? _directionNameIt;
  String get directionNameIt => _directionNameIt ?? '';
  bool hasDirectionNameIt() => _directionNameIt != null;

  // "direction_name_fr" field.
  String? _directionNameFr;
  String get directionNameFr => _directionNameFr ?? '';
  bool hasDirectionNameFr() => _directionNameFr != null;

  // "direction_name_ru" field.
  String? _directionNameRu;
  String get directionNameRu => _directionNameRu ?? '';
  bool hasDirectionNameRu() => _directionNameRu != null;

  void _initializeFields() {
    _locationId = snapshotData['location_id'] as String?;
    _questId = snapshotData['quest_id'] as String?;
    _locationSequence = castToType<int>(snapshotData['location_sequence']);
    _locationName = snapshotData['location_name'] as String?;
    _locationAddress = snapshotData['location_address'] as String?;
    _locationImage = snapshotData['location_image'] as String?;
    _questionType = snapshotData['question_type'] as String?;
    _question = snapshotData['question'] as String?;
    _questionImage = snapshotData['question_image'] as String?;
    _hint = snapshotData['hint'] as String?;
    _answer1Text = snapshotData['answer1_text'] as String?;
    _answer1Image = snapshotData['answer1_image'] as String?;
    _hintImage = snapshotData['hint_image'] as String?;
    _answer2Text = snapshotData['answer2_text'] as String?;
    _answer2Image = snapshotData['answer2_image'] as String?;
    _answer3Text = snapshotData['answer3_text'] as String?;
    _answer3Image = snapshotData['answer3_image'] as String?;
    _answer4Text = snapshotData['answer4_text'] as String?;
    _answer4Image = snapshotData['answer4_image'] as String?;
    _correctAnswer = snapshotData['correct_answer'] as String?;
    _locationStartGps = snapshotData['location_start_gps'] as LatLng?;
    _locationEndGps = snapshotData['location_end_gps'] as LatLng?;
    _directionName = snapshotData['direction_name'] as String?;
    _locationDesc = snapshotData['location_desc'] as String?;
    _directionChoice = snapshotData['direction_choice'] as String?;
    _locationNameDe = snapshotData['location_name_de'] as String?;
    _locationNameIt = snapshotData['location_name_it'] as String?;
    _locationNameFr = snapshotData['location_name_fr'] as String?;
    _locationNameRu = snapshotData['location_name_ru'] as String?;
    _locationAddressDe = snapshotData['location_address_de'] as String?;
    _locationAddressIt = snapshotData['location_address_it'] as String?;
    _locationAddressFr = snapshotData['location_address_fr'] as String?;
    _locationAddressRu = snapshotData['location_address_ru'] as String?;
    _locationDescDe = snapshotData['location_desc_de'] as String?;
    _locationDescIt = snapshotData['location_desc_it'] as String?;
    _locationDescFr = snapshotData['location_desc_fr'] as String?;
    _locationDescRu = snapshotData['location_desc_ru'] as String?;
    _questionDe = snapshotData['question_de'] as String?;
    _questionIt = snapshotData['question_it'] as String?;
    _questionFr = snapshotData['question_fr'] as String?;
    _questionRu = snapshotData['question_ru'] as String?;
    _hintDe = snapshotData['hint_de'] as String?;
    _hintIt = snapshotData['hint_it'] as String?;
    _hintFr = snapshotData['hint_fr'] as String?;
    _hintRu = snapshotData['hint_ru'] as String?;
    _answer1TextDe = snapshotData['answer1_text_de'] as String?;
    _answer1TextIt = snapshotData['answer1_text_it'] as String?;
    _answer1TextFr = snapshotData['answer1_text_fr'] as String?;
    _answer1TextRu = snapshotData['answer1_text_ru'] as String?;
    _answer2TextDe = snapshotData['answer2_text_de'] as String?;
    _answer2TextIt = snapshotData['answer2_text_it'] as String?;
    _answer2TextFr = snapshotData['answer2_text_fr'] as String?;
    _answer2TextRu = snapshotData['answer2_text_ru'] as String?;
    _answer3TextDe = snapshotData['answer3_text_de'] as String?;
    _answer3TextIt = snapshotData['answer3_text_it'] as String?;
    _answer3TextFr = snapshotData['answer3_text_fr'] as String?;
    _answer3TextRu = snapshotData['answer3_text_ru'] as String?;
    _answer4TextDe = snapshotData['answer4_text_de'] as String?;
    _answer4TextIt = snapshotData['answer4_text_it'] as String?;
    _answer4TextFr = snapshotData['answer4_text_fr'] as String?;
    _answer4TextRu = snapshotData['answer4_text_ru'] as String?;
    _correctAnswerDe = snapshotData['correct_answer_de'] as String?;
    _correctAnswerIt = snapshotData['correct_answer_it'] as String?;
    _correctAnswerFr = snapshotData['correct_answer_fr'] as String?;
    _correctAnswerRu = snapshotData['correct_answer_ru'] as String?;
    _directionNameDe = snapshotData['direction_name_de'] as String?;
    _directionNameIt = snapshotData['direction_name_it'] as String?;
    _directionNameFr = snapshotData['direction_name_fr'] as String?;
    _directionNameRu = snapshotData['direction_name_ru'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('locations');

  static Stream<LocationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocationsRecord.fromSnapshot(s));

  static Future<LocationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocationsRecord.fromSnapshot(s));

  static LocationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocationsRecordData({
  String? locationId,
  String? questId,
  int? locationSequence,
  String? locationName,
  String? locationAddress,
  String? locationImage,
  String? questionType,
  String? question,
  String? questionImage,
  String? hint,
  String? answer1Text,
  String? answer1Image,
  String? hintImage,
  String? answer2Text,
  String? answer2Image,
  String? answer3Text,
  String? answer3Image,
  String? answer4Text,
  String? answer4Image,
  String? correctAnswer,
  LatLng? locationStartGps,
  LatLng? locationEndGps,
  String? directionName,
  String? locationDesc,
  String? directionChoice,
  String? locationNameDe,
  String? locationNameIt,
  String? locationNameFr,
  String? locationNameRu,
  String? locationAddressDe,
  String? locationAddressIt,
  String? locationAddressFr,
  String? locationAddressRu,
  String? locationDescDe,
  String? locationDescIt,
  String? locationDescFr,
  String? locationDescRu,
  String? questionDe,
  String? questionIt,
  String? questionFr,
  String? questionRu,
  String? hintDe,
  String? hintIt,
  String? hintFr,
  String? hintRu,
  String? answer1TextDe,
  String? answer1TextIt,
  String? answer1TextFr,
  String? answer1TextRu,
  String? answer2TextDe,
  String? answer2TextIt,
  String? answer2TextFr,
  String? answer2TextRu,
  String? answer3TextDe,
  String? answer3TextIt,
  String? answer3TextFr,
  String? answer3TextRu,
  String? answer4TextDe,
  String? answer4TextIt,
  String? answer4TextFr,
  String? answer4TextRu,
  String? correctAnswerDe,
  String? correctAnswerIt,
  String? correctAnswerFr,
  String? correctAnswerRu,
  String? directionNameDe,
  String? directionNameIt,
  String? directionNameFr,
  String? directionNameRu,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location_id': locationId,
      'quest_id': questId,
      'location_sequence': locationSequence,
      'location_name': locationName,
      'location_address': locationAddress,
      'location_image': locationImage,
      'question_type': questionType,
      'question': question,
      'question_image': questionImage,
      'hint': hint,
      'answer1_text': answer1Text,
      'answer1_image': answer1Image,
      'hint_image': hintImage,
      'answer2_text': answer2Text,
      'answer2_image': answer2Image,
      'answer3_text': answer3Text,
      'answer3_image': answer3Image,
      'answer4_text': answer4Text,
      'answer4_image': answer4Image,
      'correct_answer': correctAnswer,
      'location_start_gps': locationStartGps,
      'location_end_gps': locationEndGps,
      'direction_name': directionName,
      'location_desc': locationDesc,
      'direction_choice': directionChoice,
      'location_name_de': locationNameDe,
      'location_name_it': locationNameIt,
      'location_name_fr': locationNameFr,
      'location_name_ru': locationNameRu,
      'location_address_de': locationAddressDe,
      'location_address_it': locationAddressIt,
      'location_address_fr': locationAddressFr,
      'location_address_ru': locationAddressRu,
      'location_desc_de': locationDescDe,
      'location_desc_it': locationDescIt,
      'location_desc_fr': locationDescFr,
      'location_desc_ru': locationDescRu,
      'question_de': questionDe,
      'question_it': questionIt,
      'question_fr': questionFr,
      'question_ru': questionRu,
      'hint_de': hintDe,
      'hint_it': hintIt,
      'hint_fr': hintFr,
      'hint_ru': hintRu,
      'answer1_text_de': answer1TextDe,
      'answer1_text_it': answer1TextIt,
      'answer1_text_fr': answer1TextFr,
      'answer1_text_ru': answer1TextRu,
      'answer2_text_de': answer2TextDe,
      'answer2_text_it': answer2TextIt,
      'answer2_text_fr': answer2TextFr,
      'answer2_text_ru': answer2TextRu,
      'answer3_text_de': answer3TextDe,
      'answer3_text_it': answer3TextIt,
      'answer3_text_fr': answer3TextFr,
      'answer3_text_ru': answer3TextRu,
      'answer4_text_de': answer4TextDe,
      'answer4_text_it': answer4TextIt,
      'answer4_text_fr': answer4TextFr,
      'answer4_text_ru': answer4TextRu,
      'correct_answer_de': correctAnswerDe,
      'correct_answer_it': correctAnswerIt,
      'correct_answer_fr': correctAnswerFr,
      'correct_answer_ru': correctAnswerRu,
      'direction_name_de': directionNameDe,
      'direction_name_it': directionNameIt,
      'direction_name_fr': directionNameFr,
      'direction_name_ru': directionNameRu,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocationsRecordDocumentEquality implements Equality<LocationsRecord> {
  const LocationsRecordDocumentEquality();

  @override
  bool equals(LocationsRecord? e1, LocationsRecord? e2) {
    return e1?.locationId == e2?.locationId &&
        e1?.questId == e2?.questId &&
        e1?.locationSequence == e2?.locationSequence &&
        e1?.locationName == e2?.locationName &&
        e1?.locationAddress == e2?.locationAddress &&
        e1?.locationImage == e2?.locationImage &&
        e1?.questionType == e2?.questionType &&
        e1?.question == e2?.question &&
        e1?.questionImage == e2?.questionImage &&
        e1?.hint == e2?.hint &&
        e1?.answer1Text == e2?.answer1Text &&
        e1?.answer1Image == e2?.answer1Image &&
        e1?.hintImage == e2?.hintImage &&
        e1?.answer2Text == e2?.answer2Text &&
        e1?.answer2Image == e2?.answer2Image &&
        e1?.answer3Text == e2?.answer3Text &&
        e1?.answer3Image == e2?.answer3Image &&
        e1?.answer4Text == e2?.answer4Text &&
        e1?.answer4Image == e2?.answer4Image &&
        e1?.correctAnswer == e2?.correctAnswer &&
        e1?.locationStartGps == e2?.locationStartGps &&
        e1?.locationEndGps == e2?.locationEndGps &&
        e1?.directionName == e2?.directionName &&
        e1?.locationDesc == e2?.locationDesc &&
        e1?.directionChoice == e2?.directionChoice &&
        e1?.locationNameDe == e2?.locationNameDe &&
        e1?.locationNameIt == e2?.locationNameIt &&
        e1?.locationNameFr == e2?.locationNameFr &&
        e1?.locationNameRu == e2?.locationNameRu &&
        e1?.locationAddressDe == e2?.locationAddressDe &&
        e1?.locationAddressIt == e2?.locationAddressIt &&
        e1?.locationAddressFr == e2?.locationAddressFr &&
        e1?.locationAddressRu == e2?.locationAddressRu &&
        e1?.locationDescDe == e2?.locationDescDe &&
        e1?.locationDescIt == e2?.locationDescIt &&
        e1?.locationDescFr == e2?.locationDescFr &&
        e1?.locationDescRu == e2?.locationDescRu &&
        e1?.questionDe == e2?.questionDe &&
        e1?.questionIt == e2?.questionIt &&
        e1?.questionFr == e2?.questionFr &&
        e1?.questionRu == e2?.questionRu &&
        e1?.hintDe == e2?.hintDe &&
        e1?.hintIt == e2?.hintIt &&
        e1?.hintFr == e2?.hintFr &&
        e1?.hintRu == e2?.hintRu &&
        e1?.answer1TextDe == e2?.answer1TextDe &&
        e1?.answer1TextIt == e2?.answer1TextIt &&
        e1?.answer1TextFr == e2?.answer1TextFr &&
        e1?.answer1TextRu == e2?.answer1TextRu &&
        e1?.answer2TextDe == e2?.answer2TextDe &&
        e1?.answer2TextIt == e2?.answer2TextIt &&
        e1?.answer2TextFr == e2?.answer2TextFr &&
        e1?.answer2TextRu == e2?.answer2TextRu &&
        e1?.answer3TextDe == e2?.answer3TextDe &&
        e1?.answer3TextIt == e2?.answer3TextIt &&
        e1?.answer3TextFr == e2?.answer3TextFr &&
        e1?.answer3TextRu == e2?.answer3TextRu &&
        e1?.answer4TextDe == e2?.answer4TextDe &&
        e1?.answer4TextIt == e2?.answer4TextIt &&
        e1?.answer4TextFr == e2?.answer4TextFr &&
        e1?.answer4TextRu == e2?.answer4TextRu &&
        e1?.correctAnswerDe == e2?.correctAnswerDe &&
        e1?.correctAnswerIt == e2?.correctAnswerIt &&
        e1?.correctAnswerFr == e2?.correctAnswerFr &&
        e1?.correctAnswerRu == e2?.correctAnswerRu &&
        e1?.directionNameDe == e2?.directionNameDe &&
        e1?.directionNameIt == e2?.directionNameIt &&
        e1?.directionNameFr == e2?.directionNameFr &&
        e1?.directionNameRu == e2?.directionNameRu;
  }

  @override
  int hash(LocationsRecord? e) => const ListEquality().hash([
        e?.locationId,
        e?.questId,
        e?.locationSequence,
        e?.locationName,
        e?.locationAddress,
        e?.locationImage,
        e?.questionType,
        e?.question,
        e?.questionImage,
        e?.hint,
        e?.answer1Text,
        e?.answer1Image,
        e?.hintImage,
        e?.answer2Text,
        e?.answer2Image,
        e?.answer3Text,
        e?.answer3Image,
        e?.answer4Text,
        e?.answer4Image,
        e?.correctAnswer,
        e?.locationStartGps,
        e?.locationEndGps,
        e?.directionName,
        e?.locationDesc,
        e?.directionChoice,
        e?.locationNameDe,
        e?.locationNameIt,
        e?.locationNameFr,
        e?.locationNameRu,
        e?.locationAddressDe,
        e?.locationAddressIt,
        e?.locationAddressFr,
        e?.locationAddressRu,
        e?.locationDescDe,
        e?.locationDescIt,
        e?.locationDescFr,
        e?.locationDescRu,
        e?.questionDe,
        e?.questionIt,
        e?.questionFr,
        e?.questionRu,
        e?.hintDe,
        e?.hintIt,
        e?.hintFr,
        e?.hintRu,
        e?.answer1TextDe,
        e?.answer1TextIt,
        e?.answer1TextFr,
        e?.answer1TextRu,
        e?.answer2TextDe,
        e?.answer2TextIt,
        e?.answer2TextFr,
        e?.answer2TextRu,
        e?.answer3TextDe,
        e?.answer3TextIt,
        e?.answer3TextFr,
        e?.answer3TextRu,
        e?.answer4TextDe,
        e?.answer4TextIt,
        e?.answer4TextFr,
        e?.answer4TextRu,
        e?.correctAnswerDe,
        e?.correctAnswerIt,
        e?.correctAnswerFr,
        e?.correctAnswerRu,
        e?.directionNameDe,
        e?.directionNameIt,
        e?.directionNameFr,
        e?.directionNameRu
      ]);

  @override
  bool isValidKey(Object? o) => o is LocationsRecord;
}
