import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  DateTime? sessionstart;

  ///  State fields for stateful widgets in this page.

  // State field(s) for login-emailfield widget.
  FocusNode? loginEmailfieldFocusNode;
  TextEditingController? loginEmailfieldTextController;
  String? Function(BuildContext, String?)?
      loginEmailfieldTextControllerValidator;
  // State field(s) for login-passwordfield widget.
  FocusNode? loginPasswordfieldFocusNode;
  TextEditingController? loginPasswordfieldTextController;
  late bool loginPasswordfieldVisibility;
  String? Function(BuildContext, String?)?
      loginPasswordfieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    loginPasswordfieldVisibility = false;
  }

  @override
  void dispose() {
    loginEmailfieldFocusNode?.dispose();
    loginEmailfieldTextController?.dispose();

    loginPasswordfieldFocusNode?.dispose();
    loginPasswordfieldTextController?.dispose();
  }
}
