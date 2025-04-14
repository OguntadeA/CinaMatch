import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';


export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetHotMoviesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Hot Movies',
      apiUrl: 'https://api.themoviedb.org/3/trending/all/week',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzMDM2M2MyZGQ5YWM2ZWIyZmE1OTJmOTM0N2M2MThhNiIsIm5iZiI6MTc0MTAzMTMyNS40MzI5OTk4LCJzdWIiOiI2N2M2MDc5ZGVjZTAxY2VkYTFlNzg0MmMiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.3BdxHwV7uPlrvMrJuTa25YtfNwaP4zzUfJLJP6EQOmg',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? backdrop(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].backdrop_path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ogtitle(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].original_title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].overview''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].media_type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? lang(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].original_language''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? releasedate(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].release_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SearchMovieIDCall {
  static Future<ApiCallResponse> call({
    int? movieId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Movie ID',
      apiUrl: 'https://api.themoviedb.org/3/movie/${movieId}?language=en-US',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzMDM2M2MyZGQ5YWM2ZWIyZmE1OTJmOTM0N2M2MThhNiIsIm5iZiI6MTc0MTAzMTMyNS40MzI5OTk4LCJzdWIiOiI2N2M2MDc5ZGVjZTAxY2VkYTFlNzg0MmMiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.3BdxHwV7uPlrvMrJuTa25YtfNwaP4zzUfJLJP6EQOmg',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchTVIDCall {
  static Future<ApiCallResponse> call({
    int? seriesId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search TV ID',
      apiUrl: 'https://api.themoviedb.org/3/tv/${seriesId}?language=en-US\'',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzMDM2M2MyZGQ5YWM2ZWIyZmE1OTJmOTM0N2M2MThhNiIsIm5iZiI6MTc0MTAzMTMyNS40MzI5OTk4LCJzdWIiOiI2N2M2MDc5ZGVjZTAxY2VkYTFlNzg0MmMiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.3BdxHwV7uPlrvMrJuTa25YtfNwaP4zzUfJLJP6EQOmg',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchMoviesCall {
  static Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Movies',
      apiUrl:
          'https://api.themoviedb.org/3/search/multi?query=${search}&include_adult=false&language=en-US&page=1',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzMDM2M2MyZGQ5YWM2ZWIyZmE1OTJmOTM0N2M2MThhNiIsIm5iZiI6MTc0MTAzMTMyNS40MzI5OTk4LCJzdWIiOiI2N2M2MDc5ZGVjZTAxY2VkYTFlNzg0MmMiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.3BdxHwV7uPlrvMrJuTa25YtfNwaP4zzUfJLJP6EQOmg',
        'accept': 'application/json',
      },
      params: {
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
