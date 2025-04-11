import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountCreationRecord extends FirestoreRecord {
  AccountCreationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  // "duration" field.
  double? _duration;
  double get duration => _duration ?? 0.0;
  bool hasDuration() => _duration != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _source = snapshotData['source'] as String?;
    _duration = castToType<double>(snapshotData['duration']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('account_creation');

  static Stream<AccountCreationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccountCreationRecord.fromSnapshot(s));

  static Future<AccountCreationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccountCreationRecord.fromSnapshot(s));

  static AccountCreationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccountCreationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccountCreationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccountCreationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccountCreationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccountCreationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccountCreationRecordData({
  String? userId,
  DateTime? createdAt,
  String? source,
  double? duration,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'created_at': createdAt,
      'source': source,
      'duration': duration,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccountCreationRecordDocumentEquality
    implements Equality<AccountCreationRecord> {
  const AccountCreationRecordDocumentEquality();

  @override
  bool equals(AccountCreationRecord? e1, AccountCreationRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.source == e2?.source &&
        e1?.duration == e2?.duration;
  }

  @override
  int hash(AccountCreationRecord? e) => const ListEquality()
      .hash([e?.userId, e?.createdAt, e?.source, e?.duration]);

  @override
  bool isValidKey(Object? o) => o is AccountCreationRecord;
}
