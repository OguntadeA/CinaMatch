// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NetworksStruct extends FFFirebaseStruct {
  NetworksStruct({
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

  static NetworksStruct fromMap(Map<String, dynamic> data) => NetworksStruct(
        id: castToType<int>(data['id']),
        logoPath: data['logo_path'] as String?,
        name: data['name'] as String?,
        originCountry: data['origin_country'] as String?,
      );

  static NetworksStruct? maybeFromMap(dynamic data) =>
      data is Map ? NetworksStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static NetworksStruct fromSerializableMap(Map<String, dynamic> data) =>
      NetworksStruct(
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
  String toString() => 'NetworksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NetworksStruct &&
        id == other.id &&
        logoPath == other.logoPath &&
        name == other.name &&
        originCountry == other.originCountry;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, logoPath, name, originCountry]);
}

NetworksStruct createNetworksStruct({
  int? id,
  String? logoPath,
  String? name,
  String? originCountry,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NetworksStruct(
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

NetworksStruct? updateNetworksStruct(
  NetworksStruct? networks, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    networks
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNetworksStructData(
  Map<String, dynamic> firestoreData,
  NetworksStruct? networks,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (networks == null) {
    return;
  }
  if (networks.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && networks.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final networksData = getNetworksFirestoreData(networks, forFieldValue);
  final nestedData = networksData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = networks.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNetworksFirestoreData(
  NetworksStruct? networks, [
  bool forFieldValue = false,
]) {
  if (networks == null) {
    return {};
  }
  final firestoreData = mapToFirestore(networks.toMap());

  // Add any Firestore field values
  networks.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNetworksListFirestoreData(
  List<NetworksStruct>? networkss,
) =>
    networkss?.map((e) => getNetworksFirestoreData(e, true)).toList() ?? [];
