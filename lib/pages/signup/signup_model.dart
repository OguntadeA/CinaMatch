import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  Local state fields for this page.

  DateTime? starttime;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for signup-EmailFieldnew widget.
  FocusNode? signupEmailFieldnewFocusNode;
  TextEditingController? signupEmailFieldnewTextController;
  String? Function(BuildContext, String?)?
      signupEmailFieldnewTextControllerValidator;
  // State field(s) for signup-PasswordFieldnew widget.
  FocusNode? signupPasswordFieldnewFocusNode;
  TextEditingController? signupPasswordFieldnewTextController;
  late bool signupPasswordFieldnewVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordFieldnewTextControllerValidator;
  String? _signupPasswordFieldnewTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter password here... is required';
    }

    if (val.length < 6) {
      return 'Passwords must be 8 characters';
    }

    return null;
  }

  // State field(s) for signup-ConfirmPasswordFieldnew widget.
  FocusNode? signupConfirmPasswordFieldnewFocusNode;
  TextEditingController? signupConfirmPasswordFieldnewTextController;
  late bool signupConfirmPasswordFieldnewVisibility;
  String? Function(BuildContext, String?)?
      signupConfirmPasswordFieldnewTextControllerValidator;
  String? _signupConfirmPasswordFieldnewTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm password here... is required';
    }

    if (val.length < 6) {
      return 'Passwords must be 8 characters';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    signupPasswordFieldnewVisibility = false;
    signupPasswordFieldnewTextControllerValidator =
        _signupPasswordFieldnewTextControllerValidator;
    signupConfirmPasswordFieldnewVisibility = false;
    signupConfirmPasswordFieldnewTextControllerValidator =
        _signupConfirmPasswordFieldnewTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupEmailFieldnewFocusNode?.dispose();
    signupEmailFieldnewTextController?.dispose();

    signupPasswordFieldnewFocusNode?.dispose();
    signupPasswordFieldnewTextController?.dispose();

    signupConfirmPasswordFieldnewFocusNode?.dispose();
    signupConfirmPasswordFieldnewTextController?.dispose();
  }
}
