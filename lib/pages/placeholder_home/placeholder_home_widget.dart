import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/net_promoter_survey_widget.dart';
import '/components/watchlist_add_view_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'placeholder_home_model.dart';
export 'placeholder_home_model.dart';

class PlaceholderHomeWidget extends StatefulWidget {
  const PlaceholderHomeWidget({super.key});

  static String routeName = 'placeholderHome';
  static String routePath = '/placeholderHome';

  @override
  State<PlaceholderHomeWidget> createState() => _PlaceholderHomeWidgetState();
}

class _PlaceholderHomeWidgetState extends State<PlaceholderHomeWidget> {
  late PlaceholderHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaceholderHomeModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'placeholderHome'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PLACEHOLDER_HOME_placeholderHome_ON_INIT');
      if ((valueOrDefault(currentUserDocument?.loginCount, 0) == 5) &&
          !valueOrDefault<bool>(currentUserDocument?.didSurvey, false)) {
        logFirebaseEvent('placeholderHome_bottom_sheet');
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          enableDrag: false,
          context: context,
          builder: (context) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: NetPromoterSurveyWidget(),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));

        logFirebaseEvent('placeholderHome_firestore_query');
        _model.watchlistNumHome = await queryWatchlistRecordOnce(
          queryBuilder: (watchlistRecord) => watchlistRecord.where(
            'user',
            isEqualTo: currentUserReference,
          ),
        );
        logFirebaseEvent('placeholderHome_update_page_state');
        _model.watchlistNum = _model.watchlistNumHome?.length;
        safeSetState(() {});
      } else {
        logFirebaseEvent('placeholderHome_firestore_query');
        _model.watchlistNumHome2 = await queryWatchlistRecordOnce(
          queryBuilder: (watchlistRecord) => watchlistRecord.where(
            'user',
            isEqualTo: currentUserReference,
          ),
        );
        logFirebaseEvent('placeholderHome_update_page_state');
        _model.watchlistNum = _model.watchlistNumHome2?.length;
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF656D78),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            logFirebaseEvent('PLACEHOLDER_HOME_FloatingActionButton_vi');
            logFirebaseEvent('FloatingActionButton_google_analytics_ev');
            logFirebaseEvent('New_Watchlist_Creation');
            logFirebaseEvent('FloatingActionButton_bottom_sheet');
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              enableDrag: false,
              context: context,
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: WatchlistAddViewWidget(),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
          backgroundColor: Color(0xFF870303),
          elevation: 8.0,
          child: Icon(
            Icons.add_rounded,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        drawer: Drawer(
          elevation: 16.0,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 18.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('PLACEHOLDER_HOME_Icon_9efej5rg_ON_TAP');
                      logFirebaseEvent('Icon_drawer');
                      if (scaffoldKey.currentState!.isDrawerOpen ||
                          scaffoldKey.currentState!.isEndDrawerOpen) {
                        Navigator.pop(context);
                      }
                    },
                    child: Icon(
                      Icons.close_outlined,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 37.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('PLACEHOLDER_HOME_Row_2naycw1j_ON_TAP');
                      logFirebaseEvent('Row_navigate_to');

                      context.pushNamed(PlaceholderHomeWidget.routeName);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'PLACEHOLDER_HOME_Text_oympiu9i_ON_TAP');
                            logFirebaseEvent('Text_navigate_to');

                            context.pushNamed(PlaceholderHomeWidget.routeName);
                          },
                          child: Text(
                            'Homepage',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Icon(
                            Icons.home,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 34.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('PLACEHOLDER_HOME_Row_2tfihz78_ON_TAP');
                      logFirebaseEvent('Row_navigate_to');

                      context.pushNamed(SearchWidget.routeName);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'PLACEHOLDER_HOME_Text_mzmlkahb_ON_TAP');
                            logFirebaseEvent('Text_navigate_to');

                            context.pushNamed(SearchWidget.routeName);
                          },
                          child: Text(
                            'Search',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Icon(
                          Icons.search_outlined,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 34.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Watchlists',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Icon(
                            Icons.live_tv,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 34.0,
                          ),
                        ],
                      ),
                    ),
                    StreamBuilder<List<WatchlistRecord>>(
                      stream: queryWatchlistRecord(
                        queryBuilder: (watchlistRecord) =>
                            watchlistRecord.where(
                          'user',
                          isEqualTo: currentUserReference,
                        ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<WatchlistRecord> columnWatchlistRecordList =
                            snapshot.data!;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              columnWatchlistRecordList.length, (columnIndex) {
                            final columnWatchlistRecord =
                                columnWatchlistRecordList[columnIndex];
                            return Container(
                              width: 266.6,
                              height: 48.31,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'PLACEHOLDER_HOME_Text_slkggo0z_ON_TAP');
                                      logFirebaseEvent('Text_navigate_to');

                                      context.pushNamed(
                                        WatchlistWidget.routeName,
                                        queryParameters: {
                                          'watchlistReference': serializeParam(
                                            columnWatchlistRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Text(
                                      columnWatchlistRecord.name,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('PLACEHOLDER_HOME_Row_top744zp_ON_TAP');
                      logFirebaseEvent('Row_navigate_to');

                      context.pushNamed(LoginWidget.routeName);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Logout',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'PLACEHOLDER_HOME_Icon_z1my9ong_ON_TAP');
                            logFirebaseEvent('Icon_navigate_to');

                            context.pushNamed(LoginWidget.routeName);
                          },
                          child: Icon(
                            Icons.logout,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 34.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          child: Stack(
            alignment: AlignmentDirectional(0.0, 0.0),
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF480303),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                            spreadRadius: 4.0,
                          )
                        ],
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Text(
                            key: ValueKey('Text_f89u'),
                            'Homepage',
                            style: FlutterFlowTheme.of(context)
                                .displayMedium
                                .override(
                                  fontFamily: 'Playfair Display',
                                  color: Color(0xDEFFFFFF),
                                  fontSize: 35.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 32.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: SelectionArea(
                                        child: Text(
                                      'Your Watchlists',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Playfair Display',
                                        color: Color(0xFFF1F1F1),
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        shadows: [
                                          Shadow(
                                            color: Color(0xFF2A0303),
                                            offset: Offset(2.0, 2.0),
                                            blurRadius: 2.0,
                                          )
                                        ],
                                      ),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 4.0, 0.0, 0.0),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child:
                                          StreamBuilder<List<WatchlistRecord>>(
                                        stream: queryWatchlistRecord(
                                          queryBuilder: (watchlistRecord) =>
                                              watchlistRecord.where(
                                            'user',
                                            isEqualTo: currentUserReference,
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<WatchlistRecord>
                                              rowWatchlistRecordList =
                                              snapshot.data!;

                                          return Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: List.generate(
                                                rowWatchlistRecordList.length,
                                                (rowIndex) {
                                              final rowWatchlistRecord =
                                                  rowWatchlistRecordList[
                                                      rowIndex];
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'PLACEHOLDER_HOME_Container_egg14q1p_ON_T');
                                                  logFirebaseEvent(
                                                      'Container_navigate_to');

                                                  context.pushNamed(
                                                    WatchlistWidget.routeName,
                                                    queryParameters: {
                                                      'watchlistReference':
                                                          serializeParam(
                                                        rowWatchlistRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Container(
                                                  width: 150.4,
                                                  height: 210.2,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'PLACEHOLDER_HOME_Column_zu7q3zsy_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Column_navigate_to');

                                                      context.pushNamed(
                                                        WatchlistWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'watchlistReference':
                                                              serializeParam(
                                                            rowWatchlistRecord
                                                                .reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            rowWatchlistRecord
                                                                .name
                                                                .maybeHandleOverflow(
                                                              maxChars: 15,
                                                              replacement: '…',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child: Builder(
                                                            builder: (context) {
                                                              final movies =
                                                                  rowWatchlistRecord
                                                                      .movies
                                                                      .toList()
                                                                      .take(4)
                                                                      .toList();

                                                              return Wrap(
                                                                spacing: 0.0,
                                                                runSpacing: 0.0,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                                direction: Axis
                                                                    .horizontal,
                                                                runAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalDirection:
                                                                    VerticalDirection
                                                                        .down,
                                                                clipBehavior:
                                                                    Clip.none,
                                                                children: List.generate(
                                                                    movies
                                                                        .length,
                                                                    (moviesIndex) {
                                                                  final moviesItem =
                                                                      movies[
                                                                          moviesIndex];
                                                                  return ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .network(
                                                                      moviesItem
                                                                          .imagePath,
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  );
                                                                }),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }).divide(SizedBox(width: 11.0)),
                                          );
                                        },
                                      ),
                                    ),
                                    if (_model.watchlistNum == 0)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Text(
                                          'You have no watchlists. Tap the + to create one',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 32.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: SelectionArea(
                                            child: Text(
                                          'Movies/TV Out Now',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFFF1F1F1),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            shadows: [
                                              Shadow(
                                                color: Color(0xFF2A0303),
                                                offset: Offset(2.0, 2.0),
                                                blurRadius: 2.0,
                                              )
                                            ],
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 4.0, 0.0, 0.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: GetHotMoviesCall.call(),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewGetHotMoviesResponse =
                                        snapshot.data!;

                                    return Builder(
                                      builder: (context) {
                                        final topmovies = (getJsonField(
                                              listViewGetHotMoviesResponse
                                                  .jsonBody,
                                              r'''$.results''',
                                              true,
                                            )
                                                        ?.toList()
                                                        .map<MultiSearchResultsStruct?>(
                                                            MultiSearchResultsStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        MultiSearchResultsStruct?>)
                                                .withoutNulls
                                                .toList() ??
                                            [];

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: topmovies.length,
                                          itemBuilder:
                                              (context, topmoviesIndex) {
                                            final topmoviesItem =
                                                topmovies[topmoviesIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                12.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'PLACEHOLDER_HOME_Image_lseavtem_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Image_navigate_to');

                                                        context.pushNamed(
                                                          MovieDetailsWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'id':
                                                                serializeParam(
                                                              topmoviesItem.id,
                                                              ParamType.int,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.network(
                                                          functions.urlConcatinator(
                                                              topmoviesItem
                                                                  .backdropPath)!,
                                                          width: 150.39,
                                                          height: 210.2,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.91, -0.93),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('PLACEHOLDER_HOME_Icon_bwgjwirl_ON_TAP');
                    logFirebaseEvent('Icon_drawer');
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Icon(
                    Icons.menu_outlined,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
