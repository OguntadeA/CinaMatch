// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecommendationSearchStruct extends FFFirebaseStruct {
  RecommendationSearchStruct({
    List<MovieInWatchlistStruct>? movies,
    String? userInput,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _movies = movies,
        _userInput = userInput,
        super(firestoreUtilData);

  // "movies" field.
  List<MovieInWatchlistStruct>? _movies;
  List<MovieInWatchlistStruct> get movies => _movies ?? const [];
  set movies(List<MovieInWatchlistStruct>? val) => _movies = val;

  void updateMovies(Function(List<MovieInWatchlistStruct>) updateFn) {
    updateFn(_movies ??= []);
  }

  bool hasMovies() => _movies != null;

  // "userInput" field.
  String? _userInput;
  String get userInput => _userInput ?? '';
  set userInput(String? val) => _userInput = val;

  bool hasUserInput() => _userInput != null;

  static RecommendationSearchStruct fromMap(Map<String, dynamic> data) =>
      RecommendationSearchStruct(
        movies: getStructList(
          data['movies'],
          MovieInWatchlistStruct.fromMap,
        ),
        userInput: data['userInput'] as String?,
      );

  static RecommendationSearchStruct? maybeFromMap(dynamic data) => data is Map
      ? RecommendationSearchStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'movies': _movies?.map((e) => e.toMap()).toList(),
        'userInput': _userInput,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'movies': serializeParam(
          _movies,
          ParamType.DataStruct,
          isList: true,
        ),
        'userInput': serializeParam(
          _userInput,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecommendationSearchStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RecommendationSearchStruct(
        movies: deserializeStructParam<MovieInWatchlistStruct>(
          data['movies'],
          ParamType.DataStruct,
          true,
          structBuilder: MovieInWatchlistStruct.fromSerializableMap,
        ),
        userInput: deserializeParam(
          data['userInput'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecommendationSearchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RecommendationSearchStruct &&
        listEquality.equals(movies, other.movies) &&
        userInput == other.userInput;
  }

  @override
  int get hashCode => const ListEquality().hash([movies, userInput]);
}

RecommendationSearchStruct createRecommendationSearchStruct({
  String? userInput,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecommendationSearchStruct(
      userInput: userInput,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecommendationSearchStruct? updateRecommendationSearchStruct(
  RecommendationSearchStruct? recommendationSearch, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recommendationSearch
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecommendationSearchStructData(
  Map<String, dynamic> firestoreData,
  RecommendationSearchStruct? recommendationSearch,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recommendationSearch == null) {
    return;
  }
  if (recommendationSearch.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recommendationSearch.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recommendationSearchData =
      getRecommendationSearchFirestoreData(recommendationSearch, forFieldValue);
  final nestedData =
      recommendationSearchData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      recommendationSearch.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecommendationSearchFirestoreData(
  RecommendationSearchStruct? recommendationSearch, [
  bool forFieldValue = false,
]) {
  if (recommendationSearch == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recommendationSearch.toMap());

  // Add any Firestore field values
  recommendationSearch.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecommendationSearchListFirestoreData(
  List<RecommendationSearchStruct>? recommendationSearchs,
) =>
    recommendationSearchs
        ?.map((e) => getRecommendationSearchFirestoreData(e, true))
        .toList() ??
    [];
