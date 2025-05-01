// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultsUSStruct extends FFFirebaseStruct {
  ResultsUSStruct({
    UsStruct? us,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _us = us,
        super(firestoreUtilData);

  // "US" field.
  UsStruct? _us;
  UsStruct get us => _us ?? UsStruct();
  set us(UsStruct? val) => _us = val;

  void updateUs(Function(UsStruct) updateFn) {
    updateFn(_us ??= UsStruct());
  }

  bool hasUs() => _us != null;

  static ResultsUSStruct fromMap(Map<String, dynamic> data) => ResultsUSStruct(
        us: data['US'] is UsStruct
            ? data['US']
            : UsStruct.maybeFromMap(data['US']),
      );

  static ResultsUSStruct? maybeFromMap(dynamic data) => data is Map
      ? ResultsUSStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'US': _us?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'US': serializeParam(
          _us,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ResultsUSStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultsUSStruct(
        us: deserializeStructParam(
          data['US'],
          ParamType.DataStruct,
          false,
          structBuilder: UsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ResultsUSStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResultsUSStruct && us == other.us;
  }

  @override
  int get hashCode => const ListEquality().hash([us]);
}

ResultsUSStruct createResultsUSStruct({
  UsStruct? us,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResultsUSStruct(
      us: us ?? (clearUnsetFields ? UsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResultsUSStruct? updateResultsUSStruct(
  ResultsUSStruct? resultsUS, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    resultsUS
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResultsUSStructData(
  Map<String, dynamic> firestoreData,
  ResultsUSStruct? resultsUS,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (resultsUS == null) {
    return;
  }
  if (resultsUS.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && resultsUS.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final resultsUSData = getResultsUSFirestoreData(resultsUS, forFieldValue);
  final nestedData = resultsUSData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = resultsUS.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResultsUSFirestoreData(
  ResultsUSStruct? resultsUS, [
  bool forFieldValue = false,
]) {
  if (resultsUS == null) {
    return {};
  }
  final firestoreData = mapToFirestore(resultsUS.toMap());

  // Handle nested data for "US" field.
  addUsStructData(
    firestoreData,
    resultsUS.hasUs() ? resultsUS.us : null,
    'US',
    forFieldValue,
  );

  // Add any Firestore field values
  resultsUS.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResultsUSListFirestoreData(
  List<ResultsUSStruct>? resultsUSs,
) =>
    resultsUSs?.map((e) => getResultsUSFirestoreData(e, true)).toList() ?? [];
