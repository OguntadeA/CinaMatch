import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WatchlistRecord extends FirestoreRecord {
  WatchlistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "movies" field.
  List<MovieInWatchlistStruct>? _movies;
  List<MovieInWatchlistStruct> get movies => _movies ?? const [];
  bool hasMovies() => _movies != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "stringRef" field.
  String? _stringRef;
  String get stringRef => _stringRef ?? '';
  bool hasStringRef() => _stringRef != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _movies = getStructList(
      snapshotData['movies'],
      MovieInWatchlistStruct.fromMap,
    );
    _description = snapshotData['description'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _stringRef = snapshotData['stringRef'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('watchlist');

  static Stream<WatchlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WatchlistRecord.fromSnapshot(s));

  static Future<WatchlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WatchlistRecord.fromSnapshot(s));

  static WatchlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WatchlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WatchlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WatchlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WatchlistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WatchlistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWatchlistRecordData({
  String? name,
  String? description,
  DocumentReference? user,
  String? stringRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'user': user,
      'stringRef': stringRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class WatchlistRecordDocumentEquality implements Equality<WatchlistRecord> {
  const WatchlistRecordDocumentEquality();

  @override
  bool equals(WatchlistRecord? e1, WatchlistRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        listEquality.equals(e1?.movies, e2?.movies) &&
        e1?.description == e2?.description &&
        e1?.user == e2?.user &&
        e1?.stringRef == e2?.stringRef;
  }

  @override
  int hash(WatchlistRecord? e) => const ListEquality()
      .hash([e?.name, e?.movies, e?.description, e?.user, e?.stringRef]);

  @override
  bool isValidKey(Object? o) => o is WatchlistRecord;
}
