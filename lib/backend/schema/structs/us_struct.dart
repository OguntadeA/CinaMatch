// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsStruct extends FFFirebaseStruct {
  UsStruct({
    String? link,
    List<FreeStruct>? free,
    List<BuyStruct>? buy,
    List<FlatrateStruct>? flatrate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _link = link,
        _free = free,
        _buy = buy,
        _flatrate = flatrate,
        super(firestoreUtilData);

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;

  bool hasLink() => _link != null;

  // "free" field.
  List<FreeStruct>? _free;
  List<FreeStruct> get free => _free ?? const [];
  set free(List<FreeStruct>? val) => _free = val;

  void updateFree(Function(List<FreeStruct>) updateFn) {
    updateFn(_free ??= []);
  }

  bool hasFree() => _free != null;

  // "buy" field.
  List<BuyStruct>? _buy;
  List<BuyStruct> get buy => _buy ?? const [];
  set buy(List<BuyStruct>? val) => _buy = val;

  void updateBuy(Function(List<BuyStruct>) updateFn) {
    updateFn(_buy ??= []);
  }

  bool hasBuy() => _buy != null;

  // "flatrate" field.
  List<FlatrateStruct>? _flatrate;
  List<FlatrateStruct> get flatrate => _flatrate ?? const [];
  set flatrate(List<FlatrateStruct>? val) => _flatrate = val;

  void updateFlatrate(Function(List<FlatrateStruct>) updateFn) {
    updateFn(_flatrate ??= []);
  }

  bool hasFlatrate() => _flatrate != null;

  static UsStruct fromMap(Map<String, dynamic> data) => UsStruct(
        link: data['link'] as String?,
        free: getStructList(
          data['free'],
          FreeStruct.fromMap,
        ),
        buy: getStructList(
          data['buy'],
          BuyStruct.fromMap,
        ),
        flatrate: getStructList(
          data['flatrate'],
          FlatrateStruct.fromMap,
        ),
      );

  static UsStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'link': _link,
        'free': _free?.map((e) => e.toMap()).toList(),
        'buy': _buy?.map((e) => e.toMap()).toList(),
        'flatrate': _flatrate?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'link': serializeParam(
          _link,
          ParamType.String,
        ),
        'free': serializeParam(
          _free,
          ParamType.DataStruct,
          isList: true,
        ),
        'buy': serializeParam(
          _buy,
          ParamType.DataStruct,
          isList: true,
        ),
        'flatrate': serializeParam(
          _flatrate,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static UsStruct fromSerializableMap(Map<String, dynamic> data) => UsStruct(
        link: deserializeParam(
          data['link'],
          ParamType.String,
          false,
        ),
        free: deserializeStructParam<FreeStruct>(
          data['free'],
          ParamType.DataStruct,
          true,
          structBuilder: FreeStruct.fromSerializableMap,
        ),
        buy: deserializeStructParam<BuyStruct>(
          data['buy'],
          ParamType.DataStruct,
          true,
          structBuilder: BuyStruct.fromSerializableMap,
        ),
        flatrate: deserializeStructParam<FlatrateStruct>(
          data['flatrate'],
          ParamType.DataStruct,
          true,
          structBuilder: FlatrateStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UsStruct &&
        link == other.link &&
        listEquality.equals(free, other.free) &&
        listEquality.equals(buy, other.buy) &&
        listEquality.equals(flatrate, other.flatrate);
  }

  @override
  int get hashCode => const ListEquality().hash([link, free, buy, flatrate]);
}

UsStruct createUsStruct({
  String? link,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsStruct(
      link: link,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UsStruct? updateUsStruct(
  UsStruct? us, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    us
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUsStructData(
  Map<String, dynamic> firestoreData,
  UsStruct? us,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (us == null) {
    return;
  }
  if (us.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && us.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usData = getUsFirestoreData(us, forFieldValue);
  final nestedData = usData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = us.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUsFirestoreData(
  UsStruct? us, [
  bool forFieldValue = false,
]) {
  if (us == null) {
    return {};
  }
  final firestoreData = mapToFirestore(us.toMap());

  // Add any Firestore field values
  us.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsListFirestoreData(
  List<UsStruct>? uss,
) =>
    uss?.map((e) => getUsFirestoreData(e, true)).toList() ?? [];
