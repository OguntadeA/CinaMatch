// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SpokenLanguagesStruct extends FFFirebaseStruct {
  SpokenLanguagesStruct({
    String? englishName,
    String? iso6391,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _englishName = englishName,
        _iso6391 = iso6391,
        _name = name,
        super(firestoreUtilData);

  // "english_name" field.
  String? _englishName;
  String get englishName => _englishName ?? '';
  set englishName(String? val) => _englishName = val;

  bool hasEnglishName() => _englishName != null;

  // "iso_639_1" field.
  String? _iso6391;
  String get iso6391 => _iso6391 ?? '';
  set iso6391(String? val) => _iso6391 = val;

  bool hasIso6391() => _iso6391 != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static SpokenLanguagesStruct fromMap(Map<String, dynamic> data) =>
      SpokenLanguagesStruct(
        englishName: data['english_name'] as String?,
        iso6391: data['iso_639_1'] as String?,
        name: data['name'] as String?,
      );

  static SpokenLanguagesStruct? maybeFromMap(dynamic data) => data is Map
      ? SpokenLanguagesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'english_name': _englishName,
        'iso_639_1': _iso6391,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'english_name': serializeParam(
          _englishName,
          ParamType.String,
        ),
        'iso_639_1': serializeParam(
          _iso6391,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static SpokenLanguagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      SpokenLanguagesStruct(
        englishName: deserializeParam(
          data['english_name'],
          ParamType.String,
          false,
        ),
        iso6391: deserializeParam(
          data['iso_639_1'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SpokenLanguagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SpokenLanguagesStruct &&
        englishName == other.englishName &&
        iso6391 == other.iso6391 &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([englishName, iso6391, name]);
}

SpokenLanguagesStruct createSpokenLanguagesStruct({
  String? englishName,
  String? iso6391,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SpokenLanguagesStruct(
      englishName: englishName,
      iso6391: iso6391,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SpokenLanguagesStruct? updateSpokenLanguagesStruct(
  SpokenLanguagesStruct? spokenLanguages, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    spokenLanguages
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSpokenLanguagesStructData(
  Map<String, dynamic> firestoreData,
  SpokenLanguagesStruct? spokenLanguages,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (spokenLanguages == null) {
    return;
  }
  if (spokenLanguages.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && spokenLanguages.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final spokenLanguagesData =
      getSpokenLanguagesFirestoreData(spokenLanguages, forFieldValue);
  final nestedData =
      spokenLanguagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = spokenLanguages.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSpokenLanguagesFirestoreData(
  SpokenLanguagesStruct? spokenLanguages, [
  bool forFieldValue = false,
]) {
  if (spokenLanguages == null) {
    return {};
  }
  final firestoreData = mapToFirestore(spokenLanguages.toMap());

  // Add any Firestore field values
  spokenLanguages.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSpokenLanguagesListFirestoreData(
  List<SpokenLanguagesStruct>? spokenLanguagess,
) =>
    spokenLanguagess
        ?.map((e) => getSpokenLanguagesFirestoreData(e, true))
        .toList() ??
    [];
