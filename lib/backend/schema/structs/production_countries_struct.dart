// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProductionCountriesStruct extends FFFirebaseStruct {
  ProductionCountriesStruct({
    String? iso31661,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _iso31661 = iso31661,
        _name = name,
        super(firestoreUtilData);

  // "iso_3166_1" field.
  String? _iso31661;
  String get iso31661 => _iso31661 ?? '';
  set iso31661(String? val) => _iso31661 = val;

  bool hasIso31661() => _iso31661 != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static ProductionCountriesStruct fromMap(Map<String, dynamic> data) =>
      ProductionCountriesStruct(
        iso31661: data['iso_3166_1'] as String?,
        name: data['name'] as String?,
      );

  static ProductionCountriesStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductionCountriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'iso_3166_1': _iso31661,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'iso_3166_1': serializeParam(
          _iso31661,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductionCountriesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductionCountriesStruct(
        iso31661: deserializeParam(
          data['iso_3166_1'],
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
  String toString() => 'ProductionCountriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductionCountriesStruct &&
        iso31661 == other.iso31661 &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([iso31661, name]);
}

ProductionCountriesStruct createProductionCountriesStruct({
  String? iso31661,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductionCountriesStruct(
      iso31661: iso31661,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductionCountriesStruct? updateProductionCountriesStruct(
  ProductionCountriesStruct? productionCountries, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productionCountries
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductionCountriesStructData(
  Map<String, dynamic> firestoreData,
  ProductionCountriesStruct? productionCountries,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productionCountries == null) {
    return;
  }
  if (productionCountries.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productionCountries.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productionCountriesData =
      getProductionCountriesFirestoreData(productionCountries, forFieldValue);
  final nestedData =
      productionCountriesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      productionCountries.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductionCountriesFirestoreData(
  ProductionCountriesStruct? productionCountries, [
  bool forFieldValue = false,
]) {
  if (productionCountries == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productionCountries.toMap());

  // Add any Firestore field values
  productionCountries.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductionCountriesListFirestoreData(
  List<ProductionCountriesStruct>? productionCountriess,
) =>
    productionCountriess
        ?.map((e) => getProductionCountriesFirestoreData(e, true))
        .toList() ??
    [];
