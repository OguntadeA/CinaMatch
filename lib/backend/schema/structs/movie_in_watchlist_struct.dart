// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MovieInWatchlistStruct extends FFFirebaseStruct {
  MovieInWatchlistStruct({
    String? title,
    String? description,
    String? imagePath,
    int? id,
    String? mediaType,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _description = description,
        _imagePath = imagePath,
        _id = id,
        _mediaType = mediaType,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "imagePath" field.
  String? _imagePath;
  String get imagePath => _imagePath ?? '';
  set imagePath(String? val) => _imagePath = val;

  bool hasImagePath() => _imagePath != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "mediaType" field.
  String? _mediaType;
  String get mediaType => _mediaType ?? '';
  set mediaType(String? val) => _mediaType = val;

  bool hasMediaType() => _mediaType != null;

  static MovieInWatchlistStruct fromMap(Map<String, dynamic> data) =>
      MovieInWatchlistStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        imagePath: data['imagePath'] as String?,
        id: castToType<int>(data['id']),
        mediaType: data['mediaType'] as String?,
      );

  static MovieInWatchlistStruct? maybeFromMap(dynamic data) => data is Map
      ? MovieInWatchlistStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'imagePath': _imagePath,
        'id': _id,
        'mediaType': _mediaType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'imagePath': serializeParam(
          _imagePath,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'mediaType': serializeParam(
          _mediaType,
          ParamType.String,
        ),
      }.withoutNulls;

  static MovieInWatchlistStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MovieInWatchlistStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        imagePath: deserializeParam(
          data['imagePath'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        mediaType: deserializeParam(
          data['mediaType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MovieInWatchlistStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MovieInWatchlistStruct &&
        title == other.title &&
        description == other.description &&
        imagePath == other.imagePath &&
        id == other.id &&
        mediaType == other.mediaType;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, description, imagePath, id, mediaType]);
}

MovieInWatchlistStruct createMovieInWatchlistStruct({
  String? title,
  String? description,
  String? imagePath,
  int? id,
  String? mediaType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MovieInWatchlistStruct(
      title: title,
      description: description,
      imagePath: imagePath,
      id: id,
      mediaType: mediaType,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MovieInWatchlistStruct? updateMovieInWatchlistStruct(
  MovieInWatchlistStruct? movieInWatchlist, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    movieInWatchlist
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMovieInWatchlistStructData(
  Map<String, dynamic> firestoreData,
  MovieInWatchlistStruct? movieInWatchlist,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (movieInWatchlist == null) {
    return;
  }
  if (movieInWatchlist.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && movieInWatchlist.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final movieInWatchlistData =
      getMovieInWatchlistFirestoreData(movieInWatchlist, forFieldValue);
  final nestedData =
      movieInWatchlistData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = movieInWatchlist.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMovieInWatchlistFirestoreData(
  MovieInWatchlistStruct? movieInWatchlist, [
  bool forFieldValue = false,
]) {
  if (movieInWatchlist == null) {
    return {};
  }
  final firestoreData = mapToFirestore(movieInWatchlist.toMap());

  // Add any Firestore field values
  movieInWatchlist.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMovieInWatchlistListFirestoreData(
  List<MovieInWatchlistStruct>? movieInWatchlists,
) =>
    movieInWatchlists
        ?.map((e) => getMovieInWatchlistFirestoreData(e, true))
        .toList() ??
    [];
