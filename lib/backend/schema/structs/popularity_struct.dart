// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PopularityStruct extends FFFirebaseStruct {
  PopularityStruct({
    double? popularity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _popularity = popularity,
        super(firestoreUtilData);

  // "popularity" field.
  double? _popularity;
  double get popularity => _popularity ?? 0.0;
  set popularity(double? val) => _popularity = val;

  void incrementPopularity(double amount) => popularity = popularity + amount;

  bool hasPopularity() => _popularity != null;

  static PopularityStruct fromMap(Map<String, dynamic> data) =>
      PopularityStruct(
        popularity: castToType<double>(data['popularity']),
      );

  static PopularityStruct? maybeFromMap(dynamic data) => data is Map
      ? PopularityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'popularity': _popularity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'popularity': serializeParam(
          _popularity,
          ParamType.double,
        ),
      }.withoutNulls;

  static PopularityStruct fromSerializableMap(Map<String, dynamic> data) =>
      PopularityStruct(
        popularity: deserializeParam(
          data['popularity'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PopularityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PopularityStruct && popularity == other.popularity;
  }

  @override
  int get hashCode => const ListEquality().hash([popularity]);
}

PopularityStruct createPopularityStruct({
  double? popularity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PopularityStruct(
      popularity: popularity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PopularityStruct? updatePopularityStruct(
  PopularityStruct? popularityStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    popularityStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPopularityStructData(
  Map<String, dynamic> firestoreData,
  PopularityStruct? popularityStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (popularityStruct == null) {
    return;
  }
  if (popularityStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && popularityStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final popularityStructData =
      getPopularityFirestoreData(popularityStruct, forFieldValue);
  final nestedData =
      popularityStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = popularityStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPopularityFirestoreData(
  PopularityStruct? popularityStruct, [
  bool forFieldValue = false,
]) {
  if (popularityStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(popularityStruct.toMap());

  // Add any Firestore field values
  popularityStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPopularityListFirestoreData(
  List<PopularityStruct>? popularityStructs,
) =>
    popularityStructs
        ?.map((e) => getPopularityFirestoreData(e, true))
        .toList() ??
    [];
