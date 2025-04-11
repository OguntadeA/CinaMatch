import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserSearchRecord extends FirestoreRecord {
  UserSearchRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "search" field.
  String? _search;
  String get search => _search ?? '';
  bool hasSearch() => _search != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _search = snapshotData['search'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_search');

  static Stream<UserSearchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserSearchRecord.fromSnapshot(s));

  static Future<UserSearchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserSearchRecord.fromSnapshot(s));

  static UserSearchRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserSearchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserSearchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserSearchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserSearchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserSearchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserSearchRecordData({
  String? search,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'search': search,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserSearchRecordDocumentEquality implements Equality<UserSearchRecord> {
  const UserSearchRecordDocumentEquality();

  @override
  bool equals(UserSearchRecord? e1, UserSearchRecord? e2) {
    return e1?.search == e2?.search && e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(UserSearchRecord? e) =>
      const ListEquality().hash([e?.search, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is UserSearchRecord;
}
