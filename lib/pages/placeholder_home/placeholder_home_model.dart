import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'placeholder_home_widget.dart' show PlaceholderHomeWidget;
import 'package:flutter/material.dart';

class PlaceholderHomeModel extends FlutterFlowModel<PlaceholderHomeWidget> {
  ///  Local state fields for this page.

  bool madeFirstList = false;

  int? watchlistNum;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in placeholderHome widget.
  List<WatchlistRecord>? watchlistNumHome;
  // Stores action output result for [Firestore Query - Query a collection] action in placeholderHome widget.
  List<WatchlistRecord>? watchlistNumHome2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
