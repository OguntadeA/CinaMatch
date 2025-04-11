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
