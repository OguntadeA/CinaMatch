import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchTimeRecord extends FirestoreRecord {
  SearchTimeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "num_search" field.
  int? _numSearch;
  int get numSearch => _numSearch ?? 0;
  bool hasNumSearch() => _numSearch != null;

  // "search_len" field.
  double? _searchLen;
  double get searchLen => _searchLen ?? 0.0;
  bool hasSearchLen() => _searchLen != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _numSearch = castToType<int>(snapshotData['num_search']);
    _searchLen = castToType<double>(snapshotData['search_len']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('search_time');

  static Stream<SearchTimeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SearchTimeRecord.fromSnapshot(s));

  static Future<SearchTimeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SearchTimeRecord.fromSnapshot(s));

  static SearchTimeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SearchTimeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SearchTimeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SearchTimeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SearchTimeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SearchTimeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSearchTimeRecordData({
  String? userId,
  int? numSearch,
  double? searchLen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'num_search': numSearch,
      'search_len': searchLen,
    }.withoutNulls,
  );

  return firestoreData;
}

class SearchTimeRecordDocumentEquality implements Equality<SearchTimeRecord> {
  const SearchTimeRecordDocumentEquality();

  @override
  bool equals(SearchTimeRecord? e1, SearchTimeRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.numSearch == e2?.numSearch &&
        e1?.searchLen == e2?.searchLen;
  }

  @override
  int hash(SearchTimeRecord? e) =>
      const ListEquality().hash([e?.userId, e?.numSearch, e?.searchLen]);

  @override
  bool isValidKey(Object? o) => o is SearchTimeRecord;
}
