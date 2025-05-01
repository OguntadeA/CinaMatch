import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'change_watchlist_rec_widget.dart' show ChangeWatchlistRecWidget;
import 'package:flutter/material.dart';

class ChangeWatchlistRecModel
    extends FlutterFlowModel<ChangeWatchlistRecWidget> {
  ///  Local state fields for this component.

  int? numWatchlists;

  List<MovieInWatchlistStruct> movieList = [];
  void addToMovieList(MovieInWatchlistStruct item) => movieList.add(item);
  void removeFromMovieList(MovieInWatchlistStruct item) =>
      movieList.remove(item);
  void removeAtIndexFromMovieList(int index) => movieList.removeAt(index);
  void insertAtIndexInMovieList(int index, MovieInWatchlistStruct item) =>
      movieList.insert(index, item);
  void updateMovieListAtIndex(
          int index, Function(MovieInWatchlistStruct) updateFn) =>
      movieList[index] = updateFn(movieList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
