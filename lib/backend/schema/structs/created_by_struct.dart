// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CreatedByStruct extends FFFirebaseStruct {
  CreatedByStruct({
    int? id,
    String? creditId,
    String? name,
    String? originalName,
    int? gender,
    String? profilePath,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _creditId = creditId,
        _name = name,
        _originalName = originalName,
        _gender = gender,
        _profilePath = profilePath,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "credit_id" field.
  String? _creditId;
  String get creditId => _creditId ?? '';
  set creditId(String? val) => _creditId = val;

  bool hasCreditId() => _creditId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "original_name" field.
  String? _originalName;
  String get originalName => _originalName ?? '';
  set originalName(String? val) => _originalName = val;

  bool hasOriginalName() => _originalName != null;

  // "gender" field.
  int? _gender;
  int get gender => _gender ?? 0;
  set gender(int? val) => _gender = val;

  void incrementGender(int amount) => gender = gender + amount;

  bool hasGender() => _gender != null;

  // "profile_path" field.
  String? _profilePath;
  String get profilePath => _profilePath ?? '';
  set profilePath(String? val) => _profilePath = val;

  bool hasProfilePath() => _profilePath != null;

  static CreatedByStruct fromMap(Map<String, dynamic> data) => CreatedByStruct(
        id: castToType<int>(data['id']),
        creditId: data['credit_id'] as String?,
        name: data['name'] as String?,
        originalName: data['original_name'] as String?,
        gender: castToType<int>(data['gender']),
        profilePath: data['profile_path'] as String?,
      );

  static CreatedByStruct? maybeFromMap(dynamic data) => data is Map
      ? CreatedByStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'credit_id': _creditId,
        'name': _name,
        'original_name': _originalName,
        'gender': _gender,
        'profile_path': _profilePath,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'credit_id': serializeParam(
          _creditId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'original_name': serializeParam(
          _originalName,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.int,
        ),
        'profile_path': serializeParam(
          _profilePath,
          ParamType.String,
        ),
      }.withoutNulls;

  static CreatedByStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreatedByStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        creditId: deserializeParam(
          data['credit_id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        originalName: deserializeParam(
          data['original_name'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.int,
          false,
        ),
        profilePath: deserializeParam(
          data['profile_path'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CreatedByStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreatedByStruct &&
        id == other.id &&
        creditId == other.creditId &&
        name == other.name &&
        originalName == other.originalName &&
        gender == other.gender &&
        profilePath == other.profilePath;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, creditId, name, originalName, gender, profilePath]);
}

CreatedByStruct createCreatedByStruct({
  int? id,
  String? creditId,
  String? name,
  String? originalName,
  int? gender,
  String? profilePath,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CreatedByStruct(
      id: id,
      creditId: creditId,
      name: name,
      originalName: originalName,
      gender: gender,
      profilePath: profilePath,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CreatedByStruct? updateCreatedByStruct(
  CreatedByStruct? createdBy, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    createdBy
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCreatedByStructData(
  Map<String, dynamic> firestoreData,
  CreatedByStruct? createdBy,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (createdBy == null) {
    return;
  }
  if (createdBy.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && createdBy.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final createdByData = getCreatedByFirestoreData(createdBy, forFieldValue);
  final nestedData = createdByData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = createdBy.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCreatedByFirestoreData(
  CreatedByStruct? createdBy, [
  bool forFieldValue = false,
]) {
  if (createdBy == null) {
    return {};
  }
  final firestoreData = mapToFirestore(createdBy.toMap());

  // Add any Firestore field values
  createdBy.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCreatedByListFirestoreData(
  List<CreatedByStruct>? createdBys,
) =>
    createdBys?.map((e) => getCreatedByFirestoreData(e, true)).toList() ?? [];
