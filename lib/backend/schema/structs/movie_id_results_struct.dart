// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MovieIdResultsStruct extends FFFirebaseStruct {
  MovieIdResultsStruct({
    bool? adult,
    String? backdropPath,
    BelongsToCollectionStruct? belongsToCollection,
    int? budget,
    List<GenresStruct>? genres,
    String? homepage,
    int? id,
    String? imdbId,
    List<String>? originCountry,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    List<ProductionCompaniesStruct>? productionCompanies,
    List<ProductionCountriesStruct>? productionCountries,
    String? releaseDate,
    int? revenue,
    int? runtime,
    List<SpokenLanguagesStruct>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _adult = adult,
        _backdropPath = backdropPath,
        _belongsToCollection = belongsToCollection,
        _budget = budget,
        _genres = genres,
        _homepage = homepage,
        _id = id,
        _imdbId = imdbId,
        _originCountry = originCountry,
        _originalLanguage = originalLanguage,
        _originalTitle = originalTitle,
        _overview = overview,
        _popularity = popularity,
        _posterPath = posterPath,
        _productionCompanies = productionCompanies,
        _productionCountries = productionCountries,
        _releaseDate = releaseDate,
        _revenue = revenue,
        _runtime = runtime,
        _spokenLanguages = spokenLanguages,
        _status = status,
        _tagline = tagline,
        _title = title,
        _video = video,
        _voteAverage = voteAverage,
        _voteCount = voteCount,
        super(firestoreUtilData);

  // "adult" field.
  bool? _adult;
  bool get adult => _adult ?? false;
  set adult(bool? val) => _adult = val;

  bool hasAdult() => _adult != null;

  // "backdrop_path" field.
  String? _backdropPath;
  String get backdropPath => _backdropPath ?? '';
  set backdropPath(String? val) => _backdropPath = val;

  bool hasBackdropPath() => _backdropPath != null;

  // "belongs_to_collection" field.
  BelongsToCollectionStruct? _belongsToCollection;
  BelongsToCollectionStruct get belongsToCollection =>
      _belongsToCollection ?? BelongsToCollectionStruct();
  set belongsToCollection(BelongsToCollectionStruct? val) =>
      _belongsToCollection = val;

  void updateBelongsToCollection(Function(BelongsToCollectionStruct) updateFn) {
    updateFn(_belongsToCollection ??= BelongsToCollectionStruct());
  }

  bool hasBelongsToCollection() => _belongsToCollection != null;

  // "budget" field.
  int? _budget;
  int get budget => _budget ?? 0;
  set budget(int? val) => _budget = val;

  void incrementBudget(int amount) => budget = budget + amount;

  bool hasBudget() => _budget != null;

  // "genres" field.
  List<GenresStruct>? _genres;
  List<GenresStruct> get genres => _genres ?? const [];
  set genres(List<GenresStruct>? val) => _genres = val;

  void updateGenres(Function(List<GenresStruct>) updateFn) {
    updateFn(_genres ??= []);
  }

  bool hasGenres() => _genres != null;

  // "homepage" field.
  String? _homepage;
  String get homepage => _homepage ?? '';
  set homepage(String? val) => _homepage = val;

  bool hasHomepage() => _homepage != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "imdb_id" field.
  String? _imdbId;
  String get imdbId => _imdbId ?? '';
  set imdbId(String? val) => _imdbId = val;

  bool hasImdbId() => _imdbId != null;

  // "origin_country" field.
  List<String>? _originCountry;
  List<String> get originCountry => _originCountry ?? const [];
  set originCountry(List<String>? val) => _originCountry = val;

  void updateOriginCountry(Function(List<String>) updateFn) {
    updateFn(_originCountry ??= []);
  }

  bool hasOriginCountry() => _originCountry != null;

  // "original_language" field.
  String? _originalLanguage;
  String get originalLanguage => _originalLanguage ?? '';
  set originalLanguage(String? val) => _originalLanguage = val;

  bool hasOriginalLanguage() => _originalLanguage != null;

  // "original_title" field.
  String? _originalTitle;
  String get originalTitle => _originalTitle ?? '';
  set originalTitle(String? val) => _originalTitle = val;

  bool hasOriginalTitle() => _originalTitle != null;

  // "overview" field.
  String? _overview;
  String get overview => _overview ?? '';
  set overview(String? val) => _overview = val;

  bool hasOverview() => _overview != null;

  // "popularity" field.
  double? _popularity;
  double get popularity => _popularity ?? 0.0;
  set popularity(double? val) => _popularity = val;

  void incrementPopularity(double amount) => popularity = popularity + amount;

  bool hasPopularity() => _popularity != null;

  // "poster_path" field.
  String? _posterPath;
  String get posterPath => _posterPath ?? '';
  set posterPath(String? val) => _posterPath = val;

  bool hasPosterPath() => _posterPath != null;

  // "production_companies" field.
  List<ProductionCompaniesStruct>? _productionCompanies;
  List<ProductionCompaniesStruct> get productionCompanies =>
      _productionCompanies ?? const [];
  set productionCompanies(List<ProductionCompaniesStruct>? val) =>
      _productionCompanies = val;

  void updateProductionCompanies(
      Function(List<ProductionCompaniesStruct>) updateFn) {
    updateFn(_productionCompanies ??= []);
  }

  bool hasProductionCompanies() => _productionCompanies != null;

  // "production_countries" field.
  List<ProductionCountriesStruct>? _productionCountries;
  List<ProductionCountriesStruct> get productionCountries =>
      _productionCountries ?? const [];
  set productionCountries(List<ProductionCountriesStruct>? val) =>
      _productionCountries = val;

  void updateProductionCountries(
      Function(List<ProductionCountriesStruct>) updateFn) {
    updateFn(_productionCountries ??= []);
  }

  bool hasProductionCountries() => _productionCountries != null;

  // "release_date" field.
  String? _releaseDate;
  String get releaseDate => _releaseDate ?? '';
  set releaseDate(String? val) => _releaseDate = val;

  bool hasReleaseDate() => _releaseDate != null;

  // "revenue" field.
  int? _revenue;
  int get revenue => _revenue ?? 0;
  set revenue(int? val) => _revenue = val;

  void incrementRevenue(int amount) => revenue = revenue + amount;

  bool hasRevenue() => _revenue != null;

  // "runtime" field.
  int? _runtime;
  int get runtime => _runtime ?? 0;
  set runtime(int? val) => _runtime = val;

  void incrementRuntime(int amount) => runtime = runtime + amount;

  bool hasRuntime() => _runtime != null;

  // "spoken_languages" field.
  List<SpokenLanguagesStruct>? _spokenLanguages;
  List<SpokenLanguagesStruct> get spokenLanguages =>
      _spokenLanguages ?? const [];
  set spokenLanguages(List<SpokenLanguagesStruct>? val) =>
      _spokenLanguages = val;

  void updateSpokenLanguages(Function(List<SpokenLanguagesStruct>) updateFn) {
    updateFn(_spokenLanguages ??= []);
  }

  bool hasSpokenLanguages() => _spokenLanguages != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "tagline" field.
  String? _tagline;
  String get tagline => _tagline ?? '';
  set tagline(String? val) => _tagline = val;

  bool hasTagline() => _tagline != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "video" field.
  bool? _video;
  bool get video => _video ?? false;
  set video(bool? val) => _video = val;

  bool hasVideo() => _video != null;

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

  static MovieIdResultsStruct fromMap(Map<String, dynamic> data) =>
      MovieIdResultsStruct(
        adult: data['adult'] as bool?,
        backdropPath: data['backdrop_path'] as String?,
        belongsToCollection:
            data['belongs_to_collection'] is BelongsToCollectionStruct
                ? data['belongs_to_collection']
                : BelongsToCollectionStruct.maybeFromMap(
                    data['belongs_to_collection']),
        budget: castToType<int>(data['budget']),
        genres: getStructList(
          data['genres'],
          GenresStruct.fromMap,
        ),
        homepage: data['homepage'] as String?,
        id: castToType<int>(data['id']),
        imdbId: data['imdb_id'] as String?,
        originCountry: getDataList(data['origin_country']),
        originalLanguage: data['original_language'] as String?,
        originalTitle: data['original_title'] as String?,
        overview: data['overview'] as String?,
        popularity: castToType<double>(data['popularity']),
        posterPath: data['poster_path'] as String?,
        productionCompanies: getStructList(
          data['production_companies'],
          ProductionCompaniesStruct.fromMap,
        ),
        productionCountries: getStructList(
          data['production_countries'],
          ProductionCountriesStruct.fromMap,
        ),
        releaseDate: data['release_date'] as String?,
        revenue: castToType<int>(data['revenue']),
        runtime: castToType<int>(data['runtime']),
        spokenLanguages: getStructList(
          data['spoken_languages'],
          SpokenLanguagesStruct.fromMap,
        ),
        status: data['status'] as String?,
        tagline: data['tagline'] as String?,
        title: data['title'] as String?,
        video: data['video'] as bool?,
        voteAverage: castToType<double>(data['vote_average']),
        voteCount: castToType<int>(data['vote_count']),
      );

  static MovieIdResultsStruct? maybeFromMap(dynamic data) => data is Map
      ? MovieIdResultsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'adult': _adult,
        'backdrop_path': _backdropPath,
        'belongs_to_collection': _belongsToCollection?.toMap(),
        'budget': _budget,
        'genres': _genres?.map((e) => e.toMap()).toList(),
        'homepage': _homepage,
        'id': _id,
        'imdb_id': _imdbId,
        'origin_country': _originCountry,
        'original_language': _originalLanguage,
        'original_title': _originalTitle,
        'overview': _overview,
        'popularity': _popularity,
        'poster_path': _posterPath,
        'production_companies':
            _productionCompanies?.map((e) => e.toMap()).toList(),
        'production_countries':
            _productionCountries?.map((e) => e.toMap()).toList(),
        'release_date': _releaseDate,
        'revenue': _revenue,
        'runtime': _runtime,
        'spoken_languages': _spokenLanguages?.map((e) => e.toMap()).toList(),
        'status': _status,
        'tagline': _tagline,
        'title': _title,
        'video': _video,
        'vote_average': _voteAverage,
        'vote_count': _voteCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'adult': serializeParam(
          _adult,
          ParamType.bool,
        ),
        'backdrop_path': serializeParam(
          _backdropPath,
          ParamType.String,
        ),
        'belongs_to_collection': serializeParam(
          _belongsToCollection,
          ParamType.DataStruct,
        ),
        'budget': serializeParam(
          _budget,
          ParamType.int,
        ),
        'genres': serializeParam(
          _genres,
          ParamType.DataStruct,
          isList: true,
        ),
        'homepage': serializeParam(
          _homepage,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'imdb_id': serializeParam(
          _imdbId,
          ParamType.String,
        ),
        'origin_country': serializeParam(
          _originCountry,
          ParamType.String,
          isList: true,
        ),
        'original_language': serializeParam(
          _originalLanguage,
          ParamType.String,
        ),
        'original_title': serializeParam(
          _originalTitle,
          ParamType.String,
        ),
        'overview': serializeParam(
          _overview,
          ParamType.String,
        ),
        'popularity': serializeParam(
          _popularity,
          ParamType.double,
        ),
        'poster_path': serializeParam(
          _posterPath,
          ParamType.String,
        ),
        'production_companies': serializeParam(
          _productionCompanies,
          ParamType.DataStruct,
          isList: true,
        ),
        'production_countries': serializeParam(
          _productionCountries,
          ParamType.DataStruct,
          isList: true,
        ),
        'release_date': serializeParam(
          _releaseDate,
          ParamType.String,
        ),
        'revenue': serializeParam(
          _revenue,
          ParamType.int,
        ),
        'runtime': serializeParam(
          _runtime,
          ParamType.int,
        ),
        'spoken_languages': serializeParam(
          _spokenLanguages,
          ParamType.DataStruct,
          isList: true,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'tagline': serializeParam(
          _tagline,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'video': serializeParam(
          _video,
          ParamType.bool,
        ),
        'vote_average': serializeParam(
          _voteAverage,
          ParamType.double,
        ),
        'vote_count': serializeParam(
          _voteCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static MovieIdResultsStruct fromSerializableMap(Map<String, dynamic> data) =>
      MovieIdResultsStruct(
        adult: deserializeParam(
          data['adult'],
          ParamType.bool,
          false,
        ),
        backdropPath: deserializeParam(
          data['backdrop_path'],
          ParamType.String,
          false,
        ),
        belongsToCollection: deserializeStructParam(
          data['belongs_to_collection'],
          ParamType.DataStruct,
          false,
          structBuilder: BelongsToCollectionStruct.fromSerializableMap,
        ),
        budget: deserializeParam(
          data['budget'],
          ParamType.int,
          false,
        ),
        genres: deserializeStructParam<GenresStruct>(
          data['genres'],
          ParamType.DataStruct,
          true,
          structBuilder: GenresStruct.fromSerializableMap,
        ),
        homepage: deserializeParam(
          data['homepage'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        imdbId: deserializeParam(
          data['imdb_id'],
          ParamType.String,
          false,
        ),
        originCountry: deserializeParam<String>(
          data['origin_country'],
          ParamType.String,
          true,
        ),
        originalLanguage: deserializeParam(
          data['original_language'],
          ParamType.String,
          false,
        ),
        originalTitle: deserializeParam(
          data['original_title'],
          ParamType.String,
          false,
        ),
        overview: deserializeParam(
          data['overview'],
          ParamType.String,
          false,
        ),
        popularity: deserializeParam(
          data['popularity'],
          ParamType.double,
          false,
        ),
        posterPath: deserializeParam(
          data['poster_path'],
          ParamType.String,
          false,
        ),
        productionCompanies: deserializeStructParam<ProductionCompaniesStruct>(
          data['production_companies'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductionCompaniesStruct.fromSerializableMap,
        ),
        productionCountries: deserializeStructParam<ProductionCountriesStruct>(
          data['production_countries'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductionCountriesStruct.fromSerializableMap,
        ),
        releaseDate: deserializeParam(
          data['release_date'],
          ParamType.String,
          false,
        ),
        revenue: deserializeParam(
          data['revenue'],
          ParamType.int,
          false,
        ),
        runtime: deserializeParam(
          data['runtime'],
          ParamType.int,
          false,
        ),
        spokenLanguages: deserializeStructParam<SpokenLanguagesStruct>(
          data['spoken_languages'],
          ParamType.DataStruct,
          true,
          structBuilder: SpokenLanguagesStruct.fromSerializableMap,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        tagline: deserializeParam(
          data['tagline'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        video: deserializeParam(
          data['video'],
          ParamType.bool,
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
      );

  @override
  String toString() => 'MovieIdResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MovieIdResultsStruct &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        belongsToCollection == other.belongsToCollection &&
        budget == other.budget &&
        listEquality.equals(genres, other.genres) &&
        homepage == other.homepage &&
        id == other.id &&
        imdbId == other.imdbId &&
        listEquality.equals(originCountry, other.originCountry) &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        listEquality.equals(productionCompanies, other.productionCompanies) &&
        listEquality.equals(productionCountries, other.productionCountries) &&
        releaseDate == other.releaseDate &&
        revenue == other.revenue &&
        runtime == other.runtime &&
        listEquality.equals(spokenLanguages, other.spokenLanguages) &&
        status == other.status &&
        tagline == other.tagline &&
        title == other.title &&
        video == other.video &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        adult,
        backdropPath,
        belongsToCollection,
        budget,
        genres,
        homepage,
        id,
        imdbId,
        originCountry,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        productionCompanies,
        productionCountries,
        releaseDate,
        revenue,
        runtime,
        spokenLanguages,
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount
      ]);
}

MovieIdResultsStruct createMovieIdResultsStruct({
  bool? adult,
  String? backdropPath,
  BelongsToCollectionStruct? belongsToCollection,
  int? budget,
  String? homepage,
  int? id,
  String? imdbId,
  String? originalLanguage,
  String? originalTitle,
  String? overview,
  double? popularity,
  String? posterPath,
  String? releaseDate,
  int? revenue,
  int? runtime,
  String? status,
  String? tagline,
  String? title,
  bool? video,
  double? voteAverage,
  int? voteCount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MovieIdResultsStruct(
      adult: adult,
      backdropPath: backdropPath,
      belongsToCollection: belongsToCollection ??
          (clearUnsetFields ? BelongsToCollectionStruct() : null),
      budget: budget,
      homepage: homepage,
      id: id,
      imdbId: imdbId,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      revenue: revenue,
      runtime: runtime,
      status: status,
      tagline: tagline,
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MovieIdResultsStruct? updateMovieIdResultsStruct(
  MovieIdResultsStruct? movieIdResults, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    movieIdResults
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMovieIdResultsStructData(
  Map<String, dynamic> firestoreData,
  MovieIdResultsStruct? movieIdResults,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (movieIdResults == null) {
    return;
  }
  if (movieIdResults.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && movieIdResults.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final movieIdResultsData =
      getMovieIdResultsFirestoreData(movieIdResults, forFieldValue);
  final nestedData =
      movieIdResultsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = movieIdResults.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMovieIdResultsFirestoreData(
  MovieIdResultsStruct? movieIdResults, [
  bool forFieldValue = false,
]) {
  if (movieIdResults == null) {
    return {};
  }
  final firestoreData = mapToFirestore(movieIdResults.toMap());

  // Handle nested data for "belongs_to_collection" field.
  addBelongsToCollectionStructData(
    firestoreData,
    movieIdResults.hasBelongsToCollection()
        ? movieIdResults.belongsToCollection
        : null,
    'belongs_to_collection',
    forFieldValue,
  );

  // Add any Firestore field values
  movieIdResults.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMovieIdResultsListFirestoreData(
  List<MovieIdResultsStruct>? movieIdResultss,
) =>
    movieIdResultss
        ?.map((e) => getMovieIdResultsFirestoreData(e, true))
        .toList() ??
    [];
