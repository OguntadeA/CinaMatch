import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserFeedbackRecord extends FirestoreRecord {
  UserFeedbackRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "nps_score" field.
  double? _npsScore;
  double get npsScore => _npsScore ?? 0.0;
  bool hasNpsScore() => _npsScore != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "satisfaction" field.
  int? _satisfaction;
  int get satisfaction => _satisfaction ?? 0;
  bool hasSatisfaction() => _satisfaction != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _npsScore = castToType<double>(snapshotData['nps_score']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _satisfaction = castToType<int>(snapshotData['satisfaction']);
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_feedback');

  static Stream<UserFeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserFeedbackRecord.fromSnapshot(s));

  static Future<UserFeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserFeedbackRecord.fromSnapshot(s));

  static UserFeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserFeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserFeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserFeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserFeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserFeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserFeedbackRecordData({
  String? userId,
  double? npsScore,
  DateTime? timestamp,
  int? satisfaction,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'nps_score': npsScore,
      'timestamp': timestamp,
      'satisfaction': satisfaction,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserFeedbackRecordDocumentEquality
    implements Equality<UserFeedbackRecord> {
  const UserFeedbackRecordDocumentEquality();

  @override
  bool equals(UserFeedbackRecord? e1, UserFeedbackRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.npsScore == e2?.npsScore &&
        e1?.timestamp == e2?.timestamp &&
        e1?.satisfaction == e2?.satisfaction &&
        e1?.category == e2?.category;
  }

  @override
  int hash(UserFeedbackRecord? e) => const ListEquality().hash(
      [e?.userId, e?.npsScore, e?.timestamp, e?.satisfaction, e?.category]);

  @override
  bool isValidKey(Object? o) => o is UserFeedbackRecord;
}
