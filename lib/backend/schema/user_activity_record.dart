import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserActivityRecord extends FirestoreRecord {
  UserActivityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "session_start" field.
  DateTime? _sessionStart;
  DateTime? get sessionStart => _sessionStart;
  bool hasSessionStart() => _sessionStart != null;

  // "session_end" field.
  DateTime? _sessionEnd;
  DateTime? get sessionEnd => _sessionEnd;
  bool hasSessionEnd() => _sessionEnd != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "session_duration" field.
  double? _sessionDuration;
  double get sessionDuration => _sessionDuration ?? 0.0;
  bool hasSessionDuration() => _sessionDuration != null;

  void _initializeFields() {
    _sessionStart = snapshotData['session_start'] as DateTime?;
    _sessionEnd = snapshotData['session_end'] as DateTime?;
    _userId = snapshotData['user_id'] as String?;
    _sessionDuration = castToType<double>(snapshotData['session_duration']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_activity');

  static Stream<UserActivityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserActivityRecord.fromSnapshot(s));

  static Future<UserActivityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserActivityRecord.fromSnapshot(s));

  static UserActivityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserActivityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserActivityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserActivityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserActivityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserActivityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserActivityRecordData({
  DateTime? sessionStart,
  DateTime? sessionEnd,
  String? userId,
  double? sessionDuration,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'session_start': sessionStart,
      'session_end': sessionEnd,
      'user_id': userId,
      'session_duration': sessionDuration,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserActivityRecordDocumentEquality
    implements Equality<UserActivityRecord> {
  const UserActivityRecordDocumentEquality();

  @override
  bool equals(UserActivityRecord? e1, UserActivityRecord? e2) {
    return e1?.sessionStart == e2?.sessionStart &&
        e1?.sessionEnd == e2?.sessionEnd &&
        e1?.userId == e2?.userId &&
        e1?.sessionDuration == e2?.sessionDuration;
  }

  @override
  int hash(UserActivityRecord? e) => const ListEquality()
      .hash([e?.sessionStart, e?.sessionEnd, e?.userId, e?.sessionDuration]);

  @override
  bool isValidKey(Object? o) => o is UserActivityRecord;
}
