// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NextEpisodeToAirStruct extends FFFirebaseStruct {
  NextEpisodeToAirStruct({
    int? id,
    String? name,
    String? overview,
    int? voteAverage,
    int? voteCount,
    String? airDate,
    int? episodeNumber,
    String? episodeType,
    String? productionCode,
    String? runtime,
    int? seasonNumber,
    int? showId,
    String? stillPath,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _overview = overview,
        _voteAverage = voteAverage,
        _voteCount = voteCount,
        _airDate = airDate,
        _episodeNumber = episodeNumber,
        _episodeType = episodeType,
        _productionCode = productionCode,
        _runtime = runtime,
        _seasonNumber = seasonNumber,
        _showId = showId,
        _stillPath = stillPath,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "overview" field.
  String? _overview;
  String get overview => _overview ?? '';
  set overview(String? val) => _overview = val;

  bool hasOverview() => _overview != null;

  // "vote_average" field.
  int? _voteAverage;
  int get voteAverage => _voteAverage ?? 0;
  set voteAverage(int? val) => _voteAverage = val;

  void incrementVoteAverage(int amount) => voteAverage = voteAverage + amount;

  bool hasVoteAverage() => _voteAverage != null;

  // "vote_count" field.
  int? _voteCount;
  int get voteCount => _voteCount ?? 0;
  set voteCount(int? val) => _voteCount = val;

  void incrementVoteCount(int amount) => voteCount = voteCount + amount;

  bool hasVoteCount() => _voteCount != null;

  // "air_date" field.
  String? _airDate;
  String get airDate => _airDate ?? '';
  set airDate(String? val) => _airDate = val;

  bool hasAirDate() => _airDate != null;

  // "episode_number" field.
  int? _episodeNumber;
  int get episodeNumber => _episodeNumber ?? 0;
  set episodeNumber(int? val) => _episodeNumber = val;

  void incrementEpisodeNumber(int amount) =>
      episodeNumber = episodeNumber + amount;

  bool hasEpisodeNumber() => _episodeNumber != null;

  // "episode_type" field.
  String? _episodeType;
  String get episodeType => _episodeType ?? '';
  set episodeType(String? val) => _episodeType = val;

  bool hasEpisodeType() => _episodeType != null;

  // "production_code" field.
  String? _productionCode;
  String get productionCode => _productionCode ?? '';
  set productionCode(String? val) => _productionCode = val;

  bool hasProductionCode() => _productionCode != null;

  // "runtime" field.
  String? _runtime;
  String get runtime => _runtime ?? '';
  set runtime(String? val) => _runtime = val;

  bool hasRuntime() => _runtime != null;

  // "season_number" field.
  int? _seasonNumber;
  int get seasonNumber => _seasonNumber ?? 0;
  set seasonNumber(int? val) => _seasonNumber = val;

  void incrementSeasonNumber(int amount) =>
      seasonNumber = seasonNumber + amount;

  bool hasSeasonNumber() => _seasonNumber != null;

  // "show_id" field.
  int? _showId;
  int get showId => _showId ?? 0;
  set showId(int? val) => _showId = val;

  void incrementShowId(int amount) => showId = showId + amount;

  bool hasShowId() => _showId != null;

  // "still_path" field.
  String? _stillPath;
  String get stillPath => _stillPath ?? '';
  set stillPath(String? val) => _stillPath = val;

  bool hasStillPath() => _stillPath != null;

  static NextEpisodeToAirStruct fromMap(Map<String, dynamic> data) =>
      NextEpisodeToAirStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        overview: data['overview'] as String?,
        voteAverage: castToType<int>(data['vote_average']),
        voteCount: castToType<int>(data['vote_count']),
        airDate: data['air_date'] as String?,
        episodeNumber: castToType<int>(data['episode_number']),
        episodeType: data['episode_type'] as String?,
        productionCode: data['production_code'] as String?,
        runtime: data['runtime'] as String?,
        seasonNumber: castToType<int>(data['season_number']),
        showId: castToType<int>(data['show_id']),
        stillPath: data['still_path'] as String?,
      );

  static NextEpisodeToAirStruct? maybeFromMap(dynamic data) => data is Map
      ? NextEpisodeToAirStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'overview': _overview,
        'vote_average': _voteAverage,
        'vote_count': _voteCount,
        'air_date': _airDate,
        'episode_number': _episodeNumber,
        'episode_type': _episodeType,
        'production_code': _productionCode,
        'runtime': _runtime,
        'season_number': _seasonNumber,
        'show_id': _showId,
        'still_path': _stillPath,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'overview': serializeParam(
          _overview,
          ParamType.String,
        ),
        'vote_average': serializeParam(
          _voteAverage,
          ParamType.int,
        ),
        'vote_count': serializeParam(
          _voteCount,
          ParamType.int,
        ),
        'air_date': serializeParam(
          _airDate,
          ParamType.String,
        ),
        'episode_number': serializeParam(
          _episodeNumber,
          ParamType.int,
        ),
        'episode_type': serializeParam(
          _episodeType,
          ParamType.String,
        ),
        'production_code': serializeParam(
          _productionCode,
          ParamType.String,
        ),
        'runtime': serializeParam(
          _runtime,
          ParamType.String,
        ),
        'season_number': serializeParam(
          _seasonNumber,
          ParamType.int,
        ),
        'show_id': serializeParam(
          _showId,
          ParamType.int,
        ),
        'still_path': serializeParam(
          _stillPath,
          ParamType.String,
        ),
      }.withoutNulls;

  static NextEpisodeToAirStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NextEpisodeToAirStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        overview: deserializeParam(
          data['overview'],
          ParamType.String,
          false,
        ),
        voteAverage: deserializeParam(
          data['vote_average'],
          ParamType.int,
          false,
        ),
        voteCount: deserializeParam(
          data['vote_count'],
          ParamType.int,
          false,
        ),
        airDate: deserializeParam(
          data['air_date'],
          ParamType.String,
          false,
        ),
        episodeNumber: deserializeParam(
          data['episode_number'],
          ParamType.int,
          false,
        ),
        episodeType: deserializeParam(
          data['episode_type'],
          ParamType.String,
          false,
        ),
        productionCode: deserializeParam(
          data['production_code'],
          ParamType.String,
          false,
        ),
        runtime: deserializeParam(
          data['runtime'],
          ParamType.String,
          false,
        ),
        seasonNumber: deserializeParam(
          data['season_number'],
          ParamType.int,
          false,
        ),
        showId: deserializeParam(
          data['show_id'],
          ParamType.int,
          false,
        ),
        stillPath: deserializeParam(
          data['still_path'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NextEpisodeToAirStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NextEpisodeToAirStruct &&
        id == other.id &&
        name == other.name &&
        overview == other.overview &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount &&
        airDate == other.airDate &&
        episodeNumber == other.episodeNumber &&
        episodeType == other.episodeType &&
        productionCode == other.productionCode &&
        runtime == other.runtime &&
        seasonNumber == other.seasonNumber &&
        showId == other.showId &&
        stillPath == other.stillPath;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        overview,
        voteAverage,
        voteCount,
        airDate,
        episodeNumber,
        episodeType,
        productionCode,
        runtime,
        seasonNumber,
        showId,
        stillPath
      ]);
}

NextEpisodeToAirStruct createNextEpisodeToAirStruct({
  int? id,
  String? name,
  String? overview,
  int? voteAverage,
  int? voteCount,
  String? airDate,
  int? episodeNumber,
  String? episodeType,
  String? productionCode,
  String? runtime,
  int? seasonNumber,
  int? showId,
  String? stillPath,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NextEpisodeToAirStruct(
      id: id,
      name: name,
      overview: overview,
      voteAverage: voteAverage,
      voteCount: voteCount,
      airDate: airDate,
      episodeNumber: episodeNumber,
      episodeType: episodeType,
      productionCode: productionCode,
      runtime: runtime,
      seasonNumber: seasonNumber,
      showId: showId,
      stillPath: stillPath,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NextEpisodeToAirStruct? updateNextEpisodeToAirStruct(
  NextEpisodeToAirStruct? nextEpisodeToAir, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    nextEpisodeToAir
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNextEpisodeToAirStructData(
  Map<String, dynamic> firestoreData,
  NextEpisodeToAirStruct? nextEpisodeToAir,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (nextEpisodeToAir == null) {
    return;
  }
  if (nextEpisodeToAir.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && nextEpisodeToAir.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final nextEpisodeToAirData =
      getNextEpisodeToAirFirestoreData(nextEpisodeToAir, forFieldValue);
  final nestedData =
      nextEpisodeToAirData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = nextEpisodeToAir.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNextEpisodeToAirFirestoreData(
  NextEpisodeToAirStruct? nextEpisodeToAir, [
  bool forFieldValue = false,
]) {
  if (nextEpisodeToAir == null) {
    return {};
  }
  final firestoreData = mapToFirestore(nextEpisodeToAir.toMap());

  // Add any Firestore field values
  nextEpisodeToAir.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNextEpisodeToAirListFirestoreData(
  List<NextEpisodeToAirStruct>? nextEpisodeToAirs,
) =>
    nextEpisodeToAirs
        ?.map((e) => getNextEpisodeToAirFirestoreData(e, true))
        .toList() ??
    [];
