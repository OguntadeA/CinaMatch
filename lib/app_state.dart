import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<MovieInWatchlistStruct> _userRecSelection = [];
  List<MovieInWatchlistStruct> get userRecSelection => _userRecSelection;
  set userRecSelection(List<MovieInWatchlistStruct> value) {
    _userRecSelection = value;
  }

  void addToUserRecSelection(MovieInWatchlistStruct value) {
    userRecSelection.add(value);
  }

  void removeFromUserRecSelection(MovieInWatchlistStruct value) {
    userRecSelection.remove(value);
  }

  void removeAtIndexFromUserRecSelection(int index) {
    userRecSelection.removeAt(index);
  }

  void updateUserRecSelectionAtIndex(
    int index,
    MovieInWatchlistStruct Function(MovieInWatchlistStruct) updateFn,
  ) {
    userRecSelection[index] = updateFn(_userRecSelection[index]);
  }

  void insertAtIndexInUserRecSelection(
      int index, MovieInWatchlistStruct value) {
    userRecSelection.insert(index, value);
  }

  String _userRecName = '';
  String get userRecName => _userRecName;
  set userRecName(String value) {
    _userRecName = value;
  }
}
