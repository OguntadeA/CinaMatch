// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TvIdResultsStruct extends FFFirebaseStruct {
  TvIdResultsStruct({
    bool? adult,
    String? backdropPath,
    List<String>? createdBy,
    List<int>? episodeRunTime,
    String? firstAirDate,
    List<GenresStruct>? genres,
    String? homepage,
    int? id,
    bool? inProduction,
    List<String>? languages,
    String? lastAirDate,
    LastEpisodeToAirStruct? lastEpisodeToAir,
    String? name,
    String? nextEpisodeToAir,
    List<NetworksStruct>? networks,
    int? numberOfEpisodes,
    int? numberOfSeasons,
    List<String>? originCountry,
    String? originalLanguage,
    String? originalName,
    String? overview,
    double? popularity,
    String? posterPath,
    List<String>? productionCompanies,
    List<ProductionCountriesStruct>? productionCountries,
    List<SeasonsStruct>? seasons,
    List<SpokenLanguagesStruct>? spokenLanguages,
    String? status,
    String? tagline,
    String? type,
    double? voteAverage,
    int? voteCount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _adult = adult,
        _backdropPath = backdropPath,
        _createdBy = createdBy,
        _episodeRunTime = episodeRunTime,
        _firstAirDate = firstAirDate,
        _genres = genres,
        _homepage = homepage,
        _id = id,
        _inProduction = inProduction,
        _languages = languages,
        _lastAirDate = lastAirDate,
        _lastEpisodeToAir = lastEpisodeToAir,
        _name = name,
        _nextEpisodeToAir = nextEpisodeToAir,
        _networks = networks,
        _numberOfEpisodes = numberOfEpisodes,
        _numberOfSeasons = numberOfSeasons,
        _originCountry = originCountry,
        _originalLanguage = originalLanguage,
        _originalName = originalName,
        _overview = overview,
        _popularity = popularity,
        _posterPath = posterPath,
        _productionCompanies = productionCompanies,
        _productionCountries = productionCountries,
        _seasons = seasons,
        _spokenLanguages = spokenLanguages,
        _status = status,
        _tagline = tagline,
        _type = type,
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

  // "created_by" field.
  List<String>? _createdBy;
  List<String> get createdBy => _createdBy ?? const [];
  set createdBy(List<String>? val) => _createdBy = val;

  void updateCreatedBy(Function(List<String>) updateFn) {
    updateFn(_createdBy ??= []);
  }

  bool hasCreatedBy() => _createdBy != null;

  // "episode_run_time" field.
  List<int>? _episodeRunTime;
  List<int> get episodeRunTime => _episodeRunTime ?? const [];
  set episodeRunTime(List<int>? val) => _episodeRunTime = val;

  void updateEpisodeRunTime(Function(List<int>) updateFn) {
    updateFn(_episodeRunTime ??= []);
  }

  bool hasEpisodeRunTime() => _episodeRunTime != null;

  // "first_air_date" field.
  String? _firstAirDate;
  String get firstAirDate => _firstAirDate ?? '';
  set firstAirDate(String? val) => _firstAirDate = val;

  bool hasFirstAirDate() => _firstAirDate != null;

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

  // "in_production" field.
  bool? _inProduction;
  bool get inProduction => _inProduction ?? false;
  set inProduction(bool? val) => _inProduction = val;

  bool hasInProduction() => _inProduction != null;

  // "languages" field.
  List<String>? _languages;
  List<String> get languages => _languages ?? const [];
  set languages(List<String>? val) => _languages = val;

  void updateLanguages(Function(List<String>) updateFn) {
    updateFn(_languages ??= []);
  }

  bool hasLanguages() => _languages != null;

  // "last_air_date" field.
  String? _lastAirDate;
  String get lastAirDate => _lastAirDate ?? '';
  set lastAirDate(String? val) => _lastAirDate = val;

  bool hasLastAirDate() => _lastAirDate != null;

  // "last_episode_to_air" field.
  LastEpisodeToAirStruct? _lastEpisodeToAir;
  LastEpisodeToAirStruct get lastEpisodeToAir =>
      _lastEpisodeToAir ?? LastEpisodeToAirStruct();
  set lastEpisodeToAir(LastEpisodeToAirStruct? val) => _lastEpisodeToAir = val;

  void updateLastEpisodeToAir(Function(LastEpisodeToAirStruct) updateFn) {
    updateFn(_lastEpisodeToAir ??= LastEpisodeToAirStruct());
  }

  bool hasLastEpisodeToAir() => _lastEpisodeToAir != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "next_episode_to_air" field.
  String? _nextEpisodeToAir;
  String get nextEpisodeToAir => _nextEpisodeToAir ?? '';
  set nextEpisodeToAir(String? val) => _nextEpisodeToAir = val;

  bool hasNextEpisodeToAir() => _nextEpisodeToAir != null;

  // "networks" field.
  List<NetworksStruct>? _networks;
  List<NetworksStruct> get networks => _networks ?? const [];
  set networks(List<NetworksStruct>? val) => _networks = val;

  void updateNetworks(Function(List<NetworksStruct>) updateFn) {
    updateFn(_networks ??= []);
  }

  bool hasNetworks() => _networks != null;

  // "number_of_episodes" field.
  int? _numberOfEpisodes;
  int get numberOfEpisodes => _numberOfEpisodes ?? 0;
  set numberOfEpisodes(int? val) => _numberOfEpisodes = val;

  void incrementNumberOfEpisodes(int amount) =>
      numberOfEpisodes = numberOfEpisodes + amount;

  bool hasNumberOfEpisodes() => _numberOfEpisodes != null;

  // "number_of_seasons" field.
  int? _numberOfSeasons;
  int get numberOfSeasons => _numberOfSeasons ?? 0;
  set numberOfSeasons(int? val) => _numberOfSeasons = val;

  void incrementNumberOfSeasons(int amount) =>
      numberOfSeasons = numberOfSeasons + amount;

  bool hasNumberOfSeasons() => _numberOfSeasons != null;

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
  List<String>? _productionCompanies;
  List<String> get productionCompanies => _productionCompanies ?? const [];
  set productionCompanies(List<String>? val) => _productionCompanies = val;

  void updateProductionCompanies(Function(List<String>) updateFn) {
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

  // "seasons" field.
  List<SeasonsStruct>? _seasons;
  List<SeasonsStruct> get seasons => _seasons ?? const [];
  set seasons(List<SeasonsStruct>? val) => _seasons = val;

  void updateSeasons(Function(List<SeasonsStruct>) updateFn) {
    updateFn(_seasons ??= []);
  }

  bool hasSeasons() => _seasons != null;

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

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

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

  static TvIdResultsStruct fromMap(Map<String, dynamic> data) =>
      TvIdResultsStruct(
        adult: data['adult'] as bool?,
        backdropPath: data['backdrop_path'] as String?,
        createdBy: getDataList(data['created_by']),
        episodeRunTime: getDataList(data['episode_run_time']),
        firstAirDate: data['first_air_date'] as String?,
        genres: getStructList(
          data['genres'],
          GenresStruct.fromMap,
        ),
        homepage: data['homepage'] as String?,
        id: castToType<int>(data['id']),
        inProduction: data['in_production'] as bool?,
        languages: getDataList(data['languages']),
        lastAirDate: data['last_air_date'] as String?,
        lastEpisodeToAir: data['last_episode_to_air'] is LastEpisodeToAirStruct
            ? data['last_episode_to_air']
            : LastEpisodeToAirStruct.maybeFromMap(data['last_episode_to_air']),
        name: data['name'] as String?,
        nextEpisodeToAir: data['next_episode_to_air'] as String?,
        networks: getStructList(
          data['networks'],
          NetworksStruct.fromMap,
        ),
        numberOfEpisodes: castToType<int>(data['number_of_episodes']),
        numberOfSeasons: castToType<int>(data['number_of_seasons']),
        originCountry: getDataList(data['origin_country']),
        originalLanguage: data['original_language'] as String?,
        originalName: data['original_name'] as String?,
        overview: data['overview'] as String?,
        popularity: castToType<double>(data['popularity']),
        posterPath: data['poster_path'] as String?,
        productionCompanies: getDataList(data['production_companies']),
        productionCountries: getStructList(
          data['production_countries'],
          ProductionCountriesStruct.fromMap,
        ),
        seasons: getStructList(
          data['seasons'],
          SeasonsStruct.fromMap,
        ),
        spokenLanguages: getStructList(
          data['spoken_languages'],
          SpokenLanguagesStruct.fromMap,
        ),
        status: data['status'] as String?,
        tagline: data['tagline'] as String?,
        type: data['type'] as String?,
        voteAverage: castToType<double>(data['vote_average']),
        voteCount: castToType<int>(data['vote_count']),
      );

  static TvIdResultsStruct? maybeFromMap(dynamic data) => data is Map
      ? TvIdResultsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'adult': _adult,
        'backdrop_path': _backdropPath,
        'created_by': _createdBy,
        'episode_run_time': _episodeRunTime,
        'first_air_date': _firstAirDate,
        'genres': _genres?.map((e) => e.toMap()).toList(),
        'homepage': _homepage,
        'id': _id,
        'in_production': _inProduction,
        'languages': _languages,
        'last_air_date': _lastAirDate,
        'last_episode_to_air': _lastEpisodeToAir?.toMap(),
        'name': _name,
        'next_episode_to_air': _nextEpisodeToAir,
        'networks': _networks?.map((e) => e.toMap()).toList(),
        'number_of_episodes': _numberOfEpisodes,
        'number_of_seasons': _numberOfSeasons,
        'origin_country': _originCountry,
        'original_language': _originalLanguage,
        'original_name': _originalName,
        'overview': _overview,
        'popularity': _popularity,
        'poster_path': _posterPath,
        'production_companies': _productionCompanies,
        'production_countries':
            _productionCountries?.map((e) => e.toMap()).toList(),
        'seasons': _seasons?.map((e) => e.toMap()).toList(),
        'spoken_languages': _spokenLanguages?.map((e) => e.toMap()).toList(),
        'status': _status,
        'tagline': _tagline,
        'type': _type,
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
        'created_by': serializeParam(
          _createdBy,
          ParamType.String,
          isList: true,
        ),
        'episode_run_time': serializeParam(
          _episodeRunTime,
          ParamType.int,
          isList: true,
        ),
        'first_air_date': serializeParam(
          _firstAirDate,
          ParamType.String,
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
        'in_production': serializeParam(
          _inProduction,
          ParamType.bool,
        ),
        'languages': serializeParam(
          _languages,
          ParamType.String,
          isList: true,
        ),
        'last_air_date': serializeParam(
          _lastAirDate,
          ParamType.String,
        ),
        'last_episode_to_air': serializeParam(
          _lastEpisodeToAir,
          ParamType.DataStruct,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'next_episode_to_air': serializeParam(
          _nextEpisodeToAir,
          ParamType.String,
        ),
        'networks': serializeParam(
          _networks,
          ParamType.DataStruct,
          isList: true,
        ),
        'number_of_episodes': serializeParam(
          _numberOfEpisodes,
          ParamType.int,
        ),
        'number_of_seasons': serializeParam(
          _numberOfSeasons,
          ParamType.int,
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
        'original_name': serializeParam(
          _originalName,
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
          ParamType.String,
          isList: true,
        ),
        'production_countries': serializeParam(
          _productionCountries,
          ParamType.DataStruct,
          isList: true,
        ),
        'seasons': serializeParam(
          _seasons,
          ParamType.DataStruct,
          isList: true,
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
        'type': serializeParam(
          _type,
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
      }.withoutNulls;

  static TvIdResultsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TvIdResultsStruct(
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
        createdBy: deserializeParam<String>(
          data['created_by'],
          ParamType.String,
          true,
        ),
        episodeRunTime: deserializeParam<int>(
          data['episode_run_time'],
          ParamType.int,
          true,
        ),
        firstAirDate: deserializeParam(
          data['first_air_date'],
          ParamType.String,
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
        inProduction: deserializeParam(
          data['in_production'],
          ParamType.bool,
          false,
        ),
        languages: deserializeParam<String>(
          data['languages'],
          ParamType.String,
          true,
        ),
        lastAirDate: deserializeParam(
          data['last_air_date'],
          ParamType.String,
          false,
        ),
        lastEpisodeToAir: deserializeStructParam(
          data['last_episode_to_air'],
          ParamType.DataStruct,
          false,
          structBuilder: LastEpisodeToAirStruct.fromSerializableMap,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        nextEpisodeToAir: deserializeParam(
          data['next_episode_to_air'],
          ParamType.String,
          false,
        ),
        networks: deserializeStructParam<NetworksStruct>(
          data['networks'],
          ParamType.DataStruct,
          true,
          structBuilder: NetworksStruct.fromSerializableMap,
        ),
        numberOfEpisodes: deserializeParam(
          data['number_of_episodes'],
          ParamType.int,
          false,
        ),
        numberOfSeasons: deserializeParam(
          data['number_of_seasons'],
          ParamType.int,
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
        productionCompanies: deserializeParam<String>(
          data['production_companies'],
          ParamType.String,
          true,
        ),
        productionCountries: deserializeStructParam<ProductionCountriesStruct>(
          data['production_countries'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductionCountriesStruct.fromSerializableMap,
        ),
        seasons: deserializeStructParam<SeasonsStruct>(
          data['seasons'],
          ParamType.DataStruct,
          true,
          structBuilder: SeasonsStruct.fromSerializableMap,
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
        type: deserializeParam(
          data['type'],
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
      );

  @override
  String toString() => 'TvIdResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TvIdResultsStruct &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        listEquality.equals(createdBy, other.createdBy) &&
        listEquality.equals(episodeRunTime, other.episodeRunTime) &&
        firstAirDate == other.firstAirDate &&
        listEquality.equals(genres, other.genres) &&
        homepage == other.homepage &&
        id == other.id &&
        inProduction == other.inProduction &&
        listEquality.equals(languages, other.languages) &&
        lastAirDate == other.lastAirDate &&
        lastEpisodeToAir == other.lastEpisodeToAir &&
        name == other.name &&
        nextEpisodeToAir == other.nextEpisodeToAir &&
        listEquality.equals(networks, other.networks) &&
        numberOfEpisodes == other.numberOfEpisodes &&
        numberOfSeasons == other.numberOfSeasons &&
        listEquality.equals(originCountry, other.originCountry) &&
        originalLanguage == other.originalLanguage &&
        originalName == other.originalName &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        listEquality.equals(productionCompanies, other.productionCompanies) &&
        listEquality.equals(productionCountries, other.productionCountries) &&
        listEquality.equals(seasons, other.seasons) &&
        listEquality.equals(spokenLanguages, other.spokenLanguages) &&
        status == other.status &&
        tagline == other.tagline &&
        type == other.type &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        adult,
        backdropPath,
        createdBy,
        episodeRunTime,
        firstAirDate,
        genres,
        homepage,
        id,
        inProduction,
        languages,
        lastAirDate,
        lastEpisodeToAir,
        name,
        nextEpisodeToAir,
        networks,
        numberOfEpisodes,
        numberOfSeasons,
        originCountry,
        originalLanguage,
        originalName,
        overview,
        popularity,
        posterPath,
        productionCompanies,
        productionCountries,
        seasons,
        spokenLanguages,
        status,
        tagline,
        type,
        voteAverage,
        voteCount
      ]);
}

TvIdResultsStruct createTvIdResultsStruct({
  bool? adult,
  String? backdropPath,
  String? firstAirDate,
  String? homepage,
  int? id,
  bool? inProduction,
  String? lastAirDate,
  LastEpisodeToAirStruct? lastEpisodeToAir,
  String? name,
  String? nextEpisodeToAir,
  int? numberOfEpisodes,
  int? numberOfSeasons,
  String? originalLanguage,
  String? originalName,
  String? overview,
  double? popularity,
  String? posterPath,
  String? status,
  String? tagline,
  String? type,
  double? voteAverage,
  int? voteCount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TvIdResultsStruct(
      adult: adult,
      backdropPath: backdropPath,
      firstAirDate: firstAirDate,
      homepage: homepage,
      id: id,
      inProduction: inProduction,
      lastAirDate: lastAirDate,
      lastEpisodeToAir: lastEpisodeToAir ??
          (clearUnsetFields ? LastEpisodeToAirStruct() : null),
      name: name,
      nextEpisodeToAir: nextEpisodeToAir,
      numberOfEpisodes: numberOfEpisodes,
      numberOfSeasons: numberOfSeasons,
      originalLanguage: originalLanguage,
      originalName: originalName,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      status: status,
      tagline: tagline,
      type: type,
      voteAverage: voteAverage,
      voteCount: voteCount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TvIdResultsStruct? updateTvIdResultsStruct(
  TvIdResultsStruct? tvIdResults, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tvIdResults
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTvIdResultsStructData(
  Map<String, dynamic> firestoreData,
  TvIdResultsStruct? tvIdResults,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tvIdResults == null) {
    return;
  }
  if (tvIdResults.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tvIdResults.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tvIdResultsData =
      getTvIdResultsFirestoreData(tvIdResults, forFieldValue);
  final nestedData =
      tvIdResultsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tvIdResults.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTvIdResultsFirestoreData(
  TvIdResultsStruct? tvIdResults, [
  bool forFieldValue = false,
]) {
  if (tvIdResults == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tvIdResults.toMap());

  // Handle nested data for "last_episode_to_air" field.
  addLastEpisodeToAirStructData(
    firestoreData,
    tvIdResults.hasLastEpisodeToAir() ? tvIdResults.lastEpisodeToAir : null,
    'last_episode_to_air',
    forFieldValue,
  );

  // Add any Firestore field values
  tvIdResults.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTvIdResultsListFirestoreData(
  List<TvIdResultsStruct>? tvIdResultss,
) =>
    tvIdResultss?.map((e) => getTvIdResultsFirestoreData(e, true)).toList() ??
    [];
