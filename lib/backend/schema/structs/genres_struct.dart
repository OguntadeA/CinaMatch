// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GenresStruct extends FFFirebaseStruct {
  GenresStruct({
    int? id,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
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

  static GenresStruct fromMap(Map<String, dynamic> data) => GenresStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
      );

  static GenresStruct? maybeFromMap(dynamic data) =>
      data is Map ? GenresStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
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
      }.withoutNulls;

  static GenresStruct fromSerializableMap(Map<String, dynamic> data) =>
      GenresStruct(
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
      );

  @override
  String toString() => 'GenresStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GenresStruct && id == other.id && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name]);
}

GenresStruct createGenresStruct({
  int? id,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GenresStruct(
      id: id,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GenresStruct? updateGenresStruct(
  GenresStruct? genres, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    genres
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGenresStructData(
  Map<String, dynamic> firestoreData,
  GenresStruct? genres,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (genres == null) {
    return;
  }
  if (genres.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && genres.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final genresData = getGenresFirestoreData(genres, forFieldValue);
  final nestedData = genresData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = genres.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGenresFirestoreData(
  GenresStruct? genres, [
  bool forFieldValue = false,
]) {
  if (genres == null) {
    return {};
  }
  final firestoreData = mapToFirestore(genres.toMap());

  // Add any Firestore field values
  genres.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGenresListFirestoreData(
  List<GenresStruct>? genress,
) =>
    genress?.map((e) => getGenresFirestoreData(e, true)).toList() ?? [];
