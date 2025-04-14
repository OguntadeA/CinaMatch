import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_to_watchlist_widget.dart' show AddToWatchlistWidget;
import 'package:flutter/material.dart';

class AddToWatchlistModel extends FlutterFlowModel<AddToWatchlistWidget> {
  ///  Local state fields for this component.

  int? numWatchlists;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in addToWatchlist widget.
  List<WatchlistRecord>? watchlsitLengthQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
