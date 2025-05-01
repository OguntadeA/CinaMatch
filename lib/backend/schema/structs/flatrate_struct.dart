// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FlatrateStruct extends FFFirebaseStruct {
  FlatrateStruct({
    String? logoPath,
    int? providerId,
    String? providerName,
    int? displayPriority,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _logoPath = logoPath,
        _providerId = providerId,
        _providerName = providerName,
        _displayPriority = displayPriority,
        super(firestoreUtilData);

  // "logo_path" field.
  String? _logoPath;
  String get logoPath => _logoPath ?? '';
  set logoPath(String? val) => _logoPath = val;

  bool hasLogoPath() => _logoPath != null;

  // "provider_id" field.
  int? _providerId;
  int get providerId => _providerId ?? 0;
  set providerId(int? val) => _providerId = val;

  void incrementProviderId(int amount) => providerId = providerId + amount;

  bool hasProviderId() => _providerId != null;

  // "provider_name" field.
  String? _providerName;
  String get providerName => _providerName ?? '';
  set providerName(String? val) => _providerName = val;

  bool hasProviderName() => _providerName != null;

  // "display_priority" field.
  int? _displayPriority;
  int get displayPriority => _displayPriority ?? 0;
  set displayPriority(int? val) => _displayPriority = val;

  void incrementDisplayPriority(int amount) =>
      displayPriority = displayPriority + amount;

  bool hasDisplayPriority() => _displayPriority != null;

  static FlatrateStruct fromMap(Map<String, dynamic> data) => FlatrateStruct(
        logoPath: data['logo_path'] as String?,
        providerId: castToType<int>(data['provider_id']),
        providerName: data['provider_name'] as String?,
        displayPriority: castToType<int>(data['display_priority']),
      );

  static FlatrateStruct? maybeFromMap(dynamic data) =>
      data is Map ? FlatrateStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'logo_path': _logoPath,
        'provider_id': _providerId,
        'provider_name': _providerName,
        'display_priority': _displayPriority,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'logo_path': serializeParam(
          _logoPath,
          ParamType.String,
        ),
        'provider_id': serializeParam(
          _providerId,
          ParamType.int,
        ),
        'provider_name': serializeParam(
          _providerName,
          ParamType.String,
        ),
        'display_priority': serializeParam(
          _displayPriority,
          ParamType.int,
        ),
      }.withoutNulls;

  static FlatrateStruct fromSerializableMap(Map<String, dynamic> data) =>
      FlatrateStruct(
        logoPath: deserializeParam(
          data['logo_path'],
          ParamType.String,
          false,
        ),
        providerId: deserializeParam(
          data['provider_id'],
          ParamType.int,
          false,
        ),
        providerName: deserializeParam(
          data['provider_name'],
          ParamType.String,
          false,
        ),
        displayPriority: deserializeParam(
          data['display_priority'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'FlatrateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FlatrateStruct &&
        logoPath == other.logoPath &&
        providerId == other.providerId &&
        providerName == other.providerName &&
        displayPriority == other.displayPriority;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([logoPath, providerId, providerName, displayPriority]);
}

FlatrateStruct createFlatrateStruct({
  String? logoPath,
  int? providerId,
  String? providerName,
  int? displayPriority,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FlatrateStruct(
      logoPath: logoPath,
      providerId: providerId,
      providerName: providerName,
      displayPriority: displayPriority,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FlatrateStruct? updateFlatrateStruct(
  FlatrateStruct? flatrate, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    flatrate
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFlatrateStructData(
  Map<String, dynamic> firestoreData,
  FlatrateStruct? flatrate,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (flatrate == null) {
    return;
  }
  if (flatrate.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && flatrate.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final flatrateData = getFlatrateFirestoreData(flatrate, forFieldValue);
  final nestedData = flatrateData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = flatrate.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFlatrateFirestoreData(
  FlatrateStruct? flatrate, [
  bool forFieldValue = false,
]) {
  if (flatrate == null) {
    return {};
  }
  final firestoreData = mapToFirestore(flatrate.toMap());

  // Add any Firestore field values
  flatrate.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFlatrateListFirestoreData(
  List<FlatrateStruct>? flatrates,
) =>
    flatrates?.map((e) => getFlatrateFirestoreData(e, true)).toList() ?? [];
