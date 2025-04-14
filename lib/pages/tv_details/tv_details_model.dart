import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tv_details_widget.dart' show TvDetailsWidget;
import 'package:flutter/material.dart';

class TvDetailsModel extends FlutterFlowModel<TvDetailsWidget> {
  ///  Local state fields for this page.

  MovieInWatchlistStruct? movie;
  void updateMovieStruct(Function(MovieInWatchlistStruct) updateFn) {
    updateFn(movie ??= MovieInWatchlistStruct());
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
