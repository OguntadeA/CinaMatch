import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'watchlist_widget.dart' show WatchlistWidget;
import 'package:flutter/material.dart';

class WatchlistModel extends FlutterFlowModel<WatchlistWidget> {
  ///  Local state fields for this page.

  DocumentReference? watchlistReference;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
