import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recommendations_widget.dart' show RecommendationsWidget;
import 'package:flutter/material.dart';

class RecommendationsModel extends FlutterFlowModel<RecommendationsWidget> {
  ///  Local state fields for this page.

  bool userSearch = false;

  MovieInWatchlistStruct? movie;
  void updateMovieStruct(Function(MovieInWatchlistStruct) updateFn) {
    updateFn(movie ??= MovieInWatchlistStruct());
  }

  RecommendationSearchStruct? userSearchData;
  void updateUserSearchDataStruct(
      Function(RecommendationSearchStruct) updateFn) {
    updateFn(userSearchData ??= RecommendationSearchStruct());
  }

  List<MovieInWatchlistStruct> emptyWatchlist = [];
  void addToEmptyWatchlist(MovieInWatchlistStruct item) =>
      emptyWatchlist.add(item);
  void removeFromEmptyWatchlist(MovieInWatchlistStruct item) =>
      emptyWatchlist.remove(item);
  void removeAtIndexFromEmptyWatchlist(int index) =>
      emptyWatchlist.removeAt(index);
  void insertAtIndexInEmptyWatchlist(int index, MovieInWatchlistStruct item) =>
      emptyWatchlist.insert(index, item);
  void updateEmptyWatchlistAtIndex(
          int index, Function(MovieInWatchlistStruct) updateFn) =>
      emptyWatchlist[index] = updateFn(emptyWatchlist[index]);

  dynamic moviesLength;

  dynamic tvLength;

  bool? showMovies = false;

  bool showTV = false;

  bool pageLoading = false;

  bool showPoppy = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [AI Agent - Send Message to movieRecommender] action in IconButton widget.
  Map<String, dynamic>? aiOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
