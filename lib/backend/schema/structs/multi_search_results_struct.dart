// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MultiSearchResultsStruct extends FFFirebaseStruct {
  MultiSearchResultsStruct({
    String? backdropPath,
    int? id,
    String? name,
    String? originalName,
    String? overview,
    String? posterPath,
    String? mediaType,
    bool? adult,
    String? originalLanguage,
    List<int>? genreIds,
    double? popularity,
    String? firstAirDate,
    double? voteAverage,
    int? voteCount,
    List<String>? originCountry,
    String? originalTitle,
    String? title,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _backdropPath = backdropPath,
        _id = id,
        _name = name,
        _originalName = originalName,
        _overview = overview,
        _posterPath = posterPath,
        _mediaType = mediaType,
        _adult = adult,
        _originalLanguage = originalLanguage,
        _genreIds = genreIds,
        _popularity = popularity,
        _firstAirDate = firstAirDate,
        _voteAverage = voteAverage,
        _voteCount = voteCount,
        _originCountry = originCountry,
        _originalTitle = originalTitle,
        _title = title,
        super(firestoreUtilData);

  // "backdrop_path" field.
  String? _backdropPath;
  String get backdropPath => _backdropPath ?? '';
  set backdropPath(String? val) => _backdropPath = val;

  bool hasBackdropPath() => _backdropPath != null;

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

  // "original_name" field.
  String? _originalName;
  String get originalName => _originalName ?? '';
  set originalName(String? val) => _originalName = val;

  bool hasOriginalName() => _originalName != null;

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

  // "media_type" field.
  String? _mediaType;
  String get mediaType => _mediaType ?? 'movie';
  set mediaType(String? val) => _mediaType = val;

  bool hasMediaType() => _mediaType != null;

  // "adult" field.
  bool? _adult;
  bool get adult => _adult ?? false;
  set adult(bool? val) => _adult = val;

  bool hasAdult() => _adult != null;

  // "original_language" field.
  String? _originalLanguage;
  String get originalLanguage => _originalLanguage ?? '';
  set originalLanguage(String? val) => _originalLanguage = val;

  bool hasOriginalLanguage() => _originalLanguage != null;

  // "genre_ids" field.
  List<int>? _genreIds;
  List<int> get genreIds => _genreIds ?? const [];
  set genreIds(List<int>? val) => _genreIds = val;

  void updateGenreIds(Function(List<int>) updateFn) {
    updateFn(_genreIds ??= []);
  }

  bool hasGenreIds() => _genreIds != null;

  // "popularity" field.
  double? _popularity;
  double get popularity => _popularity ?? 0.0;
  set popularity(double? val) => _popularity = val;

  void incrementPopularity(double amount) => popularity = popularity + amount;

  bool hasPopularity() => _popularity != null;

  // "first_air_date" field.
  String? _firstAirDate;
  String get firstAirDate => _firstAirDate ?? '';
  set firstAirDate(String? val) => _firstAirDate = val;

  bool hasFirstAirDate() => _firstAirDate != null;

  // "vote_average" field.
  double? _voteAverage;
  double get voteAverage => _voteAverage ?? 0.0;
  set voteAverage(double? val) => _voteAverage = val;

  void incrementVoteAverage(double amount) =>
      voteAverage = voteAverage + amount;

  bool hasVoteAverage() => _voteAverage != null;

  // "vote_count" field.
  int? _voteCount;
  int get voteCount => _voteCount ?? 0;
  set voteCount(int? val) => _voteCount = val;

  void incrementVoteCount(int amount) => voteCount = voteCount + amount;

  bool hasVoteCount() => _voteCount != null;

  // "origin_country" field.
  List<String>? _originCountry;
  List<String> get originCountry => _originCountry ?? const [];
  set originCountry(List<String>? val) => _originCountry = val;

  void updateOriginCountry(Function(List<String>) updateFn) {
    updateFn(_originCountry ??= []);
  }

  bool hasOriginCountry() => _originCountry != null;

  // "original_title" field.
  String? _originalTitle;
  String get originalTitle => _originalTitle ?? '';
  set originalTitle(String? val) => _originalTitle = val;

  bool hasOriginalTitle() => _originalTitle != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  static MultiSearchResultsStruct fromMap(Map<String, dynamic> data) =>
      MultiSearchResultsStruct(
        backdropPath: data['backdrop_path'] as String?,
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        originalName: data['original_name'] as String?,
        overview: data['overview'] as String?,
        posterPath: data['poster_path'] as String?,
        mediaType: data['media_type'] as String?,
        adult: data['adult'] as bool?,
        originalLanguage: data['original_language'] as String?,
        genreIds: getDataList(data['genre_ids']),
        popularity: castToType<double>(data['popularity']),
        firstAirDate: data['first_air_date'] as String?,
        voteAverage: castToType<double>(data['vote_average']),
        voteCount: castToType<int>(data['vote_count']),
        originCountry: getDataList(data['origin_country']),
        originalTitle: data['original_title'] as String?,
        title: data['title'] as String?,
      );

  static MultiSearchResultsStruct? maybeFromMap(dynamic data) => data is Map
      ? MultiSearchResultsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'backdrop_path': _backdropPath,
        'id': _id,
        'name': _name,
        'original_name': _originalName,
        'overview': _overview,
        'poster_path': _posterPath,
        'media_type': _mediaType,
        'adult': _adult,
        'original_language': _originalLanguage,
        'genre_ids': _genreIds,
        'popularity': _popularity,
        'first_air_date': _firstAirDate,
        'vote_average': _voteAverage,
        'vote_count': _voteCount,
        'origin_country': _originCountry,
        'original_title': _originalTitle,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'backdrop_path': serializeParam(
          _backdropPath,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'original_name': serializeParam(
          _originalName,
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
        'media_type': serializeParam(
          _mediaType,
          ParamType.String,
        ),
        'adult': serializeParam(
          _adult,
          ParamType.bool,
        ),
        'original_language': serializeParam(
          _originalLanguage,
          ParamType.String,
        ),
        'genre_ids': serializeParam(
          _genreIds,
          ParamType.int,
          isList: true,
        ),
        'popularity': serializeParam(
          _popularity,
          ParamType.double,
        ),
        'first_air_date': serializeParam(
          _firstAirDate,
          ParamType.String,
        ),
        'vote_average': serializeParam(
          _voteAverage,
          ParamType.double,
        ),
        'vote_count': serializeParam(
          _voteCount,
          ParamType.int,
        ),
        'origin_country': serializeParam(
          _originCountry,
          ParamType.String,
          isList: true,
        ),
        'original_title': serializeParam(
          _originalTitle,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static MultiSearchResultsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MultiSearchResultsStruct(
        backdropPath: deserializeParam(
          data['backdrop_path'],
          ParamType.String,
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
        originalName: deserializeParam(
          data['original_name'],
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
        mediaType: deserializeParam(
          data['media_type'],
          ParamType.String,
          false,
        ),
        adult: deserializeParam(
          data['adult'],
          ParamType.bool,
          false,
        ),
        originalLanguage: deserializeParam(
          data['original_language'],
          ParamType.String,
          false,
        ),
        genreIds: deserializeParam<int>(
          data['genre_ids'],
          ParamType.int,
          true,
        ),
        popularity: deserializeParam(
          data['popularity'],
          ParamType.double,
          false,
        ),
        firstAirDate: deserializeParam(
          data['first_air_date'],
          ParamType.String,
          false,
        ),
        voteAverage: deserializeParam(
          data['vote_average'],
          ParamType.double,
          false,
        ),
        voteCount: deserializeParam(
          data['vote_count'],
          ParamType.int,
          false,
        ),
        originCountry: deserializeParam<String>(
          data['origin_country'],
          ParamType.String,
          true,
        ),
        originalTitle: deserializeParam(
          data['original_title'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MultiSearchResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MultiSearchResultsStruct &&
        backdropPath == other.backdropPath &&
        id == other.id &&
        name == other.name &&
        originalName == other.originalName &&
        overview == other.overview &&
        posterPath == other.posterPath &&
        mediaType == other.mediaType &&
        adult == other.adult &&
        originalLanguage == other.originalLanguage &&
        listEquality.equals(genreIds, other.genreIds) &&
        popularity == other.popularity &&
        firstAirDate == other.firstAirDate &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount &&
        listEquality.equals(originCountry, other.originCountry) &&
        originalTitle == other.originalTitle &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([
        backdropPath,
        id,
        name,
        originalName,
        overview,
        posterPath,
        mediaType,
        adult,
        originalLanguage,
        genreIds,
        popularity,
        firstAirDate,
        voteAverage,
        voteCount,
        originCountry,
        originalTitle,
        title
      ]);
}

MultiSearchResultsStruct createMultiSearchResultsStruct({
  String? backdropPath,
  int? id,
  String? name,
  String? originalName,
  String? overview,
  String? posterPath,
  String? mediaType,
  bool? adult,
  String? originalLanguage,
  double? popularity,
  String? firstAirDate,
  double? voteAverage,
  int? voteCount,
  String? originalTitle,
  String? title,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MultiSearchResultsStruct(
      backdropPath: backdropPath,
      id: id,
      name: name,
      originalName: originalName,
      overview: overview,
      posterPath: posterPath,
      mediaType: mediaType,
      adult: adult,
      originalLanguage: originalLanguage,
      popularity: popularity,
      firstAirDate: firstAirDate,
      voteAverage: voteAverage,
      voteCount: voteCount,
      originalTitle: originalTitle,
      title: title,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MultiSearchResultsStruct? updateMultiSearchResultsStruct(
  MultiSearchResultsStruct? multiSearchResults, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    multiSearchResults
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMultiSearchResultsStructData(
  Map<String, dynamic> firestoreData,
  MultiSearchResultsStruct? multiSearchResults,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (multiSearchResults == null) {
    return;
  }
  if (multiSearchResults.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && multiSearchResults.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final multiSearchResultsData =
      getMultiSearchResultsFirestoreData(multiSearchResults, forFieldValue);
  final nestedData =
      multiSearchResultsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      multiSearchResults.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMultiSearchResultsFirestoreData(
  MultiSearchResultsStruct? multiSearchResults, [
  bool forFieldValue = false,
]) {
  if (multiSearchResults == null) {
    return {};
  }
  final firestoreData = mapToFirestore(multiSearchResults.toMap());

  // Add any Firestore field values
  multiSearchResults.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMultiSearchResultsListFirestoreData(
  List<MultiSearchResultsStruct>? multiSearchResultss,
) =>
    multiSearchResultss
        ?.map((e) => getMultiSearchResultsFirestoreData(e, true))
        .toList() ??
    [];
