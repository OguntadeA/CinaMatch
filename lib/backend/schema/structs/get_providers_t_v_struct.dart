// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetProvidersTVStruct extends FFFirebaseStruct {
  GetProvidersTVStruct({
    int? id,
    ResultsUSStruct? results,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _results = results,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "results" field.
  ResultsUSStruct? _results;
  ResultsUSStruct get results => _results ?? ResultsUSStruct();
  set results(ResultsUSStruct? val) => _results = val;

  void updateResults(Function(ResultsUSStruct) updateFn) {
    updateFn(_results ??= ResultsUSStruct());
  }

  bool hasResults() => _results != null;

  static GetProvidersTVStruct fromMap(Map<String, dynamic> data) =>
      GetProvidersTVStruct(
        id: castToType<int>(data['id']),
        results: data['results'] is ResultsUSStruct
            ? data['results']
            : ResultsUSStruct.maybeFromMap(data['results']),
      );

  static GetProvidersTVStruct? maybeFromMap(dynamic data) => data is Map
      ? GetProvidersTVStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'results': _results?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'results': serializeParam(
          _results,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static GetProvidersTVStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetProvidersTVStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        results: deserializeStructParam(
          data['results'],
          ParamType.DataStruct,
          false,
          structBuilder: ResultsUSStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GetProvidersTVStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetProvidersTVStruct &&
        id == other.id &&
        results == other.results;
  }

  @override
  int get hashCode => const ListEquality().hash([id, results]);
}

GetProvidersTVStruct createGetProvidersTVStruct({
  int? id,
  ResultsUSStruct? results,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GetProvidersTVStruct(
      id: id,
      results: results ?? (clearUnsetFields ? ResultsUSStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GetProvidersTVStruct? updateGetProvidersTVStruct(
  GetProvidersTVStruct? getProvidersTV, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    getProvidersTV
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGetProvidersTVStructData(
  Map<String, dynamic> firestoreData,
  GetProvidersTVStruct? getProvidersTV,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (getProvidersTV == null) {
    return;
  }
  if (getProvidersTV.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && getProvidersTV.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final getProvidersTVData =
      getGetProvidersTVFirestoreData(getProvidersTV, forFieldValue);
  final nestedData =
      getProvidersTVData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = getProvidersTV.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGetProvidersTVFirestoreData(
  GetProvidersTVStruct? getProvidersTV, [
  bool forFieldValue = false,
]) {
  if (getProvidersTV == null) {
    return {};
  }
  final firestoreData = mapToFirestore(getProvidersTV.toMap());

  // Handle nested data for "results" field.
  addResultsUSStructData(
    firestoreData,
    getProvidersTV.hasResults() ? getProvidersTV.results : null,
    'results',
    forFieldValue,
  );

  // Add any Firestore field values
  getProvidersTV.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGetProvidersTVListFirestoreData(
  List<GetProvidersTVStruct>? getProvidersTVs,
) =>
    getProvidersTVs
        ?.map((e) => getGetProvidersTVFirestoreData(e, true))
        .toList() ??
    [];
