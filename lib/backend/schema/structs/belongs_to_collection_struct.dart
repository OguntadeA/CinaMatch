// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BelongsToCollectionStruct extends FFFirebaseStruct {
  BelongsToCollectionStruct({
    int? id,
    String? name,
    String? posterPath,
    String? backdropPath,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _posterPath = posterPath,
        _backdropPath = backdropPath,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "poster_path" field.
  String? _posterPath;
  String get posterPath => _posterPath ?? '';
  set posterPath(String? val) => _posterPath = val;

  bool hasPosterPath() => _posterPath != null;

  // "backdrop_path" field.
  String? _backdropPath;
  String get backdropPath => _backdropPath ?? '';
  set backdropPath(String? val) => _backdropPath = val;

  bool hasBackdropPath() => _backdropPath != null;

  static BelongsToCollectionStruct fromMap(Map<String, dynamic> data) =>
      BelongsToCollectionStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        posterPath: data['poster_path'] as String?,
        backdropPath: data['backdrop_path'] as String?,
      );

  static BelongsToCollectionStruct? maybeFromMap(dynamic data) => data is Map
      ? BelongsToCollectionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'poster_path': _posterPath,
        'backdrop_path': _backdropPath,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'poster_path': serializeParam(
          _posterPath,
          ParamType.String,
        ),
        'backdrop_path': serializeParam(
          _backdropPath,
          ParamType.String,
        ),
      }.withoutNulls;

  static BelongsToCollectionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BelongsToCollectionStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        posterPath: deserializeParam(
          data['poster_path'],
          ParamType.String,
          false,
        ),
        backdropPath: deserializeParam(
          data['backdrop_path'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BelongsToCollectionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BelongsToCollectionStruct &&
        id == other.id &&
        name == other.name &&
        posterPath == other.posterPath &&
        backdropPath == other.backdropPath;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, posterPath, backdropPath]);
}

BelongsToCollectionStruct createBelongsToCollectionStruct({
  int? id,
  String? name,
  String? posterPath,
  String? backdropPath,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BelongsToCollectionStruct(
      id: id,
      name: name,
      posterPath: posterPath,
      backdropPath: backdropPath,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BelongsToCollectionStruct? updateBelongsToCollectionStruct(
  BelongsToCollectionStruct? belongsToCollection, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    belongsToCollection
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBelongsToCollectionStructData(
  Map<String, dynamic> firestoreData,
  BelongsToCollectionStruct? belongsToCollection,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (belongsToCollection == null) {
    return;
  }
  if (belongsToCollection.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && belongsToCollection.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final belongsToCollectionData =
      getBelongsToCollectionFirestoreData(belongsToCollection, forFieldValue);
  final nestedData =
      belongsToCollectionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      belongsToCollection.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBelongsToCollectionFirestoreData(
  BelongsToCollectionStruct? belongsToCollection, [
  bool forFieldValue = false,
]) {
  if (belongsToCollection == null) {
    return {};
  }
  final firestoreData = mapToFirestore(belongsToCollection.toMap());

  // Add any Firestore field values
  belongsToCollection.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBelongsToCollectionListFirestoreData(
  List<BelongsToCollectionStruct>? belongsToCollections,
) =>
    belongsToCollections
        ?.map((e) => getBelongsToCollectionFirestoreData(e, true))
        .toList() ??
    [];
