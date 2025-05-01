import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? calculateSessionDuration(
  DateTime? sessionstart,
  DateTime? sessionend,
) {
  if (sessionstart == null || sessionend == null) return null;
  return sessionend.difference(sessionstart).inSeconds.toDouble();
}

String? urlConcatinator(String? backdropPath) {
  const defaultImageUrl = 'hhttps://picsum.photos/seed/374/600';

  if (backdropPath != null && backdropPath.isNotEmpty) {
    return 'https://image.tmdb.org/t/p/w500$backdropPath';
  } else {
    return defaultImageUrl;
  }
}

String findCategoryBasedOnNPS(double npsScore) {
  // Based on the given score, return string of whether the user is a Promoter (9-10), Passive (7-8), and Detractor (0-6)
  if (npsScore >= 9 && npsScore <= 10) {
    return 'promoter';
  } else if (npsScore >= 7 && npsScore <= 8) {
    return 'passive';
  } else if (npsScore >= 0 && npsScore <= 6) {
    return 'detractor';
  } else {
    return 'Invalid Score';
  }
}

bool? findJsonEmpty(dynamic json) {
  // checks if a given json file is empty
  if (json is Map) {
    return json.isEmpty;
  } else if (json is List) {
    return json.isEmpty;
  }
  return null; // Return null if json is neither a Map nor a List
}

bool? popularityChecker(String? stringPopularity) {
  // conver the string to a double, then check if the value of the double is larger than 0.1 if it is then return true else return false
  if (stringPopularity == null) return null; // Check for null
  double? popularityValue =
      double.tryParse(stringPopularity); // Convert string to double
  if (popularityValue == null)
    return false; // Check if conversion was successful
  return popularityValue > 0.1; // Return true if larger than 0.1, else false
}

bool? searchDuration(
  DateTime? sessionstart,
  DateTime? sessionend,
) {
  if (sessionstart == null || sessionend == null) return null;
  return (sessionend.difference(sessionstart).inSeconds.toDouble()) > 5;
}

String? shareURL(String? shareHex) {
  return 'https://cina-match-5x88o5.flutterflow.app/watchlist/$shareHex';
}
