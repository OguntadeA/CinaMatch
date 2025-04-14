import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:cina_match/flutter_flow/flutter_flow_drop_down.dart';
import 'package:cina_match/flutter_flow/flutter_flow_icon_button.dart';
import 'package:cina_match/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:cina_match/index.dart';
import 'package:cina_match/main.dart';
import 'package:cina_match/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:cina_match/backend/firebase/firebase_config.dart';
import 'package:cina_match/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
  });

  testWidgets('Successful Log In', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(const MyApp());
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(find.byKey(const ValueKey('login-emailfield_wmxo')),
        'ayishat24@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('login-passwordfield_s8k1')), 'Ayishat24');
    await tester.tap(find.byKey(const ValueKey('Button_9hm5')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.byKey(const ValueKey('Text_f89u')), findsOneWidget);
  });

  testWidgets('Successful account creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(const MyApp());
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(
        find.byKey(const ValueKey('signup-EmailFieldnew_375e')),
        'roquibat.adetunji@uri.edu');
    await tester.enterText(
        find.byKey(const ValueKey('signup-PasswordFieldnew_n2cx')),
        'cinamatch');
    await tester.enterText(
        find.byKey(const ValueKey('signup-ConfirmPasswordFieldnew_w0an')),
        'cinamatch');
    await tester.tap(find.byKey(const ValueKey('Button_2icf')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.byKey(const ValueKey('Text_f89u')), findsOneWidget);
  });

  testWidgets('Account Creation Weak Password', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(MyApp(
      entryPage: SignupWidget(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 1000));
    await tester.enterText(
        find.byKey(const ValueKey('signup-EmailFieldnew_375e')),
        'zacharylerner24@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('signup-PasswordFieldnew_n2cx')), 'pass');
    await tester.enterText(
        find.byKey(const ValueKey('signup-ConfirmPasswordFieldnew_w0an')),
        'pass');
    await tester.tap(find.byKey(const ValueKey('Button_2icf')));
    await tester.pumpAndSettle(const Duration(milliseconds: 1000));
    expect(find.byKey(const ValueKey('Button_2icf')), findsOneWidget);
  });

  testWidgets('accountAlreadyExists', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(const MyApp());
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('Button_w519')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('signup-EmailFieldnew_375e')));
    await tester.enterText(
        find.byKey(const ValueKey('signup-EmailFieldnew_375e')),
        'testemail@gmail.com');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester
        .tap(find.byKey(const ValueKey('signup-PasswordFieldnew_n2cx')));
    await tester.enterText(
        find.byKey(const ValueKey('signup-PasswordFieldnew_n2cx')), 'password');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester
        .tap(find.byKey(const ValueKey('signup-ConfirmPasswordFieldnew_w0an')));
    await tester.enterText(
        find.byKey(const ValueKey('signup-ConfirmPasswordFieldnew_w0an')),
        'password');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.tap(find.byKey(const ValueKey('Button_2icf')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
