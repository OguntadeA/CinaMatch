// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProductionCompaniesStruct extends FFFirebaseStruct {
  ProductionCompaniesStruct({
    int? id,
    String? logoPath,
    String? name,
    String? originCountry,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _logoPath = logoPath,
        _name = name,
        _originCountry = originCountry,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "logo_path" field.
  String? _logoPath;
  String get logoPath => _logoPath ?? '';
  set logoPath(String? val) => _logoPath = val;

  bool hasLogoPath() => _logoPath != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "origin_country" field.
  String? _originCountry;
  String get originCountry => _originCountry ?? '';
  set originCountry(String? val) => _originCountry = val;

  bool hasOriginCountry() => _originCountry != null;

  static ProductionCompaniesStruct fromMap(Map<String, dynamic> data) =>
      ProductionCompaniesStruct(
        id: castToType<int>(data['id']),
        logoPath: data['logo_path'] as String?,
        name: data['name'] as String?,
        originCountry: data['origin_country'] as String?,
      );

  static ProductionCompaniesStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductionCompaniesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'logo_path': _logoPath,
        'name': _name,
        'origin_country': _originCountry,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'logo_path': serializeParam(
          _logoPath,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'origin_country': serializeParam(
          _originCountry,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductionCompaniesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductionCompaniesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        logoPath: deserializeParam(
          data['logo_path'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        originCountry: deserializeParam(
          data['origin_country'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductionCompaniesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductionCompaniesStruct &&
        id == other.id &&
        logoPath == other.logoPath &&
        name == other.name &&
        originCountry == other.originCountry;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, logoPath, name, originCountry]);
}

ProductionCompaniesStruct createProductionCompaniesStruct({
  int? id,
  String? logoPath,
  String? name,
  String? originCountry,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductionCompaniesStruct(
      id: id,
      logoPath: logoPath,
      name: name,
      originCountry: originCountry,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductionCompaniesStruct? updateProductionCompaniesStruct(
  ProductionCompaniesStruct? productionCompanies, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productionCompanies
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductionCompaniesStructData(
  Map<String, dynamic> firestoreData,
  ProductionCompaniesStruct? productionCompanies,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productionCompanies == null) {
    return;
  }
  if (productionCompanies.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productionCompanies.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productionCompaniesData =
      getProductionCompaniesFirestoreData(productionCompanies, forFieldValue);
  final nestedData =
      productionCompaniesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      productionCompanies.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductionCompaniesFirestoreData(
  ProductionCompaniesStruct? productionCompanies, [
  bool forFieldValue = false,
]) {
  if (productionCompanies == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productionCompanies.toMap());

  // Add any Firestore field values
  productionCompanies.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductionCompaniesListFirestoreData(
  List<ProductionCompaniesStruct>? productionCompaniess,
) =>
    productionCompaniess
        ?.map((e) => getProductionCompaniesFirestoreData(e, true))
        .toList() ??
    [];
