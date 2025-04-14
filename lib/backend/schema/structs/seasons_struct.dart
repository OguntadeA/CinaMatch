// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SeasonsStruct extends FFFirebaseStruct {
  SeasonsStruct({
    String? airDate,
    int? episodeCount,
    int? id,
    String? name,
    String? overview,
    String? posterPath,
    int? seasonNumber,
    int? voteAverage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _airDate = airDate,
        _episodeCount = episodeCount,
        _id = id,
        _name = name,
        _overview = overview,
        _posterPath = posterPath,
        _seasonNumber = seasonNumber,
        _voteAverage = voteAverage,
        super(firestoreUtilData);

  // "air_date" field.
  String? _airDate;
  String get airDate => _airDate ?? '';
  set airDate(String? val) => _airDate = val;

  bool hasAirDate() => _airDate != null;

  // "episode_count" field.
  int? _episodeCount;
  int get episodeCount => _episodeCount ?? 0;
  set episodeCount(int? val) => _episodeCount = val;

  void incrementEpisodeCount(int amount) =>
      episodeCount = episodeCount + amount;

  bool hasEpisodeCount() => _episodeCount != null;

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

  // "poster_path" field.
  String? _posterPath;
  String get posterPath => _posterPath ?? '';
  set posterPath(String? val) => _posterPath = val;

  bool hasPosterPath() => _posterPath != null;

  // "season_number" field.
  int? _seasonNumber;
  int get seasonNumber => _seasonNumber ?? 0;
  set seasonNumber(int? val) => _seasonNumber = val;

  void incrementSeasonNumber(int amount) =>
      seasonNumber = seasonNumber + amount;

  bool hasSeasonNumber() => _seasonNumber != null;

  // "vote_average" field.
  int? _voteAverage;
  int get voteAverage => _voteAverage ?? 0;
  set voteAverage(int? val) => _voteAverage = val;

  void incrementVoteAverage(int amount) => voteAverage = voteAverage + amount;

  bool hasVoteAverage() => _voteAverage != null;

  static SeasonsStruct fromMap(Map<String, dynamic> data) => SeasonsStruct(
        airDate: data['air_date'] as String?,
        episodeCount: castToType<int>(data['episode_count']),
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        overview: data['overview'] as String?,
        posterPath: data['poster_path'] as String?,
        seasonNumber: castToType<int>(data['season_number']),
        voteAverage: castToType<int>(data['vote_average']),
      );

  static SeasonsStruct? maybeFromMap(dynamic data) =>
      data is Map ? SeasonsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'air_date': _airDate,
        'episode_count': _episodeCount,
        'id': _id,
        'name': _name,
        'overview': _overview,
        'poster_path': _posterPath,
        'season_number': _seasonNumber,
        'vote_average': _voteAverage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'air_date': serializeParam(
          _airDate,
          ParamType.String,
        ),
        'episode_count': serializeParam(
          _episodeCount,
          ParamType.int,
        ),
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
        'poster_path': serializeParam(
          _posterPath,
          ParamType.String,
        ),
        'season_number': serializeParam(
          _seasonNumber,
          ParamType.int,
        ),
        'vote_average': serializeParam(
          _voteAverage,
          ParamType.int,
        ),
      }.withoutNulls;

  static SeasonsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SeasonsStruct(
        airDate: deserializeParam(
          data['air_date'],
          ParamType.String,
          false,
        ),
        episodeCount: deserializeParam(
          data['episode_count'],
          ParamType.int,
          false,
        ),
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
        posterPath: deserializeParam(
          data['poster_path'],
          ParamType.String,
          false,
        ),
        seasonNumber: deserializeParam(
          data['season_number'],
          ParamType.int,
          false,
        ),
        voteAverage: deserializeParam(
          data['vote_average'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SeasonsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SeasonsStruct &&
        airDate == other.airDate &&
        episodeCount == other.episodeCount &&
        id == other.id &&
        name == other.name &&
        overview == other.overview &&
        posterPath == other.posterPath &&
        seasonNumber == other.seasonNumber &&
        voteAverage == other.voteAverage;
  }

  @override
  int get hashCode => const ListEquality().hash([
        airDate,
        episodeCount,
        id,
        name,
        overview,
        posterPath,
        seasonNumber,
        voteAverage
      ]);
}

SeasonsStruct createSeasonsStruct({
  String? airDate,
  int? episodeCount,
  int? id,
  String? name,
  String? overview,
  String? posterPath,
  int? seasonNumber,
  int? voteAverage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SeasonsStruct(
      airDate: airDate,
      episodeCount: episodeCount,
      id: id,
      name: name,
      overview: overview,
      posterPath: posterPath,
      seasonNumber: seasonNumber,
      voteAverage: voteAverage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SeasonsStruct? updateSeasonsStruct(
  SeasonsStruct? seasons, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    seasons
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSeasonsStructData(
  Map<String, dynamic> firestoreData,
  SeasonsStruct? seasons,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (seasons == null) {
    return;
  }
  if (seasons.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && seasons.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final seasonsData = getSeasonsFirestoreData(seasons, forFieldValue);
  final nestedData = seasonsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = seasons.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSeasonsFirestoreData(
  SeasonsStruct? seasons, [
  bool forFieldValue = false,
]) {
  if (seasons == null) {
    return {};
  }
  final firestoreData = mapToFirestore(seasons.toMap());

  // Add any Firestore field values
  seasons.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSeasonsListFirestoreData(
  List<SeasonsStruct>? seasonss,
) =>
    seasonss?.map((e) => getSeasonsFirestoreData(e, true)).toList() ?? [];
