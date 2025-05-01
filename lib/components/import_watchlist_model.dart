import '/flutter_flow/flutter_flow_util.dart';
import 'import_watchlist_widget.dart' show ImportWatchlistWidget;
import 'package:flutter/material.dart';

class ImportWatchlistModel extends FlutterFlowModel<ImportWatchlistWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
